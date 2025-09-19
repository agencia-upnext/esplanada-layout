document.addEventListener('DOMContentLoaded', () => {
    const productContainer = document.querySelector('[data-store^="product-description-"]');
    if (!productContainer) {
        return;
    }

    const productSku = productContainer.dataset.sku;
    const dimBarContainer = document.getElementById('api-dimensions-bar-container');

    if (!productSku) {
        if (dimBarContainer) dimBarContainer.style.display = 'none';
        return;
    }
    
    const storeToken = '8738aed64464684d08a696ec1cccce60';
    const apiUrl = `https://api.upnext.com.br/v1/upmiddleware/${storeToken}/anymarket/${productSku}`;

    const characteristicsTarget = document.getElementById('api-product-characteristics');
    const skeletonBar = document.getElementById('dimensions-skeleton');
    const realBar = document.getElementById('real-dimensions-bar');
    const dimensionsTab = document.getElementById('Dimensions');
    const dimensionsTabButton = document.getElementById('tab-btn-dimensions');
    const descriptionTabButton = document.getElementById('tab-btn-description');
    const descriptionTabContent = document.getElementById('Description');

    const handleNoData = () => {
        if (dimBarContainer) dimBarContainer.style.display = 'none';
        if (dimensionsTab) dimensionsTab.style.display = 'none';
        if (dimensionsTabButton) dimensionsTabButton.style.display = 'none';

        if (descriptionTabButton && descriptionTabContent) {
            descriptionTabButton.classList.add('active');
            descriptionTabContent.style.display = 'block';
        }
    };

    fetch(apiUrl)
        .then(response => {
            if (!response.ok) {
                throw new Error(`A resposta da rede não foi OK: ${response.statusText}`);
            }
            return response.json();
        })
        .then(data => {
            if (!data.content || data.content.length === 0 || !data.content[0].characteristics || data.content[0].characteristics.length === 0) {
                handleNoData();
                return;
            }

            const characteristics = data.content[0].characteristics;

            // Ativa e exibe a aba de características
            if (dimensionsTabButton) {
                 dimensionsTabButton.style.display = 'inline-block';
                 dimensionsTabButton.classList.add('active');
            }
            if (dimensionsTab) dimensionsTab.style.display = 'block';

            // Desativa a aba de descrição, se ela existir
            if (descriptionTabButton && descriptionTabContent) {
                descriptionTabButton.classList.remove('active');
                descriptionTabContent.style.display = 'none';
            }
            
            // 1. Preenche a lista de Características
            let htmlContent = '<div class="product-characteristics-items">';
            characteristics.forEach(char => {
                htmlContent += `
                    <div class="characteristic-item mb-2">
                        <strong class="characteristic-name">${char.name}</strong>
                        <span class="characteristic-value">${char.value}</span>
                    </div>`;
            });
            htmlContent += '</div>';
            if (characteristicsTarget) characteristicsTarget.innerHTML = htmlContent;

            // 2. Extrai e preenche a Barra de Dimensões
            const dimensions = {};
            const getNumericValue = (val) => {
                if (typeof val !== 'string') return parseFloat(val) || null;
                const match = val.match(/[\d,.]+/);
                return match ? parseFloat(match[0].replace(',', '.')) : null;
            };

            characteristics.forEach(char => {
                const name = char.name.trim().toUpperCase().replace(':', '');
                const value = char.value;
                if (name === 'ALTURA') dimensions.height = getNumericValue(value);
                if (name === 'LARGURA') dimensions.width = getNumericValue(value);
                if (name === 'PROFUNDIDADE' || name === 'COMPRIMENTO') dimensions.depth = getNumericValue(value);
                if (name === 'PESO') dimensions.weight = getNumericValue(value);
                if (name.includes('MEDIDAS')) {
                    const matchA = value.match(/\[\s*A\s*\]\s*=\s*([\d,.]+)/i);
                    const matchL = value.match(/\[\s*L\s*\]\s*=\s*([\d,.]+)/i);
                    const matchP = value.match(/\[\s*P\s*\]\s*=\s*([\d,.]+)/i);
                    if (!dimensions.height && matchA) dimensions.height = parseFloat(matchA[1].replace(',', '.'));
                    if (!dimensions.width && matchL) dimensions.width = parseFloat(matchL[1].replace(',', '.'));
                    if (!dimensions.depth && matchP) dimensions.depth = parseFloat(matchP[1].replace(',', '.'));
                }
            });
            
            let hasApiDimensions = false;
            if (dimensions.height > 0) {
                document.getElementById('api-dim-altura-value').textContent = `Altura ${dimensions.height} cm`;
                document.getElementById('api-dim-altura').style.display = 'flex';
                hasApiDimensions = true;
            }
            if (dimensions.width > 0) {
                document.getElementById('api-dim-largura-value').textContent = `Largura ${dimensions.width} cm`;
                document.getElementById('api-dim-largura').style.display = 'flex';
                hasApiDimensions = true;
            }
            if (dimensions.depth > 0) {
                document.getElementById('api-dim-profundidade-value').textContent = `Profundidade ${dimensions.depth} cm`;
                document.getElementById('api-dim-profundidade').style.display = 'flex';
                hasApiDimensions = true;
            }
            if (dimensions.weight > 0) {
                const weightFormatted = dimensions.weight.toLocaleString('pt-BR', { minimumFractionDigits: 1, maximumFractionDigits: 2 });
                document.getElementById('api-dim-peso-value').textContent = `Peso ${weightFormatted} kg`;
                document.getElementById('api-dim-peso').style.display = 'flex';
                hasApiDimensions = true;
            }

            if (hasApiDimensions && skeletonBar && realBar) {
                skeletonBar.style.display = 'none';
                realBar.style.display = 'grid';
            } else if (dimBarContainer) {
                dimBarContainer.style.display = 'none';
            }
        })
        .catch(error => {
            console.error('Erro ao buscar ou processar dados da API:', error);
            handleNoData();
        });
});