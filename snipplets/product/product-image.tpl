{% if home_main_product %}
	{% set has_multiple_slides = product.media_count > 1 %}
{% else %}
	{% set has_multiple_slides = product.media_count > 1 or product.video_url %}
{% endif %}

<div class="row" data-store="product-image-{{ product.id }}"> 
	{% if has_multiple_slides %}
		<div class="{% if home_main_product %}d-none d-md-block{% else %} order-last order-md-0 d-md-flex align-items-center{% endif %} col-md-auto pr-md-0 mt-3 mt-md-0">
			<div class="product-thumbs-container position-relative">
				<div class="text-center d-none d-md-block">
					<div class="js-swiper-product-thumbs-prev swiper-button-prev swiper-product-thumb-control  svg-icon-text">
						{# <svg class="icon-inline icon-lg icon-flip-vertical"><use xlink:href="#chevron-down"/></svg> #}
						<svg width="16" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M7.05197 0.393921L0.391744 7.0542C0.267546 7.1784 0.169027 7.32576 0.101811 7.48804C0.0345958 7.65031 1.80705e-08 7.82424 1.5976e-08 7.99988C1.1746e-08 8.3546 0.140914 8.69485 0.391744 8.94568C0.515942 9.06988 0.663386 9.16838 0.825659 9.2356C0.987931 9.30281 1.16185 9.3374 1.3375 9.3374C1.69222 9.3374 2.03242 9.19651 2.28325 8.94568L7.99773 3.2179L13.7122 8.94568C13.836 9.07053 13.9834 9.16968 14.1457 9.2373C14.308 9.30493 14.4821 9.3396 14.658 9.3396C14.8338 9.3396 15.0079 9.30493 15.1702 9.2373C15.3326 9.16968 15.4799 9.07053 15.6037 8.94568C15.7286 8.82185 15.8277 8.67453 15.8953 8.51221C15.9629 8.34989 15.9977 8.17572 15.9977 7.99988C15.9977 7.82403 15.9629 7.64999 15.8953 7.48767C15.8277 7.32535 15.7286 7.17803 15.6037 7.0542L8.94348 0.393921C8.81965 0.269071 8.67232 0.169921 8.51 0.102295C8.34768 0.034669 8.17357 -0.000121973 7.99773 -0.000121975C7.82188 -0.000121977 7.64777 0.034669 7.48545 0.102295C7.32313 0.169921 7.1758 0.269071 7.05197 0.393921Z" fill="#EA8B44"/>
						</svg>
					</div>
				</div>
				<div class="js-swiper-product-thumbs swiper-product-thumb"> 
					<div class="swiper-wrapper">
						{% for media in product.media %}
							<div class="swiper-slide w-auto">
								{% include 'snipplets/product/product-image-thumbs.tpl' %}
							</div>
						{% endfor %}
						{% if not home_main_product %}
							{# Video thumb #}
							<div class="swiper-slide w-auto">
								{% include 'snipplets/product/product-video.tpl' with {thumb: true} %}
							</div>
						{% endif %}
					</div>
				</div>
				<div class="text-center d-none d-md-block">
					<div class="js-swiper-product-thumbs-next swiper-button-next swiper-product-thumb-control  svg-icon-text">
						{# <svg class="icon-inline icon-lg"><use xlink:href="#chevron-down"/></svg> #}
						<svg width="16" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M8.94803 9.28552L15.6083 2.62524C15.7325 2.50105 15.831 2.35368 15.8982 2.19141C15.9654 2.02913 16 1.85521 16 1.67957C16 1.32484 15.8591 0.984594 15.6083 0.733765C15.4841 0.609567 15.3366 0.511063 15.1743 0.443848C15.0121 0.376632 14.8381 0.342041 14.6625 0.342041C14.3078 0.342041 13.9676 0.482935 13.7168 0.733765L8.00227 6.46155L2.2878 0.733764C2.16396 0.608913 2.01664 0.509764 1.85432 0.442138C1.692 0.374512 1.51789 0.339843 1.34204 0.339843C1.1662 0.339843 0.992091 0.374512 0.829769 0.442138C0.667447 0.509764 0.520123 0.608913 0.396292 0.733764C0.271441 0.857595 0.172342 1.00491 0.104716 1.16724C0.0370903 1.32956 0.00227351 1.50372 0.0022735 1.67956C0.00227349 1.85541 0.0370902 2.02945 0.104716 2.19177C0.172342 2.35409 0.271441 2.50141 0.396292 2.62524L7.05652 9.28552C7.18035 9.41037 7.32768 9.50952 7.49 9.57715C7.65232 9.64477 7.82643 9.67957 8.00227 9.67957C8.17812 9.67957 8.35222 9.64477 8.51455 9.57715C8.67687 9.50952 8.82419 9.41037 8.94803 9.28552Z" fill="#EA8B44"/>
						</svg>
					</div>
				</div>
			</div>
		</div>
	{% endif %}
	{% if product.media_count > 0 %}
		<div class="col-md {% if not has_multiple_slides %}product-with-one-image pr-md-3{% else %}p-0 px-md-3{% endif %}">
			<div class="js-swiper-product swiper-container product-detail-slider" style="visibility:hidden; height:0;" data-product-images-amount="{{ product.media_count }}">
                {% include 'snipplets/labels.tpl' with {product_detail: true, on_product_image: true} %}
				<div class="swiper-wrapper">
					{% for media in product.media %}
						{% if media.isImage %}
							<div class="js-product-slide w-100 swiper-slide product-slide{% if home_main_product %}-small{% endif %} slider-slide" data-image="{{media.id}}" data-image-position="{{loop.index0}}">
								{% if home_main_product %}
									<div class="js-product-slide-link d-block position-relative" style="padding-bottom: {{ media.dimensions['height'] / media.dimensions['width'] * 100}}%;">
								{% else %}
									<a href="{{ media | product_image_url('original') }}" data-fancybox="product-gallery" class="js-product-slide-link d-block position-relative" style="padding-bottom: {{ media.dimensions['height'] / media.dimensions['width'] * 100}}%;">
								{% endif %}
									<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{  media | product_image_url('large') }} 480w, {{  media | product_image_url('huge') }} 640w, {{  media | product_image_url('original') }} 1024w' data-sizes="auto" class="js-product-slide-img product-slider-image img-absolute img-absolute-centered lazyautosizes lazyload" {% if media.alt %}alt="{{media.alt}}"{% endif %} />
									<img src="{{ media | product_image_url('tiny') }}" class="js-product-slide-img product-slider-image img-absolute img-absolute-centered blur-up" {% if media.alt %}alt="{{media.alt}}"{% endif %} />
								{% if home_main_product %}
									</div>
								{% else %}
									</a>
								{% endif %}
							</div>
						{% else %}
							{% include 'snipplets/product/product-video.tpl' with {video_id: media.next_video, product_native_video: true, home_main_product: home_main_product} %}
						{% endif %}
					{% endfor %}
					{% if not home_main_product %}
						{% include 'snipplets/product/product-video.tpl' with {video_id: 'yt'} %}
					{% endif %}
				</div>
			</div>
			{% snipplet 'placeholders/product-detail-image-placeholder.tpl' %}
			{% if has_multiple_slides and home_main_product %}
				<div class="js-swiper-product-pagination swiper-pagination position-relative pt-3 pb-1 d-md-none"></div>
			{% endif %}
		</div>
	{% endif %}
</div>