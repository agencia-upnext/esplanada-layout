{% set has_filters_available = products and has_filters_enabled and (filter_categories is not empty or product_filters is not empty) %}

{# Only remove this if you want to take away the theme onboarding advices #}
{% set show_help = not has_products %}

{% if settings.pagination == 'infinite' %}
	{% if settings.grid_columns_desktop == '5' %}
		{% paginate by 15 %}
	{% else %}
		{% paginate by 12 %}
	{% endif %}
{% else %}
	{% if settings.grid_columns_desktop == '5' %}
		{% paginate by 50 %}
	{% else %}
		{% paginate by 48 %}
	{% endif %}
{% endif %}

{% if not show_help %}

{% set category_banner = (category.images is not empty) or ("banner-products.jpg" | has_custom_image) %}
{% set has_category_description_without_banner = not category_banner and category.description %}

{% if category_banner %}
    {% include 'snipplets/category-banner.tpl' %}
{% endif %}

{% if category.description or not category_banner %}
	<div class="container">
		{% set page_header_padding = category.description ? false : true %}
		{% set page_header_classes = category.description ? 'pt-4 pb-2 pt-md-4 pb-md-2' %}
		{% if not category_banner %}
			{% embed "snipplets/page-header.tpl" with {container: false, padding: page_header_padding, page_header_class: page_header_classes} %}
			    {% block page_header_text %}{{ category.name }}{% endblock page_header_text %}
			{% endembed %}
		{% endif %}
	</div>
{% endif %}

<div class="sub-categories container mx-auto mt-0">
    <div class="sub-categories-items">
        {% if category.parent %}
            <a class="item-subcategory__back-button d-block d-md-none" href="{{ category.parent.url }}">
                <svg width="11" height="12" viewBox="0 0 11 12" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-right: 5px; vertical-align: middle;">
                    <path d="M9.53333 12V4.94118H2.805L5.445 7.48235L4.41833 8.48824L0 4.23529L4.4 0L5.445 1.00588L2.805 3.52941H11V12H9.53333Z" fill="#E8604A"/>
                </svg>
                Voltar
            </a>
        {% endif %}

        {% for subcategory in category.subcategories %}
            <a class="item-subcategory" href="{{ subcategory.url }}">
                {{ subcategory.name }}
            </a>
        {% endfor %}
    </div>
</div>

{% include 'snipplets/grid/filters-modals.tpl' %}

<section class="category-body {% if settings.filters_desktop_modal %}pt-md-2{% endif %}" data-store="category-grid-{{ category.id }}">
	<div class="container mt-3 mb-5">
		<div class="d-flex">
			{% include 'snipplets/grid/filters-sidebar.tpl' %}
			<div class="product-list">
				{% include 'snipplets/grid/products-list.tpl' %}
				{% if category.description %}
					<div class="category-description-container">
						<div class="description-content">
							{{ category.description }}
						</div>
						<button class="toggle-description-btn"
								data-text-more="Veja mais"
								data-text-less="Ver menos">
							Veja mais
						</button>
					</div>
				{% endif %}
			</div>
		</div>
	</div>
</section>
{% elseif show_help %}
	{# Category Placeholder #}
	{% include 'snipplets/defaults/show_help_category.tpl' %}
{% endif %}