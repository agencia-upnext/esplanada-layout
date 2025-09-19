function openTab(evt, tabName) {
    let i, tabcontent, tablinks;
    tabcontent = document.querySelectorAll(".tab-content");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.querySelectorAll(".tab-link");
    tablinks.forEach((link) => {
        link.className = link.className.replace(" active", "");
    });
    const tabToOpen = document.getElementById(tabName);
    if (tabToOpen) {
        tabToOpen.style.display = "block";
    }
    if (evt && evt.currentTarget) {
        evt.currentTarget.className += " active";
    }
}

function toggleSeeMore(event, tabId) {
    const button = event.currentTarget;
    const content = document.getElementById(tabId);
    if (!content || !button) return;
    content.classList.toggle("expanded");
    if (content.classList.contains("expanded")) {
        button.textContent = "Ver menos";
    } else {
        button.textContent = "Veja mais";
    }
}

function updateQuickshopExtras(quickshopContainer) {
    if (!quickshopContainer || !quickshopContainer.dataset.variants) {
        return;
    }

    try {
        const variants = JSON.parse(quickshopContainer.dataset.variants);
        if (!variants.length) return;

        // Descobre qual variante está selecionada lendo os selects
        const selectedOptions = {};
        quickshopContainer.querySelectorAll('.js-variation-option').forEach((select, index) => {
            selectedOptions[`option${index}`] = select.value;
        });

        const selectedVariant = variants.find(variant => {
            return Object.keys(selectedOptions).every(key => variant[key] === selectedOptions[key]);
        }) || variants[0];


        if (selectedVariant) {
            const comparePriceContainer = quickshopContainer.querySelector('.js-quickshop-compare-price-container');
            const comparePriceEl = quickshopContainer.querySelector('.js-quickshop-compare-price');
            const discountFlagContainer = quickshopContainer.querySelector('.js-quickshop-discount-flag-container');
            const paymentDiscountContainer = quickshopContainer.querySelector('.js-quickshop-payment-discount-container');
            const installmentsContainer = quickshopContainer.querySelector('.js-quickshop-installments-container');
            const labelsContainer = quickshopContainer.querySelector('.labels');

            comparePriceContainer.style.display = 'none';
            comparePriceEl.innerHTML = '';
            discountFlagContainer.innerHTML = '';
            paymentDiscountContainer.innerHTML = '';
            installmentsContainer.innerHTML = '';
            if (labelsContainer) labelsContainer.innerHTML = '';

            if (selectedVariant.price_with_payment_discount_short) {
                comparePriceEl.textContent = selectedVariant.price_short;
                comparePriceContainer.style.display = 'block';
            } else if (selectedVariant.compare_at_price_number > selectedVariant.price_number) {
                comparePriceEl.textContent = selectedVariant.compare_at_price_short;
                const discount = Math.round(((selectedVariant.compare_at_price_number - selectedVariant.price_number) * 100) / selectedVariant.compare_at_price_number);
                discountFlagContainer.innerHTML = `<span class="dicount-flag">-${discount}%</span>`;
                comparePriceContainer.style.display = 'block';
            }

            if (selectedVariant.installments_data) {
                const installmentsData = JSON.parse(selectedVariant.installments_data);
                const paymentProvider = Object.keys(installmentsData)[0];
                const installments = installmentsData[paymentProvider];
                let maxInstallment = 0;
                let installmentValue = 0;

                for (const i in installments) {
                    if (installments[i].without_interests && parseInt(i) > maxInstallment) {
                        maxInstallment = parseInt(i);
                        installmentValue = installments[i].installment_value;
                    }
                }
                if (maxInstallment > 1) {
                    const formattedValue = installmentValue.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
                    installmentsContainer.innerHTML = `
                        <div class="item-installments product-installments installment-no-interest">
                            <strong>${maxInstallment}x de ${formattedValue}</strong> sem juros
                        </div>
                    `;
                }
            }
            
            if (labelsContainer) {
                if (!selectedVariant.available) {
                    labelsContainer.innerHTML = '<div class="label label-default">Esgotado</div>';
                }
            }
        }
    } catch (err) {
        console.error("Erro ao processar dados de variantes do quickshop:", err);
    }
}

// 2. Listener para o clique no botão de abrir o quickshop
document.addEventListener('click', function(e) {
    const quickshopButton = e.target.closest('.js-quickshop-modal-open');
    if (quickshopButton) {
        e.preventDefault();
        const productUrl = quickshopButton.dataset.productUrl;
        
        const checkInterval = setInterval(function() {
            const quickshopContainer = document.querySelector('.js-quickshop-modal-shell[data-variants]');
            if (quickshopContainer && quickshopContainer.dataset.variants !== '') {
                clearInterval(checkInterval);
                
                // Roda a função de atualização pela primeira vez
                updateQuickshopExtras(quickshopContainer);

                // Atualiza o link "Mais Informações"
                const productLink = quickshopContainer.querySelector('.product_link_quickshop');
                if (productLink && productUrl) {
                    productLink.setAttribute('href', productUrl);
                }
            }
        }, 100);
    }
});

// 3. Listener para a MUDANÇA de variação dentro do quickshop
document.addEventListener('change', function(e) {
    const variationSelect = e.target.closest('#quickshop-modal .js-variation-option');
    if (variationSelect) {
        const quickshopContainer = variationSelect.closest('.js-quickshop-modal-shell');
        
        updateQuickshopExtras(quickshopContainer);
    }
});


document.addEventListener("DOMContentLoaded", function () {
    const placeholder = document.querySelector(".js-addtocart-placeholder");
    if (placeholder) {
        const moverFavorito = () => {
            const favorito = document.getElementById("MF_product_save");
            if (favorito) {
                placeholder.insertAdjacentElement("afterend", favorito);
                return true;
            }
            return false;
        };
        if (!moverFavorito()) {
            const observer = new MutationObserver(() => {
                if (moverFavorito()) {
                    observer.disconnect();
                }
            });
            observer.observe(document.body, { childList: true, subtree: true });
            setTimeout(() => observer.disconnect(), 8000);
        }
    }

    const moveHeaderFavorites = () => {
        const favoritesButton = document.getElementById("MF_header");
        const whatsappButton = document.querySelector(".header-whatsapp-button");
        if (favoritesButton && whatsappButton) {
            whatsappButton.insertAdjacentElement("beforebegin", favoritesButton);
            return true;
        }
        return false;
    };
    if (!moveHeaderFavorites()) {
        const observer = new MutationObserver(() => {
            if (moveHeaderFavorites()) {
                observer.disconnect();
            }
        });
        observer.observe(document.body, { childList: true, subtree: true });
        setTimeout(() => observer.disconnect(), 8000);
    }

    const toggleButtons = document.querySelectorAll(".toggle-description-btn");
    toggleButtons.forEach((button) => {
        button.addEventListener("click", function () {
            const container = this.closest(".category-description-container");
            if (container) {
                container.classList.toggle("expanded");
                if (container.classList.contains("expanded")) {
                    this.textContent = "Ver menos";
                } else {
                    this.textContent = "Veja mais";
                }
            }
        });
    });
});