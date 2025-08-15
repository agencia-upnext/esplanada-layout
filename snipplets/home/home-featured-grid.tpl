{# /*============================================================================
  #Home featured grid
==============================================================================*/

#Properties

#Featured Slider

#}

{% set featured_products = featured_products | default(false) %}
{% set new_products = new_products | default(false) %}
{% set sale_products = sale_products | default(false) %}
{% set promotion_products = promotion_products | default(false) %}
{% set best_seller_products = best_seller_products | default(false) %}

{# Check if slider is used #}

{% set has_featured_products_and_slider = featured_products and (settings.featured_products_format_mobile == 'slider' or settings.featured_products_format_desktop == 'slider')  %}
{% set has_new_products_and_slider = new_products and (settings.new_products_format_mobile == 'slider' or settings.new_products_format_desktop == 'slider') %}
{% set has_sale_products_and_slider = sale_products and (settings.sale_products_format_mobile == 'slider' or settings.sale_products_format_desktop == 'slider') %}
{% set has_promotion_products_and_slider = promotion_products and (settings.promotion_products_format_mobile == 'slider' or settings.promotion_products_format_desktop == 'slider') %}
{% set has_best_seller_products_and_slider = best_seller_products and (settings.best_seller_products_format_mobile == 'slider' or settings.best_seller_products_format_desktop == 'slider') %}
{% set use_slider = has_featured_products_and_slider or has_new_products_and_slider or has_sale_products_and_slider or has_promotion_products_and_slider or has_best_seller_products_and_slider %}

{% if featured_products %}
    {% set sections_products = sections.primary.products %}
    {% set section_name = 'primary' %}
    {% set section_columns_desktop = settings.featured_products_desktop %}
    {% set section_columns_mobile = settings.featured_products_mobile %}
    {% set section_slider = settings.featured_products_format_mobile == 'slider' or settings.featured_products_format_desktop == 'slider' %}
    {% set section_slider_both = settings.featured_products_format_mobile == 'slider' and settings.featured_products_format_desktop == 'slider' %}
    {% set section_slider_mobile_only = settings.featured_products_format_mobile == 'slider' and settings.featured_products_format_desktop == 'grid' %}
    {% set section_slider_desktop_only = settings.featured_products_format_desktop == 'slider' and settings.featured_products_format_mobile == 'grid' %}
    {% set section_slider_desktop = settings.featured_products_format_desktop == 'slider' %}
    {% set section_format_desktop = settings.featured_products_format_desktop %}
    {% set section_format_mobile = settings.featured_products_format_mobile %}
    {% set section_id = 'featured' %}
    {% set section_title = settings.featured_products_title %}
{% endif %}
{% if new_products %}
    {% set sections_products = sections.new.products %}
    {% set section_name = 'new' %}
    {% set section_columns_desktop = settings.new_products_desktop %}
    {% set section_columns_mobile = settings.new_products_mobile %}
    {% set section_slider = settings.new_products_format_mobile == 'slider' or settings.new_products_format_desktop == 'slider' %}
    {% set section_slider_both = settings.new_products_format_mobile == 'slider' and settings.new_products_format_desktop == 'slider' %}
    {% set section_slider_mobile_only = settings.new_products_format_mobile == 'slider' and settings.new_products_format_desktop == 'grid' %}
    {% set section_slider_desktop_only = settings.new_products_format_desktop == 'slider' and settings.new_products_format_mobile == 'grid' %}
    {% set section_slider_desktop = settings.new_products_format_desktop == 'slider' %}
    {% set section_format_desktop = settings.new_products_format_desktop %}
    {% set section_format_mobile = settings.new_products_format_mobile %}
    {% set section_id = 'new' %}
    {% set section_title = settings.new_products_title %}
{% endif %}
{% if sale_products %}
    {% set sections_products = sections.sale.products %}
    {% set section_name = 'sale' %}
    {% set section_columns_desktop = settings.sale_products_desktop %}
    {% set section_columns_mobile = settings.sale_products_mobile %}
    {% set section_slider = settings.sale_products_format_mobile == 'slider' or settings.sale_products_format_desktop == 'slider' %}
    {% set section_slider_both = settings.sale_products_format_mobile == 'slider' and settings.sale_products_format_desktop == 'slider' %}
    {% set section_slider_mobile_only = settings.sale_products_format_mobile == 'slider' and settings.sale_products_format_desktop == 'grid' %}
    {% set section_slider_desktop_only = settings.sale_products_format_desktop == 'slider' and settings.sale_products_format_mobile == 'grid' %}
    {% set section_slider_desktop = settings.sale_products_format_desktop == 'slider' %}
    {% set section_format_desktop = settings.sale_products_format_desktop %}
    {% set section_format_mobile = settings.sale_products_format_mobile %}
    {% set section_id = 'sale' %}
    {% set section_title = settings.sale_products_title %}
{% endif %}
{% if promotion_products %}
    {% set sections_products = sections.promotion.products %}
    {% set section_name = 'promotion' %}
    {% set section_columns_desktop = settings.promotion_products_desktop %}
    {% set section_columns_mobile = settings.promotion_products_mobile %}
    {% set section_slider = settings.promotion_products_format_mobile == 'slider' or settings.promotion_products_format_desktop == 'slider' %}
    {% set section_slider_both = settings.promotion_products_format_mobile == 'slider' and settings.promotion_products_format_desktop == 'slider' %}
    {% set section_slider_mobile_only = settings.promotion_products_format_mobile == 'slider' and settings.promotion_products_format_desktop == 'grid' %}
    {% set section_slider_desktop_only = settings.promotion_products_format_desktop == 'slider' and settings.promotion_products_format_mobile == 'grid' %}
    {% set section_slider_desktop = settings.promotion_products_format_desktop == 'slider' %}
    {% set section_format_desktop = settings.promotion_products_format_desktop %}
    {% set section_format_mobile = settings.promotion_products_format_mobile %}
    {% set section_id = 'promotion' %}
    {% set section_title = settings.promotion_products_title %}
{% endif %}
{% if best_seller_products %}
    {% set sections_products = sections.best_seller.products %}
    {% set section_name = 'best_seller' %}
    {% set section_columns_desktop = settings.best_seller_products_desktop %}
    {% set section_columns_mobile = settings.best_seller_products_mobile %}
    {% set section_slider = settings.best_seller_products_format_mobile == 'slider' or settings.best_seller_products_format_desktop == 'slider' %}
    {% set section_slider_both = settings.best_seller_products_format_mobile == 'slider' and settings.best_seller_products_format_desktop == 'slider' %}
    {% set section_slider_mobile_only = settings.best_seller_products_format_mobile == 'slider' and settings.best_seller_products_format_desktop == 'grid' %}
    {% set section_slider_desktop_only = settings.best_seller_products_format_desktop == 'slider' and settings.best_seller_products_format_mobile == 'grid' %}
    {% set section_slider_desktop = settings.best_seller_products_format_desktop == 'slider' %}
    {% set section_format_desktop = settings.best_seller_products_format_desktop %}
    {% set section_format_mobile = settings.best_seller_products_format_mobile %}
    {% set section_id = 'best-seller' %}
    {% set section_title = settings.best_seller_products_title %}
{% endif %}
{% set section_columns_slider_mobile = section_columns_mobile == '1' ? '1.15' : '2.25' %}

{% set icon_chevron = '<svg width="8" height="13" viewBox="0 0 8 13" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M7.071 7.071L1.414 12.728L0 11.314L4.95 6.364L0 1.414L1.414 0L7.071 5.657C7.25847 5.84453 7.36379 6.09884 7.36379 6.364C7.36379 6.62916 7.25847 6.88347 7.071 7.071Z" />
</svg>' %}

{% set button_settings = {
    'promotion': {
        'show': settings.promotion_products_show_button,
        'link': settings.promotion_products_button_link,
        'text': 'Ver Tudo',
        'class': 'btn-see-all__white',
    },
    'primary': {
        'show': settings.featured_products_show_button,
        'link': settings.featured_products_button_link,
        'text': 'Ver Tudo',
        'class': 'btn-see-all__gray',
    },
    'new': {
        'show': settings.new_products_show_button,
        'link': settings.new_products_button_link,
        'text': 'Ver Tudo',
        'class': 'btn-see-all__gray',
    }
} %}

{% set current_section = button_settings[section_name] %}

<div class="js-products-{{ section_id }}-container container">
    <div class="row">
        <div class="js-products-{{ section_id }}-col col-12{% if use_slider %} pr-0 pr-md-3{% endif %}">
            <div class="d-flex justify-content-around align-items-center px-3" style="gap: 0.5rem;">
                <h3 class="js-products-{{ section_id }}-title mt-2 {% if not promotion_products %}mb-3{% endif %} section-title h4 mb-0 text-center" {% if not section_title %}style="display: none;"{% endif %}>{{ section_title }}</h3>
                {% if current_section.show %}
                    <a href="{{ current_section.link }}" class="btn-see-all {{ current_section.class }}">
                        {{ current_section.text }} {{ icon_chevron | raw }}
                    </a>
                {% endif %}
            </div>
            {% if promotion_products %}
                <svg class="text-center mb-4 mx-auto d-block" width="335" height="31" viewBox="0 0 335 31" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11.8334 5.59722L10.5576 9.66748L13.9715 9.64876L12.6258 5.59295C12.6258 5.59295 12.5485 5.34037 12.2367 5.33369C12.2328 5.33369 12.2289 5.33369 12.2252 5.33369C11.9223 5.33369 11.8334 5.59722 11.8334 5.59722Z" fill="white"/>
                    <path d="M11.8334 5.59722L10.5576 9.66748L13.9715 9.64876L12.6258 5.59295C12.6258 5.59295 12.5485 5.34037 12.2367 5.33369C12.2328 5.33369 12.2289 5.33369 12.2252 5.33369C11.9225 5.33369 11.8334 5.59722 11.8334 5.59722Z" fill="white"/>
                    <path d="M12.9275 16.8255L16.3657 19.3191C16.4512 19.3812 16.552 19.4217 16.6575 19.4258C16.7446 19.4294 16.8429 19.4117 16.9174 19.3375C16.9725 19.2822 17.0106 19.2229 17.0367 19.165C17.0987 19.0267 17.0978 18.8684 17.0496 18.7248L15.6604 14.5812L12.9275 16.8255Z" fill="white"/>
                    <path d="M12.9275 16.8255L16.3657 19.3191C16.4512 19.3812 16.552 19.4217 16.6575 19.4258C16.7446 19.4294 16.8429 19.4117 16.9174 19.3375C16.9725 19.2822 17.0106 19.2229 17.0367 19.165C17.0987 19.0267 17.0978 18.8684 17.0496 18.7248L15.6604 14.5812L12.9275 16.8255Z" fill="white"/>
                    <path d="M19.6778 9.95491L4.97646 10.0357C4.97646 10.0357 4.84142 9.99435 4.69956 10.2648C4.69809 10.2675 4.69675 10.2702 4.69528 10.273C4.60048 10.4602 4.67229 10.69 4.84209 10.8137L9.10314 13.9161L0.0420699 25.6795C0.0420699 25.6795 -0.115833 26.085 0.18019 26.2772C0.476347 26.4694 0.82037 26.181 0.82037 26.181L19.7414 10.8013C19.7414 10.8013 20.0019 10.6613 20 10.3072C19.9981 9.95665 19.6838 9.95491 19.6778 9.95491Z" fill="white"/>
                    <path d="M19.6778 9.95491L4.97646 10.0357C4.97646 10.0357 4.84142 9.99435 4.69956 10.2648C4.69809 10.2675 4.69675 10.2702 4.69528 10.273C4.60048 10.4602 4.67229 10.69 4.84209 10.8137L9.10314 13.9161L0.0420699 25.6795C0.0420699 25.6795 -0.115833 26.085 0.18019 26.2772C0.476347 26.4694 0.82037 26.181 0.82037 26.181L19.7414 10.8013C19.7414 10.8013 20.0019 10.6613 20 10.3072C19.9981 9.95665 19.6838 9.95491 19.6779 9.95491C19.6778 9.95491 19.6778 9.95491 19.6778 9.95491Z" fill="white"/>
                    <path d="M20.84 26L24.5 5.39H41.54L40.79 9.59H29.15L28.46 13.46H38.63L37.91 17.57H27.74L26.99 21.8H38.84L38.09 26H20.84ZM41.8166 26L45.4766 5.39H50.2166L55.8266 15.14C55.9866 15.4 56.1566 15.69 56.3366 16.01C56.5366 16.33 56.7166 16.65 56.8766 16.97C57.0566 17.29 57.2166 17.58 57.3566 17.84L57.5066 17.78C57.5466 17.42 57.5966 17.06 57.6566 16.7C57.7166 16.34 57.7666 16.01 57.8066 15.71L59.6066 5.39H64.5866L60.9566 26H56.2466L50.4266 16.04C50.2466 15.74 50.0266 15.35 49.7666 14.87C49.5066 14.39 49.2766 13.97 49.0766 13.61L48.9266 13.64C48.8866 14.02 48.8266 14.44 48.7466 14.9C48.6666 15.34 48.6066 15.7 48.5666 15.98L46.8266 26H41.8166ZM70.6198 26L73.4998 9.8H66.8098L67.5898 5.39H86.3398L85.5598 9.8H78.8698L76.0198 26H70.6198ZM85.704 26L89.334 5.39H100.884C102.304 5.39 103.474 5.62 104.394 6.08C105.334 6.52 106.034 7.13 106.494 7.91C106.954 8.69 107.184 9.59 107.184 10.61C107.184 11.83 106.994 12.91 106.614 13.85C106.234 14.79 105.694 15.59 104.994 16.25C104.314 16.91 103.484 17.44 102.504 17.84L105.204 26H99.324L97.194 18.74H92.364L91.074 26H85.704ZM93.084 14.75H98.424C98.984 14.75 99.504 14.62 99.984 14.36C100.464 14.08 100.854 13.69 101.154 13.19C101.454 12.69 101.604 12.12 101.604 11.48C101.604 10.86 101.424 10.37 101.064 10.01C100.704 9.65 100.204 9.47 99.564 9.47H93.984L93.084 14.75ZM108.174 26L111.834 5.39H128.874L128.124 9.59H116.484L115.794 13.46H125.964L125.244 17.57H115.074L114.324 21.8H126.174L125.424 26H108.174ZM138.661 26.36C135.861 26.36 133.691 25.7 132.151 24.38C130.611 23.06 129.841 21.06 129.841 18.38C129.841 17.56 129.891 16.77 129.991 16.01C130.091 15.25 130.241 14.54 130.441 13.88C130.941 11.96 131.741 10.35 132.841 9.05C133.961 7.73 135.331 6.73 136.951 6.05C138.571 5.37 140.381 5.03 142.381 5.03C143.721 5.03 144.961 5.16 146.101 5.42C147.241 5.68 148.231 6.07 149.071 6.59C149.931 7.11 150.591 7.76 151.051 8.54C151.531 9.32 151.771 10.24 151.771 11.3C151.771 11.52 151.761 11.74 151.741 11.96C151.721 12.18 151.691 12.41 151.651 12.65H146.371C146.391 12.55 146.401 12.46 146.401 12.38C146.401 12.28 146.401 12.19 146.401 12.11C146.401 11.65 146.301 11.24 146.101 10.88C145.921 10.52 145.641 10.22 145.261 9.98C144.901 9.74 144.481 9.56 144.001 9.44C143.521 9.3 143.001 9.23 142.441 9.23C141.521 9.23 140.681 9.36 139.921 9.62C139.161 9.86 138.501 10.23 137.941 10.73C137.381 11.21 136.911 11.8 136.531 12.5C136.171 13.18 135.921 13.97 135.781 14.87C135.681 15.37 135.601 15.79 135.541 16.13C135.501 16.45 135.461 16.73 135.421 16.97C135.401 17.21 135.381 17.41 135.361 17.57C135.341 17.73 135.331 17.89 135.331 18.05C135.331 18.95 135.501 19.71 135.841 20.33C136.181 20.93 136.671 21.39 137.311 21.71C137.971 22.01 138.791 22.16 139.771 22.16C140.711 22.16 141.581 22.01 142.381 21.71C143.201 21.41 143.881 21 144.421 20.48C144.961 19.94 145.281 19.32 145.381 18.62L145.411 18.47H139.861L140.551 14.69H151.291L149.311 26H146.191L146.011 23.81C145.351 24.37 144.641 24.84 143.881 25.22C143.121 25.6 142.311 25.88 141.451 26.06C140.611 26.26 139.681 26.36 138.661 26.36ZM151.633 26L163.003 5.39H169.453L173.533 26H168.013L167.413 22.43H159.133L157.273 26H151.633ZM161.173 18.41H166.783L166.063 14.12C166.023 13.76 165.973 13.41 165.913 13.07C165.853 12.71 165.793 12.36 165.733 12.02C165.673 11.66 165.623 11.32 165.583 11C165.543 10.68 165.503 10.37 165.463 10.07H165.343C165.143 10.49 164.923 10.95 164.683 11.45C164.443 11.93 164.203 12.4 163.963 12.86C163.743 13.32 163.533 13.75 163.333 14.15L161.173 18.41ZM181.68 26L185.34 5.39H190.71L187.08 26H181.68ZM191.553 26L195.213 5.39H202.743L203.643 14.57C203.683 14.91 203.723 15.36 203.763 15.92C203.803 16.48 203.843 17.06 203.883 17.66C203.923 18.24 203.953 18.77 203.973 19.25H204.183C204.383 18.75 204.583 18.24 204.783 17.72C205.003 17.18 205.223 16.64 205.443 16.1C205.663 15.54 205.883 15.02 206.103 14.54L210.273 5.39H218.133L214.473 26H209.253L211.053 15.92C211.153 15.34 211.273 14.71 211.413 14.03C211.553 13.35 211.693 12.7 211.833 12.08C211.973 11.46 212.093 10.97 212.193 10.61H211.983C211.903 10.83 211.793 11.1 211.653 11.42C211.533 11.74 211.413 12.05 211.293 12.35C211.173 12.65 211.063 12.91 210.963 13.13L205.023 26H200.493L199.263 13.28C199.243 12.86 199.213 12.41 199.173 11.93C199.133 11.43 199.103 11 199.083 10.64H198.873C198.833 11.16 198.783 11.75 198.723 12.41C198.683 13.05 198.623 13.68 198.543 14.3C198.483 14.92 198.413 15.46 198.333 15.92L196.563 26H191.553ZM218.975 26L222.635 5.39H239.675L238.925 9.59H227.285L226.595 13.46H236.765L236.045 17.57H225.875L225.125 21.8H236.975L236.225 26H218.975ZM239.981 26L243.611 5.39H251.861C254.821 5.39 257.101 6.04 258.701 7.34C260.301 8.64 261.101 10.66 261.101 13.4C261.101 13.84 261.081 14.3 261.041 14.78C261.001 15.24 260.941 15.71 260.861 16.19C260.481 18.33 259.771 20.13 258.731 21.59C257.711 23.05 256.391 24.15 254.771 24.89C253.171 25.63 251.301 26 249.161 26H239.981ZM246.101 21.8H249.161C250.001 21.8 250.761 21.68 251.441 21.44C252.121 21.2 252.711 20.85 253.211 20.39C253.731 19.93 254.151 19.37 254.471 18.71C254.811 18.03 255.051 17.27 255.191 16.43C255.311 15.83 255.391 15.36 255.431 15.02C255.491 14.66 255.531 14.37 255.551 14.15C255.571 13.93 255.581 13.74 255.581 13.58C255.581 12.7 255.421 11.97 255.101 11.39C254.801 10.79 254.341 10.34 253.721 10.04C253.101 9.74 252.321 9.59 251.381 9.59H248.231L246.101 21.8ZM262.598 26L266.258 5.39H271.628L267.998 26H262.598ZM270.491 26L281.861 5.39H288.311L292.391 26H286.871L286.271 22.43H277.991L276.131 26H270.491ZM280.031 18.41H285.641L284.921 14.12C284.881 13.76 284.831 13.41 284.771 13.07C284.711 12.71 284.651 12.36 284.591 12.02C284.531 11.66 284.481 11.32 284.441 11C284.401 10.68 284.361 10.37 284.321 10.07H284.201C284.001 10.49 283.781 10.95 283.541 11.45C283.301 11.93 283.061 12.4 282.821 12.86C282.601 13.32 282.391 13.75 282.191 14.15L280.031 18.41ZM297.583 26L300.463 9.8H293.773L294.553 5.39H313.303L312.523 9.8H305.833L302.983 26H297.583ZM308.196 26L319.566 5.39H326.016L330.096 26H324.576L323.976 22.43H315.696L313.836 26H308.196ZM317.736 18.41H323.346L322.626 14.12C322.586 13.76 322.536 13.41 322.476 13.07C322.416 12.71 322.356 12.36 322.296 12.02C322.236 11.66 322.186 11.32 322.146 11C322.106 10.68 322.066 10.37 322.026 10.07H321.906C321.706 10.49 321.486 10.95 321.246 11.45C321.006 11.93 320.766 12.4 320.526 12.86C320.306 13.32 320.096 13.75 319.896 14.15L317.736 18.41Z" fill="white"/>
                </svg>

            {% endif %}
            {% if use_slider %}
                <div class="js-swiper-{{ section_id }} swiper-container">
            {% endif %}
                     {% set section_slider_classes = section_slider_both ? 'swiper-products-slider flex-nowrap' : section_slider_mobile_only ? 'swiper-mobile-only flex-nowrap flex-md-wrap' : section_slider_desktop_only ? 'swiper-desktop-only flex-wrap flex-md-nowrap ml-md-0' %}

                    <div class="js-products-{{ section_id }}-grid {% if use_slider %}swiper-wrapper {{ section_slider_classes }}{% endif %} row row-grid" data-desktop-columns="{{ section_columns_desktop }}" data-mobile-columns="{{ section_columns_mobile }}" data-desktop-format="{{ section_format_desktop }}" data-mobile-format="{{ section_format_mobile }}" data-mobile-slider-columns="{{ section_columns_slider_mobile }}">
                        {% for product in sections_products %}
                            {% if use_slider %}
                                {% include 'snipplets/grid/item.tpl' with {'slide_item': true, 'section_name': section_name, 'section_columns_desktop': section_columns_desktop, 'section_columns_mobile': section_columns_mobile } %}
                            {% else %}
                                {% include 'snipplets/grid/item.tpl' %}
                            {% endif %}
                        {% endfor %}
                    </div>
            {% if use_slider %}
                </div>
                {% if section_slider_desktop %}
                    <div class="js-swiper-{{ section_id }}-prev swiper-button-prev swiper-button-outside d-none d-md-block svg-icon-text">
                        <svg class="icon-inline icon-lg icon-flip-horizontal"><use xlink:href="#chevron"/></svg>
                    </div>
                    <div class="js-swiper-{{ section_id }}-next swiper-button-next swiper-button-outside d-none d-md-block svg-icon-text">
                        <svg class="icon-inline icon-lg"><use xlink:href="#chevron"/></svg>
                    </div>

                    <div class="js-swiper-pagination col-12 mt-2 mb-4">
                        <div class="js-swiper-{% if featured_products %}featured{% elseif new_products %}new{% elseif sale_products %}sale{% elseif promotion_products %}promotion{% elseif best_seller_products %}best_seller{% elseif enjoy_products %}enjoy{% else %}sale{% endif %}-control js-swiper-{% if featured_products %}featured{% elseif new_products %}new{% elseif sale_products %}sale{% elseif promotion_products %}promotion{% elseif best_seller_products %}best_seller{% elseif enjoy_products %}enjoy{% else %}sale{% endif %}-pagination {% if mobile %}-mobile{% endif %} swiper-pagination swiper-pagination-shelf swiper-pagination-bullets d-block">
                            {% if sections_products | length > 1 %}
                                {% for slide in sections_products %}
                                    <span class="swiper-pagination-bullet"></span>
                                {% endfor %}
                            {% endif %}
                        </div>
                    </div>
                {% endif %}
            {% endif %}
        </div>
    </div>
</div>
