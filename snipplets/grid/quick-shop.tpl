{% if settings.quick_shop %}
    {% embed "snipplets/modal.tpl" with{modal_id: 'quickshop-modal', modal_class: 'quickshop bottom modal-overflow-none modal-bottom-sheet', modal_position: 'bottom', modal_transition: 'slide', modal_footer: false, modal_width: 'centered-md modal-centered-medium', modal_header_class: 'js-quickshop-header d-md-none', modal_body_class: 'modal-scrollable p-0 p-md-3'} %}
        {% block modal_head %}
            {% block page_header_text %}<div class="js-item-name"></div>{% endblock page_header_text %}
        {% endblock %}
        {% block modal_body %}
            <div class="js-item-product modal-scrollable modal-scrollable-area" data-product-id="">
                <div class="js-product-container js-quickshop-container js-quickshop-modal js-quickshop-modal-shell" data-variants="" data-quickshop-id="">
                    <div class="row no-gutters">
                        <div class="col-md-6 mb-1">
                            <div class="quickshop-image-container px-3 px-md-0">
                                <div class="js-quickshop-image-padding">
                                    <img srcset="" class="js-item-image js-quickshop-img quickshop-image img-absolute-centered"/>
                                </div>
                            </div>
                            {% if not reduced_item %}
                                {# {% include 'snipplets/labels.tpl' with {product_detail: true, on_product_image: true} %} #}
                            {% endif %}
                        </div>
                        <div class="js-item-variants col-md-6 p-3 pt-md-2 pr-md-3">
                            <div class="row no-gutters align-items-start mr-md-1 mb-3 d-none d-md-flex">
                                <div class="col">
                                    <div class="js-item-name h2 mb-2 mb-md-0 modal-item-name" data-store="product-item-name-{{ product.id }}"></div>
                                </div>
                                <div class="col-auto d-none d-md-block">
                                    <a class="js-modal-close modal-close pr-0 py-0">
                                        <svg class="icon-inline svg-icon-text"><use xlink:href="#times"/></svg>
                                    </a>
                                </div>
                            </div>
                            <div class="item-price-container mb-3" data-store="product-item-price-{{ product.id }}">

                                <div class="js-quickshop-compare-price-container" style="display: none;">
                                    <span class="price-compare d-flex align-items-center">
                                        <p class="mb-0 js-quickshop-compare-price"></p>
                                        <div class="js-quickshop-discount-flag-container ml-2"></div>
                                    </span>
                                </div>

                                <div class="d-block mb-1 mr-1">
                                    <span class="js-price-display item-price"></span>
                                </div>

                                <div class="js-quickshop-payment-discount-container"></div>

                                <div class="js-quickshop-installments-container"></div>

                            </div>
                            {# Image is hidden but present so it can be used on cart notifiaction #}

                            <div id="quickshop-form" class="mr-md-1"></div>

                            <a href="{{product.canonical_url}}" class="product_link_quickshop py-2 px-4 mt-4" target="_blank">
                                <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg" class="mr-2">
                                    <path d="M6.5 13C2.90588 13 0 10.0941 0 6.5C0 2.90588 2.90588 0 6.5 0C10.0941 0 13 2.90588 13 6.5C13 10.0941 10.0941 13 6.5 13Z" fill="#EA8B44"/>
                                    <path d="M3.05908 6.11791H9.94143V6.88261H3.05908V6.11791Z" fill="white"/>
                                    <path d="M6.11791 3.05908H6.88261V9.94143H6.11791V3.05908Z" fill="white"/>
                                </svg>
                                Mais informações
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        {% endblock %}
    {% endembed %}
{% endif %}