{# /*============================================================================
  #Page header
==============================================================================*/

#Properties

#Title

#Breadcrumbs

#}

{% set padding = padding ?? true %}
{% set container = container ?? true %}
{% set page_header_title_default_classes = template == 'product' ? 'h1-md font-weight-bold' : '--h1 font-weight-bold' %}

{% if container %}
	<div class="container">
{% endif %}
		<section class="page-header {% if padding %}py-4{% endif %} {{ page_header_class }}" data-store="page-title">
				<div class="d-none d-md-block">
					{% include 'snipplets/breadcrumbs.tpl' %}
				</div>
				<h1 class="h2 {{ page_header_title_default_classes }} {{ page_header_title_class }}" {% if template == "product" %}data-store="product-name-{{ product.id }}"{% endif %}>{% block page_header_text %}{% endblock %}</h1>
		</section>
{% if container %}
	</div>
{% endif %}
