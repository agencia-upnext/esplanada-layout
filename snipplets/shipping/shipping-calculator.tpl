{% if product_detail %}
	{% set cart_zipcode = false %}
{% else %}
	{% set cart_zipcode = cart.shipping_zipcode %}
{% endif %}

<div class="">
    <span class="js-accordion-private-toggle py-2 mb-2 row align-items-center">
        <div class="col">
            <div class="m-0 d-flex align-items-center" style="gap: 0.5rem">
				<svg width="17" height="12" viewBox="0 0 17 12" fill="none" xmlns="http://www.w3.org/2000/svg">
				<g clip-path="url(#clip0_2661_49)">
				<path d="M16.7724 5.55447L15.4468 2.90838L15.4286 2.88025C15.2966 2.67666 15.1178 2.50973 14.908 2.39427C14.6982 2.27881 14.464 2.21839 14.226 2.21838H12.0042L12.0801 1.81549C12.0971 1.72797 12.1032 1.63858 12.0983 1.54947C12.0746 1.17256 11.9124 0.819053 11.6444 0.56074C11.3765 0.302427 11.023 0.158679 10.6558 0.158691H2.61887C2.24969 0.158685 1.89451 0.303985 1.62619 0.564783C1.35787 0.82558 1.19676 1.1821 1.17592 1.56119C1.17592 1.57596 1.17455 1.58463 1.17387 1.59072C1.17319 1.59682 1.17387 1.59588 1.17387 1.59588L0.0230666 8.58822C0.0098909 8.66556 0.0052279 8.74418 0.00916575 8.8226C0.0299162 9.18967 0.18248 9.53573 0.437265 9.79366C0.69205 10.0516 1.0309 10.203 1.38808 10.2185C1.64148 11.1525 2.46596 11.8413 3.45497 11.8413C4.44398 11.8413 5.26435 11.1556 5.52004 10.2242H8.8699C9.12559 11.1549 9.94847 11.8413 10.935 11.8413C11.9215 11.8413 12.7444 11.1556 13 10.2242H14.3831C14.9188 10.2242 15.367 10.0664 15.7248 9.77205C16.0726 9.48611 16.2932 9.10596 16.4438 8.73025C16.5944 8.35455 16.6881 7.94979 16.7628 7.58018C16.7934 7.4276 16.8193 7.2865 16.844 7.15314C16.8834 6.94221 16.9192 6.74814 16.9634 6.55666C16.9899 6.44741 16.9992 6.3345 16.9912 6.22221C16.9713 5.98483 16.8962 5.75584 16.7724 5.55447ZM11.7788 3.41838H14.226C14.2679 3.41839 14.3092 3.42808 14.3469 3.44675C14.3846 3.46541 14.4178 3.49256 14.4439 3.52619L15.4217 5.47807H11.3914L11.7788 3.41838ZM3.45497 10.6404C3.25951 10.6403 3.06847 10.5805 2.90603 10.4687C2.74358 10.3569 2.61701 10.1981 2.54232 10.0123C2.46764 9.82654 2.44819 9.62216 2.48644 9.42502C2.52469 9.22787 2.61891 9.04682 2.75721 8.90475C2.8955 8.76268 3.07164 8.66598 3.26337 8.62686C3.4551 8.58775 3.6538 8.60799 3.83434 8.68502C4.01489 8.76205 4.16917 8.8924 4.27768 9.05961C4.3862 9.22682 4.44407 9.42336 4.44398 9.62439C4.44392 9.7579 4.41829 9.89009 4.36855 10.0134C4.31881 10.1367 4.24594 10.2488 4.1541 10.3431C4.06226 10.4375 3.95325 10.5123 3.83329 10.5633C3.71333 10.6143 3.58478 10.6405 3.45497 10.6404ZM3.45497 7.40768C2.47234 7.40768 1.65265 8.08736 1.39332 9.01268C1.33755 9.00094 1.28668 8.97172 1.24771 8.92904C1.20874 8.88636 1.18358 8.8323 1.17569 8.77432L2.32468 1.7951C2.33321 1.7399 2.33884 1.68428 2.34154 1.62846C2.34577 1.5557 2.37681 1.48735 2.42834 1.43731C2.47987 1.38728 2.54801 1.35933 2.61887 1.35916H10.6558C10.7226 1.35919 10.7872 1.38388 10.8378 1.42874C10.8884 1.47361 10.9217 1.53566 10.9316 1.60361L9.77437 7.76158C9.3328 8.05462 9.01088 8.50385 8.86945 9.02439H5.51958C5.26435 8.09393 4.44147 7.40814 3.45497 7.40814V7.40768ZM10.9345 10.6404C10.739 10.6404 10.548 10.5808 10.3854 10.4691C10.2229 10.3574 10.0962 10.1987 10.0214 10.0129C9.94662 9.82718 9.92705 9.6228 9.96518 9.42562C10.0033 9.22844 10.0974 9.04732 10.2357 8.90516C10.3739 8.763 10.55 8.66619 10.7417 8.62697C10.9334 8.58775 11.1321 8.60788 11.3127 8.68482C11.4933 8.76175 11.6477 8.89204 11.7563 9.0592C11.8649 9.22636 11.9228 9.42288 11.9228 9.62393C11.9228 9.89351 11.8187 10.1521 11.6334 10.3427C11.448 10.5333 11.1966 10.6404 10.9345 10.6404ZM15.6884 6.97174C15.6656 7.09947 15.6414 7.22416 15.6184 7.33924C15.5482 7.6908 15.4714 8.0065 15.3645 8.27322C15.2577 8.53994 15.1367 8.71994 14.9958 8.83572C14.8662 8.94236 14.6823 9.0251 14.3826 9.0251H12.9996C12.8773 8.57772 12.6207 8.1815 12.2665 7.89298C11.9123 7.60447 11.4785 7.43839 11.027 7.41846L11.1665 6.67807H15.7437C15.7241 6.7758 15.7066 6.87471 15.6884 6.97174Z" fill="black"/>
				</g>
				<defs>
				<clipPath id="clip0_2661_49">
				<rect width="17" height="12" fill="white"/>
				</clipPath>
				</defs>
				</svg>
            	Calcular frete e prazo de entrega
            </div>
        </div>
    </span>
    <div class="js-accordion-private-content">
    	<div data-store="shipping-calculator">
			<div class="js-shipping-calculator-head shipping-calculator-head position-relative transition-soft {% if cart_zipcode %}with-zip{% else %}with-form{% endif %}">
				<div class="js-shipping-calculator-with-zipcode {% if cart_zipcode %}js-cart-saved-zipcode transition-up-active{% endif %} mt-1 w-100 transition-up position-absolute">
					<div class="font-small">
						<span>
							<span>{{ "Entregas para el CP:" | translate }}</span>
							<strong class="js-shipping-calculator-current-zip">{{ cart_zipcode }}</strong>
						</span>
						<a class="js-shipping-calculator-change-zipcode btn btn-link font-small ml-2" href="#">{{ "Cambiar CP" | translate }}</a>
					</div>
				</div>

				<div class="js-shipping-calculator-form shipping-calculator-form transition-up position-absolute w-100">

					{# Shipping calculator input #}

					{% embed "snipplets/forms/form-input.tpl" with{type_tel: true, input_value: cart_zipcode, input_name: 'zipcode', input_custom_class: 'js-shipping-input d-block', input_placeholder: "Tu código postal" | translate, input_aria_label: 'Tu código postal' | translate, input_label: false, input_append_content: true, input_group_custom_class: 'mb-3'} %}
						{% block input_prepend_content %}
							<div class="position-relative form-row m-0">
								<div class="col p-0">
						{% endblock input_prepend_content %}
						{% block input_append_content %}
								</div>
								<div class="col-auto pl-2 pr-0">
									<div class="js-calculate-shipping btn btn-secondary align-item-middle" aria-label="{{ 'Calcular envío' | translate }}">	
										<span class="js-calculate-shipping-wording d-inline-block">
											{{ 'Calcular' | translate }}
										</span>
										<span class="loading ml-1" style="display: none;">
											<svg class="icon-inline icon-spin icon-md ml-2"><use xlink:href="#spinner-third"/></svg>
										</span>
									</div>
								</div>
							</div>
						{% endblock input_append_content %}
						{% block input_form_alert %}
						{% set zipcode_help_countries = ['BR', 'AR', 'MX'] %}
						{% if store.country in zipcode_help_countries %}
							{% set zipcode_help_ar = 'https://www.correoargentino.com.ar/formularios/cpa' %}
							{% set zipcode_help_br = 'http://www.buscacep.correios.com.br/sistemas/buscacep/' %}
							{% set zipcode_help_mx = 'https://www.correosdemexico.gob.mx/SSLServicios/ConsultaCP/Descarga.aspx' %}
							<a class="btn-link font-small ml-1 mt-2 mb-2 d-inline-block {% if product_detail %} js-shipping-zipcode-help {% endif %}" href="{% if store.country == 'AR' %}{{ zipcode_help_ar }}{% elseif store.country == 'BR' %}{{ zipcode_help_br }}{% elseif store.country == 'MX' %}{{ zipcode_help_mx }}{% endif %}" target="_blank">{{ "No sé mi código postal" | translate }}</a>
						{% endif %}
						<div class="js-ship-calculator-error invalid-zipcode alert alert-danger mt-1" style="display: none;">
							
							{# Specific error message considering if store has multiple languages #}

							{% for language in languages %}
								{% if language.active %}
									{% if languages | length > 1 %}
										{% set wrong_zipcode_wording = ' para ' | translate ~ language.country_name ~ '. Podés intentar con otro o' | translate %}
									{% else %}
										{% set wrong_zipcode_wording = '. ¿Está bien escrito?' | translate %}
									{% endif %}
									{{ "No encontramos este código postal{1}" | translate(wrong_zipcode_wording) }}

									{% if languages | length > 1 %}
										<a href="#" data-toggle="#{% if product_detail %}product{% else %}cart{% endif %}-shipping-country" class="js-modal-open js-open-over-modal btn-link text-lowercase font-small">
											{{ 'cambiar tu país de entrega' | translate }}
										</a>
									{% endif %}
								{% endif %}
							{% endfor %}
						</div>
						<div class="js-ship-calculator-error js-ship-calculator-common-error alert alert-danger" style="display: none;">{{ "Ocurrió un error al calcular el envío. Por favor intentá de nuevo en unos segundos." | translate }}</div>
						<div class="js-ship-calculator-error js-ship-calculator-external-error alert alert-danger" style="display: none;">{{ "El calculo falló por un problema con el medio de envío. Por favor intentá de nuevo en unos segundos." | translate }}</div>
						{% endblock input_form_alert %}
						{% block input_add_on %}
							{% if shipping_calculator_variant %}
								<input type="hidden" name="variant_id" id="shipping-variant-id" value="{{ shipping_calculator_variant.id }}">
							{% endif %}
						{% endblock input_add_on %}
					{% endembed %}
				</div>
			</div>
			<div class="js-shipping-calculator-spinner pt-3 pb-4" style="display: none;">
				{% include "snipplets/placeholders/shipping-placeholder.tpl"%}
			</div>
			<div class="js-shipping-calculator-response transition-soft {% if product_detail %}list {% else %} radio-buttons-group{% endif %}" style="display: none;"></div>
		</div>
    </div>
</div>

{# Shipping country modal #}

{% if languages | length > 1 %}

	{% if product_detail %}
		{% set country_modal_id = 'product-shipping-country' %}
	{% else %}
		{% set country_modal_id = 'cart-shipping-country' %}
	{% endif %}

	{% embed "snipplets/modal.tpl" with{modal_id: country_modal_id, modal_class: 'bottom modal-centered-small js-modal-shipping-country', modal_position: 'center', modal_position_desktop: 'bottom', modal_transition: 'slide', modal_header_title: true, modal_footer: true, modal_width: 'centered', modal_zindex_top: true, modal_mobile_full_screen: false} %}
		{% block modal_head %}
			{{ 'País de entrega' | translate }}
		{% endblock %}
		{% block modal_body %}
			{% embed "snipplets/forms/form-select.tpl" with{select_label: true, select_label_name: 'País donde entregaremos tu compra' | translate, select_aria_label: 'País donde entregaremos tu compra' | translate, select_custom_class: 'js-country-select' } %}
				{% block select_options %}
					{% for language in languages %}
						<option value="{{ language.country }}" data-country-url="{{ language.url }}" {% if language.active %}selected{% endif %}>{{ language.country_name }}</option>
					{% endfor %}
				{% endblock select_options%}
			{% endembed %}
		{% endblock %}
		{% block modal_foot %}
			<a href="#" class="js-save-shipping-country btn btn-primary d-inline-block">{{ 'Aplicar' | translate }}</a>
		{% endblock %}
	{% endembed %}
{% endif %}
