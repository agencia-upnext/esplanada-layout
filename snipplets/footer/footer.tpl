{% set has_social_network = store.facebook or store.twitter or store.pinterest or store.instagram or store.tiktok or store.youtube %}
{% set has_footer_contact_info = (store.whatsapp or store.phone or store.email or store.address or store.blog) and settings.footer_contact_show %}          

{% set has_footer_menu = settings.footer_menu and settings.footer_menu_show %}
{% set has_footer_menu_secondary = settings.footer_menu_secondary and settings.footer_menu_secondary_show %}
{% set has_footer_about = settings.footer_about_show and (settings.footer_about_title or settings.footer_about_description) %}
{% set has_payment_logos = settings.payments %}
{% set has_shipping_logos = settings.shipping %}
{% set has_shipping_payment_logos = has_payment_logos or has_shipping_logos %}
{% set has_languages = languages | length > 1 and settings.languages_footer %}

{% set has_seal_logos = store.afip or ebit or settings.custom_seal_code or ("seal_img.jpg" | has_custom_image) %}
{% set show_help = not has_products and not has_social_network %}
<footer class="js-footer js-hide-footer-while-scrolling {% if settings.footer_colors %}footer-colors{% endif %} display-when-content-ready overflow-none" data-store="footer">
	{% if template != 'password' %}
		{% if settings.news_show %}
			{% include 'snipplets/newsletter.tpl' with {form_data_store: 'newsletter-form'} %}
		{% endif %}
	{% endif %}
		<div class="container p-4 mb-4">
			<div class="row">
				{% if template != 'password' %}
					{# Foot Nav #}
					{% if has_footer_menu %}
						<div class="{% if settings.footer_menus_toggle %}js-accordion-private-container accordion{% endif %} col-md">
							{% if settings.footer_menus_toggle %}
								<a href="#" class="js-accordion-private-toggle-mobile row align-items-center">
							{% endif %}
								{% if settings.footer_menu_title %}
									<div class="font-big footer-title {% if settings.footer_menus_toggle %}col py-2{% else %}py-2{% endif %}">{{ settings.footer_menu_title }}</div>
								{% endif %}
							{% if settings.footer_menus_toggle %}
									<div class="d-md-none col-auto icon-48px">
										<span class="js-accordion-private-toggle-inactive">
											<svg class="icon-inline icon-lg"><use xlink:href="#plus"/></svg>
										</span>
										<span class="js-accordion-private-toggle-inactive" style="display: none;">
											<svg class="icon-inline icon-lg"><use xlink:href="#minus"/></svg>
										</span>
									</div>
								</a>
								<div class="js-accordion-private-content js-accordion-private-content-mobile">
							{% endif %}
									{% include "snipplets/navigation/navigation-foot.tpl" %}
							{% if settings.footer_menus_toggle %}
								</div>
							{% endif %}
						</div>
					{% endif %}

					
					{# Foot Nav Secondary #}
					{% if has_footer_menu_secondary %}
						<div class="{% if settings.footer_menus_toggle %}js-accordion-private-container accordion{% endif %} col-md">
							{% if settings.footer_menus_toggle %}
								<a href="#" class="js-accordion-private-toggle-mobile row align-items-center">
							{% endif %}
								{% if settings.footer_menu_secondary_title %}
									<div class="font-big footer-title {% if settings.footer_menus_toggle %}col py-2{% else %}py-2{% endif %}">{{ settings.footer_menu_secondary_title }}</div>
								{% endif %}
							{% if settings.footer_menus_toggle %}
									<div class="d-md-none col-auto icon-48px">
										<span class="js-accordion-private-toggle-inactive">
											<svg class="icon-inline icon-lg"><use xlink:href="#plus"/></svg>
										</span>
										<span class="js-accordion-private-toggle-inactive" style="display: none;">
											<svg class="icon-inline icon-lg"><use xlink:href="#minus"/></svg>
										</span>
									</div>
								</a>
								<div class="js-accordion-private-content js-accordion-private-content-mobile">
							{% endif %}
									{% include "snipplets/navigation/navigation-foot-secondary.tpl" %}
							{% if settings.footer_menus_toggle  %}
								</div>
							{% endif %}
						</div>
					{% endif %}

					{# Contact info #}
					{% if has_footer_contact_info %}
						<div class="{% if settings.footer_menus_toggle %}js-accordion-private-container accordion{% endif %} col-md">
							{% if settings.footer_menus_toggle %}
								<a href="#" class="js-accordion-private-toggle-mobile row align-items-center">
							{% endif %}
								{% if settings.footer_contact_title %}
									<div class="font-big footer-title {% if settings.footer_menus_toggle %}col py-2{% else %}py-2{% endif %}">SUPORTE</div>
								{% endif %}
							{% if settings.footer_menus_toggle %}
									<div class="d-md-none col-auto icon-48px">
										<span class="js-accordion-private-toggle-inactive">
											<svg class="icon-inline icon-lg"><use xlink:href="#plus"/></svg>
										</span>
										<span class="js-accordion-private-toggle-inactive" style="display: none;">
											<svg class="icon-inline icon-lg"><use xlink:href="#minus"/></svg>
										</span>
									</div>
								</a>
								<div class="js-accordion-private-content js-accordion-private-content-mobile">
							{% endif %}
									<ul class="list py-2">
										<li class="footer-menu-item">
											<a class="footer-menu-link" href="/sac">Telefone Pós Venda</a>
										</li>
										<li class="footer-menu-item">
											<a class="footer-menu-link" href="https://api.whatsapp.com/send?phone=5511956700386">WhatsApp Assistência Técnica</a>
										</li>
										<li class="footer-menu-item">
											<a class="footer-menu-link" href="https://api.whatsapp.com/send?phone=5511974694935">Compre Pelo WhatsApp</a>
										</li>
										<li class="footer-menu-item">
											<a class="footer-menu-link" href="tel:08007706929">Televendas 0800-7706929</a>
										</li>
									</ul>
							{% if settings.footer_menus_toggle %}
								</div>
							{% endif %}
						</div>
					{% endif %}

					{% if "seal_img.jpg" | has_custom_image or settings.custom_seal_code %}
						<div class="{% if settings.custom_seal_code %}js-accordion-private-container accordion{% endif %} col-md">
							<div class="font-big footer-title {% if settings.footer_menus_toggle %}col py-2{% else %}py-2{% endif %}">
								<a href="#" class="js-accordion-private-toggle-mobile row align-items-center">
									SEGURANÇA
								</a>
							</div>

							<div class="js-accordion-private-content js-accordion-private-content-mobile">
								<ul class="list py-2">
									<li class="footer-menu-item">
										{% if "seal_img.jpg" | has_custom_image %}
											<div class="footer-logo custom-seal">
												{% if settings.seal_url != '' %}
													<a href="{{ settings.seal_url | setting_url }}" target="_blank">
												{% endif %}
													<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-src="{{ "seal_img.jpg" | static_url }}" class="custom-seal-img lazyload" alt="{{ 'Sello de' | translate }} {{ store.name }}"/>
												{% if settings.seal_url != '' %}
													</a>
												{% endif %}
											</div>
										{% endif %}
									</li>
									
									<li class="footer-menu-item">
										{% if settings.custom_seal_code %}
											<div class="custom-seal custom-seal-code">
												{{ settings.custom_seal_code | raw }}
											</div>
										{% endif %}
									</li>
								</ul>
							</div>
						</div>
					{% endif %}
				{% endif %}
				{% if has_social_network %}
					<div class="col-md py-2 text-md-rigt{% if template != 'password' %} text-md-left{% endif %}">
						{% include "snipplets/social/social-links.tpl" %}
					</div>
				{% endif %}
			</div>
		</div>

		{% if template != 'password' and (has_shipping_payment_logos or has_languages or has_seal_logos) %}
			<div class="divider d-none d-md-block m-0"></div>
			<div class="container p-4">
				{% if has_shipping_payment_logos or has_languages %}
					<div class="row align-items-center py-4 mt-4 mb-4">
						{# Logos Payments and Shipping #}

						{% if has_payment_logos %}
							<div class="col-md footer-payments-shipping-logos mb-2 mb-md-0{% if has_languages %} mt-md-1{% endif %}">
								<span class="d-block d-md-inline-block align-middle mb-2 mb-md-1 mr-md-4">{{ "Medios de pago" | translate }}</span>
								<span class="d-inline-block align-middle">
									{{ component('payment-shipping-logos', {'type' : 'payments'}) }}
								</span>
							</div>
						{% endif %}

						{% if has_shipping_logos %}
							<div class="col-md footer-payments-shipping-logos mb-2 mb-md-0{% if has_languages %} mt-md-1{% endif %}">
								<span class="d-block d-md-inline-block align-middle mb-2 mb-md-1 mr-md-2">{{ "Medios de envío" | translate }}</span>
								<span class="d-inline-block align-middle">
									{{ component('payment-shipping-logos', {'type' : 'shipping'}) }}
								</span>
							</div>
						{% endif %}

						{# Language selector #}

						{% if has_languages %}
							<div class="col-md-auto{% if has_shipping_payment_logos %} mt-1 mt-md-0{% endif %}">
								<a href="#" data-toggle="#languages" class="js-modal-open btn-link">
									{{ "Idiomas y monedas" | translate }}
								</a>
								{% embed "snipplets/modal.tpl" with{modal_id: 'languages', modal_class: 'bottom modal-centered-small', modal_position: 'center', modal_transition: 'slide', modal_header_title: true, modal_footer: false, modal_width: 'centered', modal_zindex_top: true} %}
									{% block modal_head %}
										{{ 'Idiomas y monedas' | translate }}
									{% endblock %}
									{% block modal_body %}
										{% include "snipplets/navigation/navigation-lang.tpl" %}
									{% endblock %}
								{% endembed %}
							</div>
						{% endif %}
					</div>
				{% endif %}

				{# AFIP - EBIT - Custom Seal #}
				{% if has_seal_logos %}
					<div class="row text-center">
						<div class="col p-3">
							{% if store.afip or ebit %}
								{% if store.afip %}
									<div class="footer-logo afip seal-afip">
										{{ store.afip | raw }}
									</div>
								{% endif %}
								{% if ebit %}
									<div class="footer-logo ebit seal-ebit">
										{{ ebit }}
									</div>
								{% endif %}
							{% endif %}
						</div>
					</div>
				{% endif %}

			</div>
		{% endif %}

	<div class="js-footer-legal footer-legal">
		<div class="container p-4">
			<div class="row align-items-center text-center text-md-left">
				<div class="col-md">
					<div class="d-inline-block mr-md-2">
						{{ "Copyright {1} - {2}. Todos los derechos reservados." | translate( (store.business_name ? store.business_name : store.name) ~ (store.business_id ? ' - ' ~ store.business_id : ''), "now" | date('Y') ) }}
					</div>

					{{ component('claim-info', {
							container_classes: "d-md-inline-block mt-md-0 mt-3",
							divider_classes: "mx-1 d-none d-md-inline-block",
							text_classes: {text_consumer_defense: 'd-inline-block mb-2 mb-md-0'},
							link_classes: {
								link_consumer_defense: "btn-link",
								link_order_cancellation: "btn-link d-md-inline-block d-block mb-2 mb-md-0 w-100 w-md-auto",
							},
						}) 
					}}
				</div>
				<div class="col-md-auto d-flex align-items-center" style="gap: 0.5rem;">
					{#
					La leyenda que aparece debajo de esta linea de código debe mantenerse
					con las mismas palabras y con su apropiado link a Tienda Nube;
					como especifican nuestros términos de uso: http://www.tiendanube.com/terminos-de-uso .
					Si quieres puedes modificar el estilo y posición de la leyenda para que se adapte a
					tu sitio. Pero debe mantenerse visible para los visitantes y con el link funcional.
					Os créditos que aparece debaixo da linha de código deverá ser mantida com as mesmas
					palavras e com seu link para Nuvem Shop; como especificam nossos Termos de Uso:
					http://www.nuvemshop.com.br/termos-de-uso. Se você quiser poderá alterar o estilo
					e a posição dos créditos para que ele se adque ao seu site. Porém você precisa
					manter visivél e com um link funcionando.
					#}
					<a href="https://agencia.upnext.com.br/" target="_blank">
						{# <img src="https://d2r9epyceweg5n.cloudfront.net/stores/004/909/407/rte/logo-agencia-upnext.png" alt="Agência UpNext" style="margin-top: 10px;"> #}
						<svg width="76" height="23" viewBox="0 0 76 23" fill="none" xmlns="http://www.w3.org/2000/svg">
							<g clip-path="url(#clip0_2550_505)">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M8.68181 15.2328L10.7519 17.3151C11.0036 17.611 11.3602 17.7976 11.7467 17.8355C12.1331 17.8734 12.5192 17.7596 12.8235 17.5182C12.9961 17.3764 13.1354 17.1981 13.2313 16.9962C13.3272 16.7943 13.3773 16.5737 13.3782 16.3502V6.29425C13.4042 6.04654 13.3772 5.79612 13.299 5.55966C13.2208 5.3232 13.0932 5.10611 12.9246 4.92284C12.5201 4.61816 12.065 4.415 11.5609 4.46575H1.5093C1.11469 4.46516 0.735444 4.6188 0.452377 4.89393C0.16931 5.16906 0.00480088 5.54393 -0.00610352 5.93867C-0.002913 6.33114 0.140586 6.7095 0.398415 7.00526L2.62019 9.23993L2.67077 9.29069C2.81135 9.46398 2.98856 9.60395 3.18964 9.70053C3.39073 9.79712 3.6107 9.84791 3.83374 9.84928H7.97391V13.9126C8.02447 14.4206 8.22673 14.9284 8.68181 15.2331V15.2328ZM37.571 16.9597V5.83701C37.5785 5.49491 37.7206 5.16961 37.9666 4.93186C38.2125 4.6941 38.5422 4.56312 38.8841 4.56741H41.8644C42.967 4.55471 44.0315 4.97153 44.8326 5.72979C45.6338 6.48804 46.109 7.52831 46.1578 8.63074V16.96C46.142 17.2993 45.9972 17.6197 45.7531 17.8557C45.509 18.0917 45.184 18.2254 44.8446 18.2296C44.5025 18.2479 44.1671 18.13 43.9115 17.9016C43.656 17.6733 43.5012 17.353 43.4809 17.0107V8.63044C43.4796 8.21454 43.3145 7.81593 43.0213 7.52116C42.7281 7.22638 42.3306 7.05924 41.915 7.05601H40.2479V16.9597C40.2323 17.299 40.0876 17.6196 39.8434 17.8556C39.5993 18.0917 39.2742 18.2253 38.9347 18.2293C38.2283 18.2802 37.6216 17.7214 37.571 16.9597ZM48.2279 14.1662V8.52878C48.2526 7.96311 48.3886 7.40787 48.6281 6.89485C48.8675 6.38183 49.2057 5.92109 49.6232 5.539C50.0408 5.15691 50.5295 4.86096 51.0615 4.66809C51.5935 4.47522 52.1583 4.38922 52.7235 4.415C54.9453 4.51666 56.6629 6.29425 56.8146 8.52878V11.3222C56.7988 11.6615 56.6541 11.9819 56.41 12.2179C56.1659 12.4539 55.8409 12.5877 55.5015 12.5918H50.9553V14.1155C50.9513 14.4292 51.0471 14.7361 51.2289 14.9918C51.4107 15.2474 51.6691 15.4386 51.9666 15.5376C52.2633 15.6592 52.5893 15.6904 52.9036 15.6271C53.218 15.5638 53.5066 15.409 53.7333 15.1821C53.8495 15.0562 53.9902 14.9552 54.1466 14.8854C54.3031 14.8155 54.4721 14.7782 54.6434 14.7757C55.004 14.7804 55.3483 14.9263 55.6026 15.1821C55.73 15.2978 55.8318 15.4389 55.9015 15.5963C55.9712 15.7538 56.0071 15.9241 56.0071 16.0962C56.0071 16.2684 55.9712 16.4387 55.9015 16.5961C55.8318 16.7536 55.73 16.8947 55.6026 17.0104C54.9923 17.5852 54.2297 17.9723 53.4057 18.1254C52.5817 18.2784 51.7311 18.1911 50.9553 17.8738C50.1625 17.6319 49.4688 17.1404 48.9774 16.4724C48.4861 15.8045 48.2232 14.9957 48.2279 14.1662ZM50.8541 8.52878V10.0524H54.0872V8.52878C54.0872 8.09974 53.9169 7.68828 53.6137 7.38491C53.3106 7.08154 52.8994 6.91111 52.4707 6.91111C52.0419 6.91111 51.6308 7.08154 51.3276 7.38491C51.0245 7.68828 50.8541 8.09974 50.8541 8.52878ZM58.0772 16.3502L61.0069 11.2205L58.1783 6.34454C58.0958 6.21191 58.0408 6.06405 58.0165 5.90974C57.9922 5.75542 57.9991 5.5978 58.0369 5.44621C58.0746 5.29462 58.1424 5.15216 58.2361 5.02727C58.3299 4.90239 58.4478 4.79763 58.5828 4.71921C58.6212 4.71386 58.6568 4.69603 58.684 4.66846C58.9928 4.52138 59.3431 4.48656 59.6748 4.56998C60.0064 4.6534 60.2987 4.84984 60.5012 5.12554L62.5223 8.62997L64.5418 5.12554C64.729 4.83104 65.0219 4.61953 65.3602 4.53451C65.6985 4.44949 66.0565 4.49743 66.3606 4.66846C66.6491 4.79739 66.8748 5.03547 66.9882 5.33057C67.1016 5.62566 67.0936 5.95371 66.9658 6.24288C66.9658 6.29379 66.9153 6.34454 66.9153 6.3953L64.0867 11.2713L67.0164 16.4008C67.1015 16.5301 67.1599 16.6752 67.1882 16.8275C67.2166 16.9798 67.2142 17.1362 67.1814 17.2875C67.1486 17.4389 67.0859 17.5822 66.9971 17.709C66.9082 17.8358 66.795 17.9436 66.664 18.0261C66.6441 18.0453 66.6201 18.0599 66.5939 18.0687C66.5676 18.0775 66.5397 18.0802 66.5123 18.0768C66.2076 18.2451 65.8505 18.2915 65.513 18.2066C65.1754 18.1218 64.8826 17.9121 64.6935 17.6198L62.5223 13.9122L60.4001 17.6198C60.2155 17.9168 59.9228 18.1305 59.5838 18.2158C59.2448 18.3011 58.8859 18.2512 58.5828 18.0768C58.294 17.9483 58.0679 17.7104 57.9541 17.4152C57.8403 17.12 57.8483 16.7918 57.9761 16.5024C58.0265 16.465 58.0623 16.4112 58.0772 16.3502ZM68.1778 6.09108C68.1853 5.74896 68.3274 5.42362 68.5733 5.18583C68.8193 4.94804 69.1491 4.81704 69.491 4.82133H70.5023V1.16525C70.5006 0.9919 70.5333 0.819936 70.5986 0.659364C70.6639 0.498793 70.7604 0.352821 70.8826 0.229939C71.0048 0.107057 71.1503 0.0097196 71.3104 -0.0564096C71.4705 -0.122539 71.6422 -0.156139 71.8154 -0.155256C72.1626 -0.148113 72.4934 -0.00649682 72.7383 0.239792C72.9832 0.48608 73.1231 0.817837 73.1286 1.16525V4.82194H74.7436C75.0777 4.82562 75.3968 4.961 75.6318 5.19872C75.8667 5.43643 75.9985 5.75728 75.9985 6.09162C75.9985 6.42596 75.8667 6.74681 75.6318 6.98452C75.3968 7.22223 75.0777 7.35762 74.7436 7.3613H73.1286V14.4209C73.1296 14.8369 73.2947 15.2357 73.5879 15.5305C73.8812 15.8253 74.2789 15.9924 74.6945 15.9953H74.7436C75.0777 15.999 75.3968 16.1344 75.6318 16.3721C75.8667 16.6098 75.9985 16.9307 75.9985 17.265C75.9985 17.5994 75.8667 17.9202 75.6318 18.1579C75.3968 18.3956 75.0777 18.531 74.7436 18.5347C73.6411 18.5473 72.5769 18.1305 71.7759 17.3722C70.975 16.6139 70.5001 15.5736 70.4517 14.4714V7.36068H69.4404C68.7846 7.41144 68.2284 6.80209 68.1778 6.09108Z" fill="white"/>
							<path fill-rule="evenodd" clip-rule="evenodd" d="M16.3585 14.0146V5.68478C16.3568 5.51147 16.3897 5.33956 16.455 5.17904C16.5203 5.01853 16.6169 4.8726 16.7391 4.74975C16.8613 4.62689 17.0066 4.52955 17.1667 4.46337C17.3268 4.3972 17.4984 4.36352 17.6716 4.36427C18.0188 4.37115 18.3498 4.51268 18.5948 4.75903C18.8398 5.00537 18.9796 5.33728 18.9847 5.68478V14.0146C18.9847 14.878 19.7432 15.5383 20.6013 15.5383H22.2684V5.68478C22.2666 5.51143 22.2994 5.33947 22.3647 5.1789C22.43 5.01833 22.5265 4.87235 22.6487 4.74947C22.7709 4.62659 22.9163 4.52925 23.0765 4.46312C23.2366 4.39699 23.4083 4.36339 23.5815 4.36427C23.9287 4.37142 24.2595 4.51303 24.5044 4.75932C24.7493 5.00561 24.8892 5.33737 24.8947 5.68478V16.8073C24.8872 17.1494 24.7451 17.4747 24.4992 17.7125C24.2532 17.9503 23.9235 18.0813 23.5815 18.077H20.6013C19.5017 18.0963 18.4391 17.6803 17.6445 16.9195C16.85 16.1587 16.3877 15.1147 16.3585 14.0146ZM26.9647 21.7343V5.83704C26.9722 5.49495 27.1144 5.16965 27.3603 4.93189C27.6062 4.69414 27.936 4.56316 28.2779 4.56744H31.2076C32.3102 4.55474 33.3746 4.97157 34.1758 5.72982C34.977 6.48807 35.4522 7.52834 35.5009 8.63077V14.0651C35.4689 15.1732 34.9988 16.2234 34.1939 16.9852C33.389 17.747 32.315 18.1581 31.2076 18.1284H29.591V21.7343C29.5805 22.0759 29.4375 22.3999 29.1924 22.6378C28.9472 22.8757 28.6191 23.0086 28.2776 23.0086C27.9361 23.0085 27.6081 22.8753 27.363 22.6374C27.1179 22.3994 26.9751 22.0753 26.9647 21.7337V21.7343ZM31.2581 7.1068H29.6416V15.5884H31.2581C32.1162 15.6392 32.8241 14.9282 32.8747 14.0648V8.63047C32.8747 7.76705 32.1668 7.1068 31.2581 7.1068Z" fill="white"/>
							</g>
							<defs>
							<clipPath id="clip0_2550_505">
							<rect width="76" height="23" fill="white"/>
							</clipPath>
							</defs>
						</svg>
					</a>
					{{ new_powered_by_link }}
				</div>
			</div>
		</div>
	</div>
</footer>