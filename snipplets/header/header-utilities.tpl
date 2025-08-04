{% if use_menu %}
	<span class="utilities-container d-inline-block">
		<a href="#" class="js-modal-open utilities-item btn btn-utility pl-0" data-toggle="#nav-hamburger" aria-label="{{ 'Menú' | translate }}" data-component="menu-button">
			<svg class="icon-inline utilities-icon align-bottom"><use xlink:href="#bars"/></svg>
		</a>
	</span>
{% elseif use_account %}
	<span class="utilities-container {% if header_desktop %}d-none d-md-inline-block mr-4{% endif %}">
		{% if icon_only %}
			<a href="{% if not customer %}{{ store.customer_login_url }}{% else %}{{ store.customer_home_url }}{% endif %}" class="btn btn-utility">
				<svg class="icon-inline utilities-icon" viewBox="0 0 15 20" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 0C6.17392 0 4.90215 0.526784 3.96447 1.46447C3.02678 2.40215 2.5 3.67392 2.5 5C2.5 6.32608 3.02678 7.59785 3.96447 8.53553C4.90215 9.47322 6.17392 10 7.5 10C8.82608 10 10.0979 9.47322 11.0355 8.53553C11.9732 7.59785 12.5 6.32608 12.5 5C12.5 3.67392 11.9732 2.40215 11.0355 1.46447C10.0979 0.526784 8.82608 0 7.5 0ZM5 11.25C3.67392 11.25 2.40215 11.7768 1.46447 12.7145C0.526784 13.6521 0 14.9239 0 16.25V17.5C0 18.163 0.263392 18.7989 0.732233 19.2678C1.20107 19.7366 1.83696 20 2.5 20H12.5C13.163 20 13.7989 19.7366 14.2678 19.2678C14.7366 18.7989 15 18.163 15 17.5V16.25C15 14.9239 14.4732 13.6521 13.5355 12.7145C12.5979 11.7768 11.3261 11.25 10 11.25H5Z" fill="#E85D46"/>
				</svg>
			</a>
		{% else %}
			<div class="row no-gutters align-items-center">
				<div class="col-auto pr-0">
					<svg class="icon-inline" viewBox="0 0 15 20" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 0C6.17392 0 4.90215 0.526784 3.96447 1.46447C3.02678 2.40215 2.5 3.67392 2.5 5C2.5 6.32608 3.02678 7.59785 3.96447 8.53553C4.90215 9.47322 6.17392 10 7.5 10C8.82608 10 10.0979 9.47322 11.0355 8.53553C11.9732 7.59785 12.5 6.32608 12.5 5C12.5 3.67392 11.9732 2.40215 11.0355 1.46447C10.0979 0.526784 8.82608 0 7.5 0ZM5 11.25C3.67392 11.25 2.40215 11.7768 1.46447 12.7145C0.526784 13.6521 0 14.9239 0 16.25V17.5C0 18.163 0.263392 18.7989 0.732233 19.2678C1.20107 19.7366 1.83696 20 2.5 20H12.5C13.163 20 13.7989 19.7366 14.2678 19.2678C14.7366 18.7989 15 18.163 15 17.5V16.25C15 14.9239 14.4732 13.6521 13.5355 12.7145C12.5979 11.7768 11.3261 11.25 10 11.25H5Z" fill="#E85D46"/>
					</svg>
				</div>
				<div class="col pl-2 text-left font-small">
					{% if not customer %}
						<p class="text m-0">
							{{ "Iniciar sesión" | translate | a_tag(store.customer_login_url, '', 'text-underline') }} 
							{% if 'mandatory' not in store.customer_accounts %}
								{{ 'o' | translate }}
								{{ "Crear cuenta" | translate | a_tag(store.customer_register_url, '', 'text-underline') }}
							{% endif %}
						</p>
					{% else %}
						{% set customer_short_name = customer.name|split(' ')|slice(0, 1)|join %} 
						{{ "¡Hola, {1}!" | t(customer_short_name) | a_tag(store.customer_home_url, '', 'font-weight-bold mr-1') }}
						{% if not header_desktop %}.{% endif %}
						{{ "Cerrar sesión" | translate | a_tag(store.customer_logout_url, '', 'ml-1 text-underline') }}
					{% endif %}
				</div>
			</div>
		{% endif %}
	</span>
{% elseif use_languages %}
	<span class="utilities-container nav-dropdown d-inline-block position-relative">
		<span class="utilities-text align-items-center btn-utility">
			{% for language in languages if language.active %}
				{{ language.country }}
			{% endfor %}
			<svg class="icon-inline ml-1"><use xlink:href="#chevron-down"/></svg>
		</span>
		<div class="nav-dropdown-content desktop-dropdown-small position-absolute">
			{% include "snipplets/navigation/navigation-lang.tpl" with { header: true } %}
		</div>
	</span>
{% elseif use_search %}
	<span class="utilities-container d-inline-block">
		<a href="#" class="js-search-button js-modal-open js-fullscreen-modal-open btn btn-utility utilities-item" data-modal-url="modal-fullscreen-search" data-toggle="#nav-search" aria-label="{{ 'Buscador' | translate }}">
			<svg class="icon-inline align-bottom utilities-icon"><use xlink:href="#search"/></svg>
		</a>
	</span>
{% else %}
	<span class="utilities-container d-inline-block">
		<div id="ajax-cart" class="cart-summary" data-component='cart-button'>
			<a 
				{% if settings.ajax_cart and template != 'cart' %}
					href="#"
					data-toggle="#modal-cart" 
					data-modal-url="modal-fullscreen-cart"
				{% else %}
					href="{{ store.cart_url }}" 
				{% endif %}
				class="{% if settings.ajax_cart and template != 'cart' %}js-modal-open js-fullscreen-modal-open{% endif %} btn btn-utility position-relative pr-0"
				>
				<svg class="icon-inline utilities-icon cart-icon mr-md-1" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M0 0.857143C0 0.629814 0.0903121 0.411797 0.251069 0.251051C0.411825 0.0903058 0.629858 0 0.857203 0H1.49496C2.58075 0 3.23223 0.730286 3.60368 1.40914C3.8517 1.86171 4.03114 2.38629 4.17172 2.86171L4.28601 2.85714H18.5704C19.5191 2.85714 20.2048 3.76457 19.9443 4.67771L17.855 12.0023C17.6676 12.6593 17.2713 13.2373 16.7261 13.6489C16.1808 14.0605 15.5162 14.2833 14.833 14.2834H8.03485C7.34622 14.2835 6.67664 14.0573 6.12903 13.6399C5.58141 13.2224 5.18608 12.6366 5.00378 11.9726L4.13515 8.80457L2.69504 3.94971L2.6939 3.94057C2.5156 3.29257 2.34874 2.68571 2.09958 2.23314C1.8607 1.79314 1.66869 1.71429 1.4961 1.71429H0.857203C0.629858 1.71429 0.411825 1.62398 0.251069 1.46323C0.0903121 1.30249 0 1.08447 0 0.857143ZM7.42909 20C8.03534 20 8.61676 19.7592 9.04545 19.3305C9.47413 18.9019 9.71496 18.3205 9.71496 17.7143C9.71496 17.1081 9.47413 16.5267 9.04545 16.098C8.61676 15.6694 8.03534 15.4286 7.42909 15.4286C6.82284 15.4286 6.24142 15.6694 5.81273 16.098C5.38405 16.5267 5.14322 17.1081 5.14322 17.7143C5.14322 18.3205 5.38405 18.9019 5.81273 19.3305C6.24142 19.7592 6.82284 20 7.42909 20ZM15.4296 20C16.0359 20 16.6173 19.7592 17.046 19.3305C17.4747 18.9019 17.7155 18.3205 17.7155 17.7143C17.7155 17.1081 17.4747 16.5267 17.046 16.098C16.6173 15.6694 16.0359 15.4286 15.4296 15.4286C14.8234 15.4286 14.242 15.6694 13.8133 16.098C13.3846 16.5267 13.1438 17.1081 13.1438 17.7143C13.1438 18.3205 13.3846 18.9019 13.8133 19.3305C14.242 19.7592 14.8234 20 15.4296 20Z" fill="#E85D46"/>
				</svg>

				<span class="js-cart-widget-amount badge">{{ "{1}" | translate(cart.items_count ) }}</span>
			</a>	
		</div>
	</span>
{% endif %}