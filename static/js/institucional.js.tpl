document.addEventListener('DOMContentLoaded', function() {

    function setupFAQ() {
        const faqContainer = document.querySelector('.faq-body');
        if (!faqContainer) return;

        const faqButtons = faqContainer.querySelectorAll('.faq-button');
        const allFaqContents = faqContainer.querySelectorAll('.faq-content');
        const accordionButtons = faqContainer.querySelectorAll('.faq-accordion-button');

        function showFaq(faqId) {
            allFaqContents.forEach(content => content.style.display = 'none');
            const activeContent = faqContainer.querySelector('#faq-' + faqId);
            if (activeContent) {
                activeContent.style.display = 'block';
            }
            faqButtons.forEach(button => {
                button.classList.toggle('active', button.dataset.faq === faqId);
            });
        }

        faqButtons.forEach(button => {
            button.addEventListener('click', function() {
                showFaq(this.dataset.faq);
            });
        });

        if (faqButtons.length > 0) {
            showFaq(faqButtons[0].dataset.faq);
        }

        accordionButtons.forEach(clickedButton => {
            clickedButton.addEventListener('click', function() {
                const isActive = this.classList.contains('active');
                accordionButtons.forEach(otherButton => {
                    otherButton.classList.remove('active');
                    otherButton.nextElementSibling.style.maxHeight = null;
                });
                if (!isActive) {
                    this.classList.add('active');
                    const content = this.nextElementSibling;
                    content.style.maxHeight = content.scrollHeight + "px";
                }
            });
        });
    }

        function setupStoresMap() {
        const storeItems = document.querySelectorAll('.store-item');
        if (storeItems.length === 0) return;

        // --- Lógica Desktop ---
        const storesLayoutDesktop = document.querySelector('.stores-layout-desktop');
        const mapIframeDesktop = document.getElementById('map-iframe-desktop');

        if (storesLayoutDesktop && mapIframeDesktop) {
            function setActiveStoreDesktop(item) {
                if (!item) return;
                storeItems.forEach(el => el.classList.remove('active'));
                item.classList.add('active');
                const mapSrc = item.getAttribute('data-map-src');
                if (mapIframeDesktop.src !== mapSrc) {
                    mapIframeDesktop.src = mapSrc;
                }
            }

            storeItems.forEach(item => {
                item.addEventListener('click', function() {
                    setActiveStoreDesktop(this);
                });
            });
            
            if (storeItems.length > 0) {
               setActiveStoreDesktop(storeItems[0]);
            }
        }

        // --- Lógica Mobile ---
        const storeSelector = document.getElementById('store-selector');
        const mapIframeMobile = document.getElementById('map-iframe-mobile');
        const storeDetailsMobile = document.getElementById('store-details-mobile');

        if (storeSelector && mapIframeMobile && storeDetailsMobile) {
            function updateMobileView(selectedIndex) {
                const selectedStoreItem = document.querySelector(`.store-item[data-store-index="${selectedIndex}"]`);
                if (!selectedStoreItem) return;

                const mapSrc = selectedStoreItem.getAttribute('data-map-src');
                if (mapIframeMobile.src !== mapSrc) {
                    mapIframeMobile.src = mapSrc;
                }

                storeDetailsMobile.innerHTML = '';
                const storeClone = selectedStoreItem.cloneNode(true);
                storeDetailsMobile.appendChild(storeClone);
            }

            storeSelector.addEventListener('change', function() {
                updateMobileView(this.value);
            });
            
            updateMobileView(storeSelector.value);
        }
    }

    function setupPolicyTabs() {
        const policySelect = document.querySelector('.policy-select');
        if (!policySelect) return;

        policySelect.addEventListener('change', function() {
            const url = this.value;
            if (url) {
                window.location.href = url;
            }
        });
    }

    function setupAfterSales() {
        const posVendaContainer = document.querySelector('.pos-venda-container');
        if (!posVendaContainer) return;

        const regionButtons = posVendaContainer.querySelectorAll('.region-button');
        const regionSelect = posVendaContainer.querySelector('#region-select');
        const allRegionContents = posVendaContainer.querySelectorAll('.region-content');

        function showRegion(regionName) {
            allRegionContents.forEach(content => content.style.display = 'none');
            const activeContent = posVendaContainer.querySelector('#region-' + regionName);
            if (activeContent) {
                activeContent.style.display = 'block';
            }
            regionButtons.forEach(button => {
                button.classList.toggle('active', button.dataset.region === regionName);
            });
            if (regionSelect) {
                regionSelect.value = regionName;
            }
        }

        regionButtons.forEach(button => {
            button.addEventListener('click', function() {
                showRegion(this.dataset.region);
            });
        });

        if (regionSelect) {
            regionSelect.addEventListener('change', function() {
                showRegion(this.value);
            });
        }

        const firstRegion = regionButtons.length > 0 ? regionButtons[0].dataset.region : (regionSelect ? regionSelect.value : null);
        if (firstRegion) {
            showRegion(firstRegion);
        }
    }

    function setupWorkWithUsForm() {
        const form = document.getElementById('esplanada-trabalhe-conosco');
        if (!form) {
            return;
        }

        const statusMessage = document.getElementById('form-status');
        const submitButton = form.querySelector('.btn-submit');
        let statusMessageTimer;

        function showStatusMessage(message, type) {
            if (statusMessage) {
                clearTimeout(statusMessageTimer);
                statusMessage.textContent = message;
                statusMessage.className = 'form-status-message';
                statusMessage.classList.add(type);
                statusMessage.classList.add('show');
                statusMessageTimer = setTimeout(() => {
                    statusMessage.classList.remove('show');
                }, 5000);
            }
        }

        function clearStatusMessage() {
            if (statusMessage) {
                statusMessage.classList.remove('show');
                clearTimeout(statusMessageTimer);
            }
        }

        const allowedExtensions = ['pdf', 'jpg', 'jpeg', 'png', 'doc', 'docx'];
        const fileInputs = form.querySelectorAll('.file-upload input[type="file"]');

        fileInputs.forEach(input => {
            input.addEventListener('change', function(event) {
                const fileNameSpan = this.nextElementSibling.querySelector('.file-name');
                const file = event.target.files[0];

                if (!file) {
                    fileNameSpan.textContent = 'Nenhum arquivo escolhido';
                    return;
                }

                const fileName = file.name;
                const fileExtension = fileName.split('.').pop().toLowerCase();

                if (!allowedExtensions.includes(fileExtension)) {
                    showStatusMessage(`Arquivo inválido: "${fileName}". Apenas ${allowedExtensions.join(', ')} são permitidos.`, 'error');
                    this.value = '';
                    fileNameSpan.textContent = 'Nenhum arquivo escolhido';
                    this.closest('.form-group').classList.add('has-error');
                    return;
                }

                fileNameSpan.textContent = fileName;
                this.closest('.form-group.has-error')?.classList.remove('has-error');
                clearStatusMessage();
            });
        });

        form.addEventListener('submit', async function(event) {
            event.preventDefault();
            clearStatusMessage();

            let isValid = true;
            form.querySelectorAll('.form-group.has-error').forEach(el => el.classList.remove('has-error'));

            form.querySelectorAll('[required]').forEach(input => {
                if (!input.value.trim()) {
                    isValid = false;
                    input.closest('.form-group').classList.add('has-error');
                }
            });

            if (isValid) {
                submitButton.disabled = true;
                submitButton.textContent = 'Enviando...';
                const formData = new FormData(form);

                try {
                    const response = await fetch('https://apps.upnext.com.br/upform/api', {
                        method: 'POST',
                        headers: {
                            'token': '12c0780f9bb6e72f85c246876af5a0ee'
                        },
                        body: formData
                    });

                    const data = await response.json();

                    if (response.ok && data.status === 'success') {
                        showStatusMessage('Cadastro enviado com sucesso! Obrigado.', 'success');
                        form.reset();
                        document.querySelectorAll('.file-name').forEach(span => {
                            span.textContent = 'Nenhum arquivo escolhido';
                        });
                    } else {
                        showStatusMessage('Erro: ' + (data.message || 'Não foi possível enviar o formulário.'), 'error');
                    }
                } catch (error) {
                    showStatusMessage('Ocorreu um erro de comunicação. Tente novamente.', 'error');
                } finally {
                    submitButton.disabled = false;
                    submitButton.textContent = 'Enviar';
                }
            } else {
                showStatusMessage('Por favor, preencha todos os campos obrigatórios.', 'error');
            }
        });

        form.querySelectorAll('[required]').forEach(input => {
            ['input', 'change'].forEach(eventType => {
                input.addEventListener(eventType, function() {
                    if (this.value.trim() !== '') {
                        this.closest('.form-group.has-error')?.classList.remove('has-error');
                    }
                });
            });
        });
    }

    setupFAQ();
    setupStoresMap();
    setupPolicyTabs();
    setupAfterSales();
    setupWorkWithUsForm();
});