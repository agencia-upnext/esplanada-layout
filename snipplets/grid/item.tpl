{# /*============================================================================
  #Item grid
==============================================================================*/

#Properties

#Slide Item

#}

{% set slide_item = slide_item | default(false) %}

{% if template == 'home'%}
    {% set columns_desktop = section_columns_desktop %}
    {% set columns_mobile = section_columns_mobile %}
    {% set section_slider = section_slider %}
{% else %}
    {% set columns_desktop = settings.grid_columns_desktop %}
    {% set columns_mobile = settings.grid_columns_mobile %}
    {% if template == 'product'%}
        {% set section_slider = true %}
    {% endif %}
{% endif %}

{% set mobile_column_class = columns_mobile == 1 ? '12' : '6' %}
{% set desktop_column_class = 
    columns_desktop == 2 ? '6' :
    columns_desktop == 3 ? '4' :
    columns_desktop == 4 ? '3' :
    columns_desktop == 5 ? '2-4' : '2'
 %}

{# Item image slider #}

{% set show_image_slider = 
    (template == 'category' or template == 'search')
    and settings.product_item_slider 
    and not slide_item
    and not reduced_item 
    and not has_filters
    and product.other_images
%}

{% if show_image_slider %}
    {% set slider_controls_container_class = 'item-slider-controls-container svg-icon-text d-none d-md-block' %}
    {% set control_next_svg_id = 'chevron' %}
    {% set control_prev_svg_id = 'chevron' %}
{% endif %}

{# Secondary images #}

{% set show_secondary_image = settings.product_hover %}

    <div class="js-item-product{% if slide_item %} js-item-slide swiper-slide{% endif %} col-{{ mobile_column_class }} col-md-{{ desktop_column_class }} item-product col-grid {% if reduced_item %}item-product-reduced{% endif %}" data-product-type="list" data-product-id="{{ product.id }}" data-store="product-item-{{ product.id }}" data-component="product-list-item" data-component-value="{{ product.id }}">
        <div class="item {% if reduced_item %}mb-0{% endif %}">
            {% if (settings.quick_shop or settings.product_color_variants) and not reduced_item %}
                <div class="js-product-container js-quickshop-container{% if product.variations %} js-quickshop-has-variants{% endif %} position-relative" data-variants="{{ product.variants_object | json_encode }}" data-quickshop-id="quick{{ product.id }}">
            {% endif %}
            {% set product_url_with_selected_variant = has_filters ?  ( product.url | add_param('variant', product.selected_or_first_available_variant.id)) : product.url  %}

            {# Set how much viewport space the images will take to load correct image #}

            {% if params.preview %}
                {% set mobile_image_viewport_space = '100' %}
                {% set desktop_image_viewport_space = '50' %}
            {% else %}
                {% if columns_mobile == 2 %}
                    {% set mobile_image_viewport_space = '50' %}
                {% else %}
                    {% set mobile_image_viewport_space = '100' %}
                {% endif %}

                {% if columns_desktop == 4 %}
                    {% set desktop_image_viewport_space = '25' %}
                {% elseif columns_desktop == 3 %}
                    {% set desktop_image_viewport_space = '33' %}
                {% else %}
                    {% set desktop_image_viewport_space = '50' %}
                {% endif %}
            {% endif %}

            {% set image_classes = 'js-item-image lazyautosizes lazyload img-absolute img-absolute-centered fade-in' %}
            {% set data_expand = show_image_slider ? '50' : '-10' %}

            {% set floating_elements %}
                {% if not reduced_item and product.promotional_offer %}
                    {% include 'snipplets/labels.tpl' with {labels_floating: true} %}
                {% endif %}
            {% endset %}
            
            <div class="item-image-container">
                {{ component(
                    'product-item-image', {
                        image_lazy: true,
                        image_lazy_js: true,
                        image_thumbs: ['small', 'medium', 'large', 'huge', 'original'],
                        image_data_expand: data_expand,
                        image_secondary_data_sizes: 'auto',
                        image_sizes: '(max-width: 768px)' ~ mobile_image_viewport_space ~ 'vw, (min-width: 769px)' ~ desktop_image_viewport_space ~ 'vw',
                        secondary_image: show_secondary_image,
                        slider: show_image_slider,
                        placeholder: true,
                        custom_content: floating_elements,
                        slider_pagination_container: true,
                        product_item_image_classes: {
                            image_container: 'item-image' ~ (columns == 1 ? ' item-image-big') ~ (show_image_slider ? ' item-image-slider'),
                            image_padding_container: 'js-item-image-padding position-relative d-block',
                            image: image_classes,
                            image_featured: 'item-image-featured',
                            image_secondary: 'item-image-secondary',
                            slider_container: 'swiper-container position-absolute h-100 w-100',
                            slider_wrapper: 'swiper-wrapper',
                            slider_slide: 'swiper-slide item-image-slide',
                            slider_control_pagination_container: 'item-slider-pagination-container d-md-none ' ~ (product.images_count == 2 ? 'two-bullets'),
                            slider_control_pagination: 'swiper-pagination item-slider-pagination',
                            slider_control: 'icon-inline icon-lg',
                            slider_control_prev_container: 'swiper-button-prev ' ~ slider_controls_container_class,
                            slider_control_prev: 'icon-flip-horizontal',
                            slider_control_next_container: 'swiper-button-next ' ~ slider_controls_container_class,
                            more_images_message: 'item-more-images-message',
                            placeholder: 'placeholder-fade',
                        },
                        control_next_svg_id: control_next_svg_id,
                        control_prev_svg_id: control_prev_svg_id,
                    })
                }}

                {% if product.available and product.display_price and settings.quick_shop %}
                    {% if settings.quick_shop and not reduced_item %}
                        <div class="item-actions d-inline-block">
                            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-toggle="#quickshop-modal" href="#" class="js-quickshop-modal-open {% if slide_item %}js-quickshop-slide{% endif %} js-modal-open" title="{{ 'Compra rápida de' | translate }} {{ product.name }}" aria-label="{{ 'Compra rápida de' | translate }} {{ product.name }}" data-component="product-list-item.add-to-cart" data-component-value="{{product.id}}">
                                <circle cx="14" cy="14" r="14" fill="#EAEDED"/>
                                <mask id="path-2-inside-1_2550_994" fill="white">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M12.9495 7.7002C12.0007 7.70028 11.0657 7.9258 10.2225 8.35795C9.37925 8.79011 8.65226 9.41636 8.10216 10.1845C7.55206 10.9526 7.1948 11.8402 7.06019 12.7734C6.92558 13.7066 7.01752 14.6583 7.32834 15.549C7.63916 16.4397 8.15985 17.2436 8.84696 17.8937C9.53407 18.5438 10.3677 19.0212 11.2783 19.2861C12.1888 19.5509 13.1499 19.5956 14.0814 19.4164C15.0129 19.2371 15.8877 18.8391 16.6329 18.2556L19.1893 20.7956C19.3213 20.9223 19.4981 20.9924 19.6817 20.9909C19.8652 20.9893 20.0408 20.9161 20.1706 20.7872C20.3004 20.6582 20.374 20.4838 20.3756 20.3014C20.3772 20.119 20.3066 19.9433 20.1791 19.8122L17.6227 17.2721C18.3143 16.4003 18.7449 15.3527 18.8653 14.2491C18.9856 13.1455 18.7909 12.0306 18.3033 11.0319C17.8156 10.0331 17.0549 9.19097 16.1081 8.60176C15.1613 8.01256 14.0667 7.70012 12.9495 7.7002ZM8.39949 13.6122C8.39949 12.4132 8.87887 11.2633 9.73216 10.4154C10.5854 9.56757 11.7428 9.09126 12.9495 9.09126C14.1562 9.09126 15.3135 9.56757 16.1668 10.4154C17.0201 11.2633 17.4995 12.4132 17.4995 13.6122C17.4995 14.8112 17.0201 15.9612 16.1668 16.809C15.3135 17.6568 14.1562 18.1332 12.9495 18.1332C11.7428 18.1332 10.5854 17.6568 9.73216 16.809C8.87887 15.9612 8.39949 14.8112 8.39949 13.6122Z"/>
                                </mask>
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M12.9495 7.7002C12.0007 7.70028 11.0657 7.9258 10.2225 8.35795C9.37925 8.79011 8.65226 9.41636 8.10216 10.1845C7.55206 10.9526 7.1948 11.8402 7.06019 12.7734C6.92558 13.7066 7.01752 14.6583 7.32834 15.549C7.63916 16.4397 8.15985 17.2436 8.84696 17.8937C9.53407 18.5438 10.3677 19.0212 11.2783 19.2861C12.1888 19.5509 13.1499 19.5956 14.0814 19.4164C15.0129 19.2371 15.8877 18.8391 16.6329 18.2556L19.1893 20.7956C19.3213 20.9223 19.4981 20.9924 19.6817 20.9909C19.8652 20.9893 20.0408 20.9161 20.1706 20.7872C20.3004 20.6582 20.374 20.4838 20.3756 20.3014C20.3772 20.119 20.3066 19.9433 20.1791 19.8122L17.6227 17.2721C18.3143 16.4003 18.7449 15.3527 18.8653 14.2491C18.9856 13.1455 18.7909 12.0306 18.3033 11.0319C17.8156 10.0331 17.0549 9.19097 16.1081 8.60176C15.1613 8.01256 14.0667 7.70012 12.9495 7.7002ZM8.39949 13.6122C8.39949 12.4132 8.87887 11.2633 9.73216 10.4154C10.5854 9.56757 11.7428 9.09126 12.9495 9.09126C14.1562 9.09126 15.3135 9.56757 16.1668 10.4154C17.0201 11.2633 17.4995 12.4132 17.4995 13.6122C17.4995 14.8112 17.0201 15.9612 16.1668 16.809C15.3135 17.6568 14.1562 18.1332 12.9495 18.1332C11.7428 18.1332 10.5854 17.6568 9.73216 16.809C8.87887 15.9612 8.39949 14.8112 8.39949 13.6122Z" fill="white"/>
                                <path d="M12.9495 7.7002L12.9494 5.7002H12.9493L12.9495 7.7002ZM16.6329 18.2556L18.0426 16.8368L16.79 15.5923L15.3998 16.6809L16.6329 18.2556ZM19.1893 20.7956L17.7796 22.2144L17.7919 22.2266L17.8045 22.2387L19.1893 20.7956ZM20.1791 19.8122L21.6132 18.4181L21.6011 18.4057L21.5888 18.3934L20.1791 19.8122ZM17.6227 17.2721L16.0559 16.0291L14.9443 17.4302L16.213 18.6908L17.6227 17.2721ZM8.39949 13.6122H6.39949H8.39949ZM12.9495 9.09126V7.09126V9.09126ZM17.4995 13.6122H19.4995H17.4995ZM12.9495 7.7002L12.9493 5.7002C11.6838 5.7003 10.4362 6.00108 9.31029 6.57809L10.2225 8.35795L11.1347 10.1378C11.6952 9.85052 12.3176 9.70025 12.9497 9.7002L12.9495 7.7002ZM10.2225 8.35795L9.31029 6.57809C8.18436 7.15513 7.21234 7.99201 6.47615 9.01994L8.10216 10.1845L9.72817 11.349C10.0922 10.8407 10.5741 10.4251 11.1347 10.1378L10.2225 8.35795ZM8.10216 10.1845L6.47615 9.01994C5.73992 10.0479 5.26112 11.2369 5.08068 12.4879L7.06019 12.7734L9.0397 13.059C9.12848 12.4435 9.3642 11.8572 9.72817 11.349L8.10216 10.1845ZM7.06019 12.7734L5.08068 12.4879C4.90023 13.7389 5.02353 15.0144 5.44001 16.2079L7.32834 15.549L9.21667 14.89C9.0115 14.3021 8.95093 13.6744 9.0397 13.059L7.06019 12.7734ZM7.32834 15.549L5.44001 16.2079C5.85647 17.4014 6.5537 18.4773 7.47243 19.3465L8.84696 17.8937L10.2215 16.4409C9.76599 16.0099 9.42185 15.478 9.21667 14.89L7.32834 15.549ZM8.84696 17.8937L7.47243 19.3465C8.39109 20.2157 9.5046 20.853 10.7196 21.2065L11.2783 19.2861L11.8369 17.3657C11.2308 17.1894 10.6771 16.8719 10.2215 16.4409L8.84696 17.8937ZM11.2783 19.2861L10.7196 21.2065C11.9346 21.5599 13.2167 21.6195 14.4594 21.3803L14.0814 19.4164L13.7034 17.4524C13.0831 17.5718 12.443 17.542 11.8369 17.3657L11.2783 19.2861ZM14.0814 19.4164L14.4594 21.3803C15.702 21.1412 16.8701 20.61 17.8659 19.8302L16.6329 18.2556L15.3998 16.6809C14.9053 17.0682 14.3237 17.333 13.7034 17.4524L14.0814 19.4164ZM16.6329 18.2556L15.2232 19.6743L17.7796 22.2144L19.1893 20.7956L20.599 19.3769L18.0426 16.8368L16.6329 18.2556ZM19.1893 20.7956L17.8045 22.2387C18.3146 22.7282 18.9951 22.9969 19.6989 22.9908L19.6817 20.9909L19.6644 18.9909C20.0012 18.988 20.3281 19.1165 20.5741 19.3526L19.1893 20.7956ZM19.6817 20.9909L19.6989 22.9908C20.4028 22.9847 21.0787 22.7043 21.5802 22.2059L20.1706 20.7872L18.7609 19.3684C19.0029 19.128 19.3276 18.9938 19.6644 18.9909L19.6817 20.9909ZM20.1706 20.7872L21.5802 22.2059C22.0822 21.7071 22.3693 21.0297 22.3755 20.3189L20.3756 20.3014L18.3756 20.2839C18.3787 19.9378 18.5185 19.6093 18.7609 19.3684L20.1706 20.7872ZM20.3756 20.3014L22.3755 20.3189C22.3817 19.608 22.1065 18.9257 21.6132 18.4181L20.1791 19.8122L18.745 21.2062C18.5067 20.961 18.3726 20.63 18.3756 20.2839L20.3756 20.3014ZM20.1791 19.8122L21.5888 18.3934L19.0324 15.8534L17.6227 17.2721L16.213 18.6908L18.7694 21.2309L20.1791 19.8122ZM17.6227 17.2721L19.1895 18.5151C20.1149 17.3486 20.6921 15.9454 20.8535 14.466L18.8653 14.2491L16.8771 14.0323C16.7977 14.76 16.5136 15.452 16.0559 16.0291L17.6227 17.2721ZM18.8653 14.2491L20.8535 14.466C21.0148 12.9864 20.7536 11.4921 20.1005 10.1544L18.3033 11.0319L16.506 11.9093C16.8281 12.569 16.9564 13.3046 16.8771 14.0323L18.8653 14.2491ZM18.3033 11.0319L20.1005 10.1544C19.4474 8.81679 18.4295 7.69073 17.1648 6.90371L16.1081 8.60176L15.0514 10.2998C15.6803 10.6912 16.1839 11.2495 16.506 11.9093L18.3033 11.0319ZM16.1081 8.60176L17.1648 6.90371C15.9002 6.11676 14.4394 5.7001 12.9494 5.7002L12.9495 7.7002L12.9496 9.7002C13.694 9.70015 14.4224 9.90836 15.0514 10.2998L16.1081 8.60176ZM8.39949 13.6122H10.3995C10.3995 12.9478 10.665 12.3079 11.1418 11.8341L9.73216 10.4154L8.32248 8.99668C7.09271 10.2186 6.39949 11.8786 6.39949 13.6122H8.39949ZM9.73216 10.4154L11.1418 11.8341C11.6191 11.3599 12.2691 11.0913 12.9495 11.0913V9.09126V7.09126C11.2164 7.09126 9.55182 7.77519 8.32248 8.99668L9.73216 10.4154ZM12.9495 9.09126V11.0913C13.6299 11.0913 14.2799 11.3599 14.7572 11.8341L16.1668 10.4154L17.5765 8.99668C16.3472 7.77519 14.6825 7.09126 12.9495 7.09126V9.09126ZM16.1668 10.4154L14.7572 11.8341C15.234 12.3079 15.4995 12.9478 15.4995 13.6122H17.4995H19.4995C19.4995 11.8786 18.8063 10.2186 17.5765 8.99668L16.1668 10.4154ZM17.4995 13.6122H15.4995C15.4995 14.2767 15.234 14.9165 14.7572 15.3903L16.1668 16.809L17.5765 18.2277C18.8063 17.0058 19.4995 15.3458 19.4995 13.6122H17.4995ZM16.1668 16.809L14.7572 15.3903C14.2799 15.8645 13.6299 16.1332 12.9495 16.1332V18.1332V20.1332C14.6825 20.1332 16.3472 19.4492 17.5765 18.2277L16.1668 16.809ZM12.9495 18.1332V16.1332C12.2691 16.1332 11.6191 15.8645 11.1418 15.3903L9.73216 16.809L8.32248 18.2277C9.55182 19.4492 11.2164 20.1332 12.9495 20.1332V18.1332ZM9.73216 16.809L11.1418 15.3903C10.665 14.9165 10.3995 14.2767 10.3995 13.6122H8.39949H6.39949C6.39949 15.3458 7.09271 17.0058 8.32248 18.2277L9.73216 16.809Z" fill="#E85D46" mask="url(#path-2-inside-1_2550_994)"/>
                            </svg>
                        </div>
                    {% endif %}
                {% endif %}
            </div>

            {% if (settings.quick_shop or settings.product_color_variants) and product.available and product.display_price and product.variations and not reduced_item %}

                {# Hidden product form to update item image and variants: Also this is used for quickshop popup #}

                <div class="js-item-variants hidden">
                    <form class="js-product-form" method="post" action="{{ store.cart_url }}">
                        <input type="hidden" name="add_to_cart" value="{{product.id}}" />
                        {% if product.variations %}
                            {% include "snipplets/product/product-variants.tpl" with {quickshop: true} %}
                        {% endif %}
                        {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
                        {% set texts = {'cart': "Agregar al carrito", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}

                        {# Add to cart CTA #}

                        {% set show_product_quantity = product.available and product.display_price %}

                        <div class="row no-gutters mt-3 align-items-center flex-product-quantity">

                            {% if show_product_quantity %}
                                {% include "snipplets/product/product-quantity.tpl" with {quickshop: true} %}
                            {% endif %}

                            <div class="{% if show_product_quantity %}col-8 col-md-8{% else %}col-12{% endif %}">

                                <input type="submit" class="js-addtocart js-prod-submit-form btn-add-to-cart btn btn-primary btn-big w-100 {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} />

                                {# Fake add to cart CTA visible during add to cart event #}

                                {% include 'snipplets/placeholders/button-placeholder.tpl' with {custom_class: "btn-big"} %}
                            </div>
                        </div>
                    </form>
                </div>

            {% endif %}
            {% set show_labels = not product.has_stock or product.compare_at_price or product.hasVisiblePromotionLabel %}
            <div class="item-description pt-3" data-store="product-item-info-{{ product.id }}">
                <a href="{{ product_url_with_selected_variant }}" title="{{ product.name }}" aria-label="{{ product.name }}" class="item-link">
                    {% if settings.product_color_variants and not reduced_item %}
                        {% include 'snipplets/grid/item-colors.tpl' %}
                    {% endif %}
                    <div class="js-item-name item-name mb-2 opacity-80" data-store="product-item-name-{{ product.id }}">{{ product.name }}</div>
                    {% if product.display_price %}
                        <div class="item-price-container {% if settings.quick_shop and not reduced_item %}mb-3{% endif %}" data-store="product-item-price-{{ product.id }}">
                            <span class="js-compare-price-display price-compare d-block" {% if not product.compare_at_price or not product.display_price %}style="display:none;"{% else %}style="display:inline-block;"{% endif %}>
                                {% if not reduced_item and product.compare_at_price %}
                                    {{ product.compare_at_price | money }}
                                {% endif %}
                            </span>

                            <div class="d-block mb-1 mr-1">
                                <span class="js-price-display item-price {% if settings.payment_discount_price %}font-body{% endif %}" data-product-price="{{ product.price }}">
                                    {{ product.price | money }}
                                </span>
                                {% if not reduced_item %}
                                    {% include 'snipplets/labels.tpl' %}
                                {% endif %}
                            </div>

                             {% set product_can_show_installments = product.show_installments and product.display_price and product.get_max_installments.installment > 1 and settings.product_installments and not reduced_item %}

                            {% set discount_price_spacing_classes = product_can_show_installments ? 'mb-2' %}

                            {{ component('payment-discount-price', {
                                    visibility_condition: settings.payment_discount_price and not reduced_item,
                                    location: 'product',
                                    container_classes: discount_price_spacing_classes ~ " mt-2 font-weight-bold font-smallest",
                                    text_classes: {
                                        price: 'font-small',
                                    },
                                }) 
                            }}
                            {% if product_can_show_installments %}
                                {{ component('installments', {'location' : 'product_item' , 'short_wording' : true, container_classes: { installment: "item-installments"}}) }}
                            {% endif %}
                        </div>
                    {% endif %}
                </a>
            </div>
            {% if (settings.quick_shop or settings.product_color_variants) and not reduced_item %}
                </div>{# This closes the quickshop tag #}
            {% endif %}

            {# Structured data to provide information for Google about the product content #}
            {{ component('structured-data', {'item': true}) }}
        </div>
    </div>
