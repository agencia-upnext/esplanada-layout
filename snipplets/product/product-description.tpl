{# {{ 'js/product-api-data.js.tpl' | static_url | script_tag }} #}

<div id="api-dimensions-bar-container" class="container my-3">
    <div id="dimensions-skeleton" class="skeleton-dimensions-bar">
        <div class="skeleton-dimension-item">
            <div class="skeleton-line skeleton-icon"></div>
            <div class="skeleton-line skeleton-text"></div>
        </div>
        <div class="skeleton-dimension-item">
            <div class="skeleton-line skeleton-icon"></div>
            <div class="skeleton-line skeleton-text"></div>
        </div>
        <div class="skeleton-dimension-item">
            <div class="skeleton-line skeleton-icon"></div>
            <div class="skeleton-line skeleton-text"></div>
        </div>
        <div class="skeleton-dimension-item">
            <div class="skeleton-line skeleton-icon"></div>
            <div class="skeleton-line skeleton-text"></div>
        </div>
    </div>

    <div class="product-dimensions-bar" id="real-dimensions-bar" style="display: none;">
        <div id="api-dim-altura" class="dimension-item" style="display: none;">
            <svg width="27" height="29" viewBox="0 0 27 29" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.7647 10.1667L9.82353 10.1667M12.7647 5.83333L8.35294 5.83333M12.7647 14.5L8.35294 14.5M12.7647 23.1667L8.35294 23.1667M12.7647 18.8333L9.82353 18.8333M26 1.5L20.1176 1.5M23.0588 1.5L23.0588 27.5M26 27.5L20.1176 27.5M12.7647 25.875C12.7647 26.772 12.0118 27.5 11.0838 27.5L2.68088 27.5C1.75294 27.5 0.999999 26.772 0.999999 25.875L1 2.94444C1 2.56135 1.15494 2.19395 1.43072 1.92307C1.70651 1.65218 2.08056 1.5 2.47059 1.5L11.0838 1.5C12.0118 1.5 12.7647 2.228 12.7647 3.125L12.7647 25.875Z" stroke="#EB6642" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>
            <span id="api-dim-altura-value"></span>
        </div>
        <div id="api-dim-largura" class="dimension-item" style="display: none;">
            <svg width="28" height="27" viewBox="0 0 28 27" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.66667 14.2353V17.1765M5.33333 14.2353V18.6471M14 14.2353V18.6471M22.6667 14.2353V18.6471M18.3333 14.2353V17.1765M1 1V6.88235M1 3.94118H27M27 1V6.88235M25.375 14.2353C26.272 14.2353 27 14.9882 27 15.9162V24.3191C27 25.2471 26.272 26 25.375 26H2.44444C2.06135 26 1.69395 25.8451 1.42307 25.5693C1.15218 25.2935 1 24.9194 1 24.5294V15.9162C1 14.9882 1.728 14.2353 2.625 14.2353H25.375Z" stroke="#EB6642" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>
            <span id="api-dim-largura-value"></span>
        </div>
        <div id="api-dim-profundidade" class="dimension-item" style="display: none;">
            <svg width="26" height="26" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M0 0H13V13H26V26H0V0ZM2.6 2.6V5.85H5.2052V8.45H2.6V11.7H5.2052V14.3H2.6V17.55H5.2052V20.15H2.6V23.4H5.85V20.8429H8.45V23.4H11.7V20.8429H14.3V23.4H17.55V20.8429H20.15V23.4H23.4V15.6H10.4V2.6H2.6Z" fill="#E85D46"/></svg>
            <span id="api-dim-profundidade-value"></span>
        </div>
        <div id="api-dim-peso" class="dimension-item" style="display: none;">
            <svg width="26" height="25" viewBox="0 0 26 25" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13 0C10.3841 0 8.24107 2.12707 8.24107 4.7235C8.24107 6.21037 8.94464 7.5424 10.0366 8.41014H5.57143L0 25H26L20.4286 8.41014H15.9634C17.0554 7.5424 17.7589 6.21037 17.7589 4.7235C17.7589 2.12707 15.6159 0 13 0ZM13 2.07373C14.4868 2.07373 15.6696 3.24781 15.6696 4.7235C15.6696 6.19919 14.4868 7.37327 13 7.37327C11.5132 7.37327 10.3304 6.19919 10.3304 4.7235C10.3304 3.24781 11.5132 2.07373 13 2.07373ZM8.22859 13.7644H9.59243V15.6805L11.5583 13.7643H13.1417L10.5949 16.2499L13.4038 19.0134H11.6965L9.59243 16.9461V19.0134H8.22859V13.7644ZM15.189 14.9879C15.4653 14.9879 15.7085 15.0417 15.9187 15.1495C16.1289 15.2573 16.3213 15.4273 16.4962 15.6593V15.0758H17.7713V18.6162C17.7713 19.2491 17.5694 19.7319 17.1656 20.0647C16.7641 20.3999 16.1808 20.5675 15.4157 20.5675C15.1678 20.5675 14.9281 20.5487 14.6966 20.5112C14.4597 20.4724 14.2264 20.4148 13.9988 20.339V19.358C14.2209 19.4846 14.4381 19.5784 14.6505 19.6393C14.8632 19.7026 15.0769 19.7343 15.2918 19.7343C15.7074 19.7343 16.0121 19.644 16.2057 19.4635C16.3993 19.2831 16.4962 19.0007 16.4962 18.6163V18.3456C16.3215 18.5752 16.129 18.744 15.9187 18.8518C15.7086 18.9595 15.4653 19.0135 15.189 19.0135C14.7049 19.0135 14.3047 18.8249 13.9883 18.4475C13.6718 18.0678 13.5136 17.585 13.5136 16.999C13.5136 16.4107 13.6718 15.929 13.9883 15.554C14.3047 15.1766 14.7049 14.9879 15.189 14.9879ZM15.6602 15.8949C15.398 15.895 15.1937 15.9911 15.0473 16.1832C14.9009 16.3755 14.8277 16.6474 14.8277 16.999C14.8277 17.36 14.8986 17.6342 15.0402 17.8216C15.182 18.0068 15.3886 18.0994 15.6602 18.0994C15.9246 18.0994 16.1301 18.0033 16.2765 17.8111C16.423 17.6189 16.4962 17.3482 16.4961 16.999C16.4961 16.6474 16.4229 16.3755 16.2765 16.1833C16.1301 15.9911 15.9246 15.8949 15.6601 15.8949H15.6602Z" fill="#E85D46"/></svg>
            <span id="api-dim-peso-value"></span>
        </div>
    </div>
</div>

{% set has_description = product.description is not empty %}
{% set has_dimensions = true %}

<div class="product-tabs-container {% if not has_description %}mt-2 mt-md-0{% endif %} {% if settings.full_width_description %}container pt-md-3{% else %}px-md-3{% endif %} pb-md-4" data-store="product-description-{{ product.id }}" data-sku="{{ product.selected_or_first_available_variant.sku }}">
  <div class="tabs-nav">
    {% if has_dimensions %}
      <button class="tab-link active" onclick="openTab(event, 'Dimensions')">Dimensões do Produto</button>
    {% endif %}
    {% if has_description %}
      <button class="tab-link" onclick="openTab(event, 'Description')">Descrição</button>
    {% endif %}
  </div>

  {% if has_dimensions %}
    <div id="Dimensions" class="tab-content-description" style="display: block;">
      <div id="api-product-characteristics" class="user-content">
        {% include 'snipplets/product/skeleton.tpl' %}
      </div>
      <button class="see-more-btn" id="btn-Dimensions" onclick="toggleSeeMore(event, 'Dimensions')">
        Veja mais
      </button>
    </div>
  {% endif %}

  {% if has_description %}
    <div id="Description" class="tab-content-description">
      <div class="product-description user-content">
        {{ product.description }}
      </div>
      <button class="see-more-btn" id="btn-Description" onclick="toggleSeeMore(event, 'Description')">
        Veja mais
      </button>
    </div>
  {% endif %}

  <div class="mt-4">
    {% if settings.show_product_fb_comment_box %}
      <div class="fb-comments section-fb-comments mb-3" data-href="{{ product.social_url }}" data-num-posts="5" data-width="100%"></div>
    {% endif %}
    <div id="reviewsapp"></div>
    {% include 'snipplets/social/social-share.tpl' %}
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
  const productSku = '{{ product.selected_or_first_available_variant.sku | e('js') }}';
  const storeToken = '8738aed64464684d08a696ec1cccce60';
  const apiUrl = `https://api.upnext.com.br/v1/upmiddleware/${storeToken}/anymarket/${productSku}`;

  const targetElement = document.getElementById('api-product-characteristics');
  const mainContainer = document.getElementById('api-dimensions-bar-container');
  const skeleton = document.getElementById('dimensions-skeleton');
  const realBar = document.getElementById('real-dimensions-bar');

  if (!productSku) return;

  fetch(apiUrl)
    .then(response => {
      if (!response.ok) throw new Error('Falha na resposta da rede.');
      return response.json();
    })
    .then(data => {
      if (!data.content || data.content.length === 0 || !data.content[0].characteristics) return;
      const characteristics = data.content[0].characteristics;

      // Características
      if (targetElement) {
        let htmlContent = '<div class="product-characteristics-items">';
        characteristics.forEach(char => {
          htmlContent += `
            <div class="characteristic-item mb-2">
              <strong class="characteristic-name">${char.name}</strong>
              <span class="characteristic-value">${char.value}</span>
            </div>
          `;
        });
        htmlContent += '</div>';
        targetElement.innerHTML = htmlContent;
      }

      // Dimensões
      if (!mainContainer || !skeleton || !realBar) return;

      const dimensions = {};
      const getNumericValue = (val) => {
          if (typeof val !== 'string') return parseFloat(val) || null;
          const match = val.match(/[\d,.]+/);
          return match ? parseFloat(match[0].replace(',', '.')) : null;
      };

      characteristics.forEach(char => {
          const name = char.name.trim().toUpperCase().replace(':', '');
          const value = char.value;

          // Lógica original
          if (name === 'ALTURA') dimensions.height = getNumericValue(value);
          if (name === 'LARGURA') dimensions.width = getNumericValue(value);
          if (name === 'PROFUNDIDADE' || name === 'COMPRIMENTO') dimensions.depth = getNumericValue(value);
          if (name === 'PESO') dimensions.weight = getNumericValue(value);
          
          // Lógica adicionada para extrair de campos como "MEDIDAS..."
          if (name.includes('MEDIDAS')) {
              const matchA = value.match(/\[\s*A\s*\]\s*=\s*([\d,.]+)/i);
              const matchL = value.match(/\[\s*L\s*\]\s*=\s*([\d,.]+)/i);
              const matchP = value.match(/\[\s*P\s*\]\s*=\s*([\d,.]+)/i);

              if (!dimensions.height && matchA) {
                  dimensions.height = parseFloat(matchA[1].replace(',', '.'));
              }
              if (!dimensions.width && matchL) {
                  dimensions.width = parseFloat(matchL[1].replace(',', '.'));
              }
              if (!dimensions.depth && matchP) {
                  dimensions.depth = parseFloat(matchP[1].replace(',', '.'));
              }
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

      if (hasApiDimensions) {
          skeleton.style.display = 'none';
          realBar.style.display = 'grid';
      } else {
          mainContainer.style.display = 'none';
      }
    })
    .catch(error => console.error('Erro ao buscar dados da API:', error));
});
</script>