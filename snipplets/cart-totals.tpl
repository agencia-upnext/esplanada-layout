{# Check if store has free shipping without regions or categories #}

{% set has_free_shipping = cart.free_shipping.cart_has_free_shipping or cart.free_shipping.min_price_free_shipping.min_price %}
{% set has_free_shipping_bar = has_free_shipping and cart.free_shipping.min_price_free_shipping.min_price_raw > 0 %}

{% if has_free_shipping_bar %}
  
  {# includes free shipping progress bar: only if store has free shipping with a minimum #}
  
  {% if cart_page %}
  <div class="d-block d-md-none">
  {% endif %}
    {% include "snipplets/shipping/shipping-free-rest.tpl" %}
  {% if cart_page %}
  </div>
  {% endif %}

{% endif %}

{# IMPORTANT Do not remove this hidden subtotal, it is used by JS to calculate cart total #}
<div class="subtotal-price hidden" data-priceraw="{{ cart.total }}"></div>

{# Used to assign currency to total #}
<div id="store-curr" class="hidden">{{ cart.currency }}</div>

{# Define conditions to show shipping calculator and store branches on cart #}

{% set show_calculator_on_cart = settings.shipping_calculator_cart_page and store.has_shipping %}
{% set show_cart_fulfillment = settings.shipping_calculator_cart_page and (store.has_shipping or store.branches) %}

{# Cart subtotals for cart popup #}

{% if not cart_page %}

  {# Cart popup subtotal #}

  <div class=" row mb-3 font-weight-normal" {% if cart.items_count == 0 %}style="display:none;"{% endif %} data-store="cart-subtotal">
  <span {% if not cart_page %}class="col-7"{% endif %}>
    {{ "Subtotal" | translate }}
    
    <small class="js-subtotal-shipping-wording" {% if not (cart.has_shippable_products or show_calculator_on_cart) %}style="display: none"{% endif %}>{{ " (sin envío)" | translate }}</small>
    :
  </span>
  <span class="js-ajax-cart-total js-cart-subtotal font-weight-bold {% if not cart_page %}col{% endif %} text-right" data-priceraw="{{ cart.subtotal }}" data-component="cart.subtotal" data-component-value={{ cart.subtotal }}>{{ cart.subtotal | money }}</span>
  </div>

  <div class="js-visible-on-cart-filled divider"></div>

  {# Cart popup promos #}

  <div class="js-total-promotions text-accent">
  <span class="js-promo-discount" style="display:none;"> {{ "Descuento" | translate }}</span>
  <span class="js-promo-in" style="display:none;">{{ "en" | translate }}</span>
  <span class="js-promo-all" style="display:none;">{{ "todos los productos" | translate }}</span>
  <span class="js-promo-buying" style="display:none;"> {{ "comprando" | translate }}</span>
  <span class="js-promo-units-or-more" style="display:none;"> {{ "o más" | translate }}</span>
  {% for promotion in cart.promotional_discount.promotions_applied %}
    {% if(promotion.scope_value_id) %}
    {% set id = promotion.scope_value_id %}
    {% else %}
    {% set id = 'all' %}
    {% endif %}
    <span class="js-total-promotions-detail-row row mb-3" id="{{ id }}">
      <span class="col pr-3">
      {% if promotion.discount_script_type != "custom" %}
        {% if promotion.discount_script_type == "NAtX%off" %}
        {{ promotion.selected_threshold.discount_decimal_percentage * 100 }}% OFF
        {% elseif promotion.isBuyXPayY %}
        {{ promotion.buy }}x{{ promotion.pay }}
        {% elseif promotion.isCrossSelling %}
        {{ "Descuento" | translate }}
        {% else %}
        {{ promotion.discount_script_type }}
        {% endif %}

        {{ "en" | translate }} {% if id == 'all' %}{{ "todos los productos" | translate }}{% else %}{{ promotion.scope_value_name }}{% endif %}

        {% if promotion.discount_script_type == "NAtX%off" %}
        <span>{{ "Comprando {1} o más" | translate(promotion.selected_threshold.quantity) }}</span>
        {% endif %}
      {% else %}
        {{ promotion.scope_value_name }}
      {% endif %}
      :
      </span>
      <span class="col-auto text-right">-{{ promotion.total_discount_amount_short }}</span>
    </span>
  {% endfor %}
  </div>
{% endif %}

{% if cart_page %}

  {# Cart page subtotal #}

  <div id="cart-sticky-summary" class="position-sticky-md cart-page-totals">
  {% if has_free_shipping_bar %}
    {# includes free shipping progress bar: only if store has free shipping with a minimum #}
  
    <div class="d-none d-md-block">
    {% include "snipplets/shipping/shipping-free-rest.tpl" %}
    </div>
  {% endif %}

  <div class="js-visible-on-cart-filled row no-gutters h5 font-big font-weight-normal mb-3" {% if cart.items_count == 0 %}style="display:none;"{% endif %} data-store="cart-subtotal">
    <span class="col-auto pl-md-0">
    {{ "Subtotal" | translate }}:
    </span>
    <span class="js-ajax-cart-total js-cart-subtotal col text-right pr-md-0" data-priceraw="{{ cart.subtotal }}">{{ cart.subtotal | money }}</span>
  </div>

  {# Cart page promos #}

  <div class="js-total-promotions text-accent">
    <span class="js-promo-discount" style="display:none;"> {{ "Descuento" | translate }}</span>
    <span class="js-promo-in" style="display:none;">{{ "en" | translate }}</span>
    <span class="js-promo-all" style="display:none;">{{ "todos los productos" | translate }}</span>
    <span class="js-promo-buying" style="display:none;"> {{ "comprando" | translate }}</span>
    <span class="js-promo-units-or-more" style="display:none;"> {{ "o más" | translate }}</span>
    {% for promotion in cart.promotional_discount.promotions_applied %}
    {% if(promotion.scope_value_id) %}
      {% set id = promotion.scope_value_id %}
    {% else %}
      {% set id = 'all' %}
    {% endif %}
      <span class="js-total-promotions-detail-row row no-gutters mb-3" id="{{ id }}">
      <span class="col pr-3">
        {% if promotion.discount_script_type != "custom" %}
        {% if promotion.discount_script_type == "NAtX%off" %}
          {{ promotion.selected_threshold.discount_decimal_percentage * 100 }}% OFF
        {% elseif promotion.isBuyXPayY %}
          {{ promotion.buy }}x{{ promotion.pay }}
        {% elseif promotion.isCrossSelling %}
          {{ "Descuento" | translate }}
        {% else %}
          {{ promotion.discount_script_type }}
        {% endif %}

        {{ "en" | translate }} {% if id == 'all' %}{{ "todos los productos" | translate }}{% else %}{{ promotion.scope_value_name }}{% endif %}

        {% if promotion.discount_script_type == "NAtX%off" %}
          <span>{{ "Comprando {1} o más" | translate(promotion.selected_threshold.quantity) }}</span>
        {% endif %}
        {% else %}
        {{ promotion.scope_value_name }}
        {% endif %}
        :
      </span>
      <span class="col-auto text-right pr-md-0">-{{ promotion.total_discount_amount_short }}</span>
      </span>
    {% endfor %}
  </div>

  {# Cart page shipping costs #}

  {% if show_calculator_on_cart %}
    <div id="shipping-cost-container" class="js-fulfillment-info js-visible-on-cart-filled js-shipping-cost-table h6 font-body font-weight-normal mb-3 row no-gutters" {% if cart.items_count == 0 or (not cart.has_shippable_products) %}style="display:none;"{% endif %}>
    <span class="col-auto pl-md-0">{{ 'Envío:' | translate }}</span>
    <span id="shipping-cost" class="col text-right opacity-40 pr-md-0">
      {{ "Calculalo para verlo" | translate }}
    </span>
    <span class="js-calculating-shipping-cost col text-right opacity-40 pr-md-0" style="display: none">
      {{ "Calculando" | translate }}...
    </span>
    <span class="js-shipping-cost-empty col text-right opacity-40 pr-md-0" style="display: none">
      {{ "Calculalo para verlo" | translate }}
    </span>
    </div>
  {% endif %}

{% else %}

  {# Cart fulfillment #}

  {% include "snipplets/shipping/cart-fulfillment.tpl" %}
{% endif %}
  
  {# Cart page and popup total #}
  
{% if cart_page %}
  {# End of sticky module #}
  </div>
{% endif %}
