{% if not settings.search_big_mobile or not settings.search_big_desktop %}

	{# Modal Search #}

	{% embed "snipplets/modal.tpl" with{modal_id: 'nav-search',modal_class: 'nav-search', modal_header_class: 'd-none', modal_body_class: 'p-0 h-100',  modal_transition: 'fade', modal_header_title: false, modal_mobile_full_screen: true } %}
		{% block modal_body %}
			{% include "snipplets/header/header-search.tpl" with {search_modal: true} %}
		{% endblock %}
	{% endembed %}

{% endif %}

{% set modal_with_desktop_only_overlay_val = false %}

{# Modal Hamburger #}

{% embed "snipplets/modal.tpl" with{modal_id: 'nav-hamburger',modal_class: 'nav-hamburger modal-docked-md pb-0', modal_position: 'left', modal_transition: 'slide', modal_width: 'full', modal_mobile_full_screen: false, modal_hide_close: 'true',modal_header_class: 'd-none', modal_body_class: 'nav-body', modal_footer_class: 'hamburger-footer mb-0 p-0',modal_header_title: false, modal_fixed_footer: true, modal_footer: true, desktop_overlay_only: modal_with_desktop_only_overlay_val} %}
	{% block modal_body %}
		{% include "snipplets/navigation/navigation-panel.tpl" %}
	{% endblock %}
	{% block modal_foot %}
		{% include 'snipplets/navigation/navigation-banners.tpl' %}
	{% endblock %}
{% endembed %}

{# Modal Cart #}

{% if not store.is_catalog and settings.ajax_cart and template != 'cart' %}           

	{# Cart Ajax #}

	{% embed "snipplets/modal.tpl" with{
		modal_id: 'modal-cart',
		modal_class: 'cart', 
		modal_position: 'right', 
		modal_position_desktop: 'right', 
		modal_transition: 'slide', 
		modal_width: 'docked-md', 
		modal_form_action: store.cart_url, 
		modal_form_class: 'js-ajax-cart-panel cart-panel h-100', 
		modal_body_class: 'h-100', 
		modal_header_title: true, 
		modal_mobile_full_screen: true,
		modal_url: 'modal-fullscreen-cart',
		modal_form_hook: 'cart-form', 
		data_component:'cart',
		custom_data_attribute: 'cart-open-type',
		custom_data_attribute_value: settings.cart_open_type,
		desktop_overlay_only: modal_with_desktop_only_overlay_val,
		modal_footer: true,
		modal_fixed_footer: true
	} %}
		{% block modal_head %}
			{% block page_header_text %}{{ "Carrito de compras" | translate }}{% endblock page_header_text %}
		{% endblock %}
		{% block modal_body %}
			{% snipplet "cart-panel.tpl" %}
		{% endblock %}
		{% block modal_foot %}
			<div class="js-cart-total-container js-visible-on-cart-filled" {% if cart.items_count == 0 %}style="display:none;"{% endif %} data-store="cart-total">
				<div class="row {% if cart_page %}no-gutters{% endif %} mb-1 pt-4 h4 font-large">
					<span class="col-auto {% if cart_page %}pl-md-0{% endif %}">{{ "Total" | translate }}:</span>
					<span class="js-cart-total {% if cart.free_shipping.cart_has_free_shipping %}js-free-shipping-achieved{% endif %} {% if cart.shipping_data.selected %}js-cart-saved-shipping{% endif %} col text-right {% if cart_page %}pr-md-0{% endif %}" data-component="cart.total" data-component-value={{ cart.total }}>{{ cart.total | money }}</span>
					<span class="col-12 {% if cart_page %}pr-md-0{% endif %}">
					{{ component('payment-discount-price', {
						visibility_condition: settings.payment_discount_price,
						location: 'cart',
						container_classes: 'text-accent font-small font-weight-normal mt-1 text-right',
						}) 
					}}

					{% if not settings.payment_discount_price %}
						{{ component('installments', {'location': 'cart', 'short_wording' : true, container_classes: { installment: "font-small font-weight-normal mt-1 text-right"}}) }}
					{% endif %}
					</span>
				</div>

				{# IMPORTANT Do not remove this hidden total, it is used by JS to calculate cart total #}
				<div class='total-price hidden'>
					{{ "Total" | translate }}: {{ cart.total | money }}
				</div>
			</div>
			<div class="js-visible-on-cart-filled cart__buy-button" {% if cart.items_count == 0 %}style="display:none;"{% endif %}>

				{# Cart page and popup CTA Module #}
				
				{% set cart_total = (settings.cart_minimum_value * 100) %}

				{% if cart_page %}

					{# Cart page CTA and minimum alert: Needs to be present or absence on DOM to work correctly with minimum price feature #}

					{% if cart.checkout_enabled %}
					<input id="go-to-checkout" class="btn btn-primary btn-big btn-block mb-2" type="submit" name="go_to_checkout" value="{{ 'Iniciar Compra' | translate }}"/>
					{% else %}

					{# Cart minium alert #}
					
					<div class="alert alert-warning w-100 mb-2 text-center">
						{{ "El monto mínimo de compra es de {1} sin incluir el costo de envío" | t(cart_total | money) }}
					</div>
					{% endif %}
				{% else %}

					{# Cart popup CTA and minimum alert #}

					<div class="js-ajax-cart-submit mb-3" {{ not cart.checkout_enabled ? 'style="display:none"' }} id="ajax-cart-submit-div" >
						<input class="btn btn-primary btn-big btn-block" type="submit" name="go_to_checkout" value="{{ 'Iniciar Compra' | translate }}" data-component="cart.checkout-button"/>
						</div>
						<div class="js-ajax-cart-minimum alert alert-warning mb-2 text-center" {{ cart.checkout_enabled ? 'style="display:none"' }} id="ajax-cart-minumum-div">
						{{ "El monto mínimo de compra es de {1} sin incluir el costo de envío" | t(cart_total | money) }}
					</div>

					<input type="hidden" id="ajax-cart-minimum-value" value="{{ cart_total }}"/>
				{% endif %}

				{# Cart panel continue buying link #}

				{% if settings.continue_buying %}
					<div class="text-center w-100 {% if not cart_page %}mb-md-2{% endif %} pb-3">
					<a href="{% if cart_page %}{{ store.products_url }}{% else %}#{% endif %}" class="{% if not cart_page %}js-modal-close js-fullscreen-modal-close{% endif %} font-small">{{ 'Ver más productos' | translate }}</a>
					</div>
				{% endif %}
				</div>
		{% endblock %}
	{% endembed %}

	{% if settings.add_to_cart_recommendations %}

		{# Recommended products on add to cart #}

		{% embed "snipplets/modal.tpl" with{modal_id: 'related-products-notification', modal_class: 'bottom modal-overflow-none modal-bottom-sheet h-auto', modal_position: 'bottom', modal_transition: 'slide', modal_footer: false, modal_width: 'centered-md modal-centered-md-600px', modal_body_class: 'modal-scrollable'} %}
			{% block modal_head %}
				{% block page_header_text %}{{ '¡Agregado al carrito!' | translate }}{% endblock page_header_text %}
			{% endblock %}
			{% block modal_body %}

				{# Product added info #}

				{% include "snipplets/notification-cart.tpl" with {related_products: true} %}
				
				<div class="divider mb-3"></div>

				{# Product added recommendations #}

				<div class="js-related-products-notification-container" style="display: none"></div>

			{% endblock %}
		{% endembed %}
	{% endif %}
{% endif %}