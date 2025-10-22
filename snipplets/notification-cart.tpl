{% set notification_without_recommendations_classes = 'js-alert-added-to-cart notification-floating notification-cart-container notification-hidden notification-fixed position-absolute' %}
{% set notification_wrapper_classes = 
	related_products ? 'row' 
	: not related_products and not settings.head_fix_desktop ? notification_without_recommendations_classes ~ ' position-fixed-md' 
	: notification_without_recommendations_classes 
%}

<div class="{{ notification_wrapper_classes }}" {% if not related_products %}style="display: none;"{% endif %}>
	<div class="{% if related_products %}col-12 col-md mb-3 mb-md-0{% else %}notification notification-primary notification-cart{% endif %}">
		{% if not related_products %}
			<div class="js-cart-notification-close notification-close mt-2 mr-1">
				<svg class="icon-inline icon-lg notification-icon"><use xlink:href="#times"/></svg>
			</div>
		{% endif %}
		<div class="js-cart-notification-item row no-gutters" data-store="cart-notification-item">
			<div class="col-auto pr-0 notification-img">
				<img src="" class="js-cart-notification-item-img img-absolute-centered-vertically" />
			</div>
			<div class="col text-left pl-2">
				<div class="mb-1 mr-4">
					<span class="js-cart-notification-item-name"></span>
					<span class="js-cart-notification-item-variant-container" style="display: none;">
						(<span class="js-cart-notification-item-variant"></span>)
					</span>
				</div>
				<div class="mb-1">
					<span class="js-cart-notification-item-quantity"></span>
					<span> x </span>
					<span class="js-cart-notification-item-price"></span>
				</div>
				{% if not related_products %}
					<div class="d-flex py-2" style="gap: 10px;">
						<svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M8.33333 17.5C7.18056 17.5 6.09722 17.2812 5.08333 16.8438C4.06944 16.4062 3.1875 15.8125 2.4375 15.0625C1.6875 14.3125 1.09375 13.4306 0.65625 12.4167C0.21875 11.4028 0 10.3194 0 9.16667C0 8.01389 0.21875 6.93056 0.65625 5.91667C1.09375 4.90278 1.6875 4.02083 2.4375 3.27083C3.1875 2.52083 4.06944 1.92708 5.08333 1.48958C6.09722 1.05208 7.18056 0.833333 8.33333 0.833333C8.93056 0.833333 9.50694 0.892361 10.0625 1.01042C10.6181 1.12847 11.1528 1.29861 11.6667 1.52083V3.39583C11.1806 3.11806 10.6563 2.89931 10.0938 2.73958C9.53125 2.57986 8.94444 2.5 8.33333 2.5C6.48611 2.5 4.91319 3.14931 3.61458 4.44792C2.31597 5.74653 1.66667 7.31944 1.66667 9.16667C1.66667 11.0139 2.31597 12.5868 3.61458 13.8854C4.91319 15.184 6.48611 15.8333 8.33333 15.8333C10.1806 15.8333 11.7535 15.184 13.0521 13.8854C14.3507 12.5868 15 11.0139 15 9.16667C15 8.72222 14.9549 8.29167 14.8646 7.875C14.7743 7.45833 14.6528 7.05556 14.5 6.66667H16.2917C16.4167 7.06944 16.5104 7.47569 16.5729 7.88542C16.6354 8.29514 16.6667 8.72222 16.6667 9.16667C16.6667 10.3194 16.4479 11.4028 16.0104 12.4167C15.5729 13.4306 14.9792 14.3125 14.2292 15.0625C13.4792 15.8125 12.5972 16.4062 11.5833 16.8438C10.5694 17.2812 9.48611 17.5 8.33333 17.5ZM15 5V3.33333H13.3333V1.66667H15V0H16.6667V1.66667H18.3333V3.33333H16.6667V5H15ZM11.25 8.33333C11.5972 8.33333 11.8924 8.21181 12.1354 7.96875C12.3785 7.72569 12.5 7.43056 12.5 7.08333C12.5 6.73611 12.3785 6.44097 12.1354 6.19792C11.8924 5.95486 11.5972 5.83333 11.25 5.83333C10.9028 5.83333 10.6076 5.95486 10.3646 6.19792C10.1215 6.44097 10 6.73611 10 7.08333C10 7.43056 10.1215 7.72569 10.3646 7.96875C10.6076 8.21181 10.9028 8.33333 11.25 8.33333ZM5.41667 8.33333C5.76389 8.33333 6.05903 8.21181 6.30208 7.96875C6.54514 7.72569 6.66667 7.43056 6.66667 7.08333C6.66667 6.73611 6.54514 6.44097 6.30208 6.19792C6.05903 5.95486 5.76389 5.83333 5.41667 5.83333C5.06944 5.83333 4.77431 5.95486 4.53125 6.19792C4.28819 6.44097 4.16667 6.73611 4.16667 7.08333C4.16667 7.43056 4.28819 7.72569 4.53125 7.96875C4.77431 8.21181 5.06944 8.33333 5.41667 8.33333ZM8.33333 13.75C9.27778 13.75 10.1354 13.4826 10.9063 12.9479C11.6771 12.4132 12.2361 11.7083 12.5833 10.8333H4.08333C4.43056 11.7083 4.98958 12.4132 5.76042 12.9479C6.53125 13.4826 7.38889 13.75 8.33333 13.75Z" fill="white"/>
						</svg>
						<strong>{{ '¡Agregado al carrito!' | translate }}</strong>
					</div>
				{% endif %}
			</div>
		</div>

		{% if not related_products %}
			<div class="col text-center px-0">
				<form action="{{ store.cart_url }}" method="post" class="js-ajax-cart-panel">
					<input type="submit" class="btn btn-primary btn-big btn-block mb-2" name="go_to_checkout" value="{{ 'Iniciar Compra' | translate }}" data-component="cart.checkout-button"/>
				</form>
			</div>
		{% endif %}
	</div>
	{% if related_products %}
		<div class="col-12 col-md-auto">
			<div class="mb-3">
				<div class="row text-primary h5 h6-md mb-3">
					<span class="col-auto text-left">
						<strong>{{ "Total" | translate }}</strong> 
						(<span class="js-cart-widget-amount">
							{{ "{1}" | translate(cart.items_count ) }} 
						</span>
						<span class="js-cart-counts-plural" style="display: none;">
							{{ 'productos' | translate }}):
						</span>
						<span class="js-cart-counts-singular" style="display: none;">
							{{ 'producto' | translate }}):
						</span>
					</span>
					<strong class="js-cart-total col text-right">{{ cart.total | money }}</strong>
				</div>
			</div>
			<a href="#" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart" class="js-modal-close js-modal-open js-fullscreen-modal-open btn btn-primary btn-big d-block">{{ 'Ver carrito' | translate }}</a>
		</div>
	{% endif %}
</div>