{% if infinite_scroll %}
	{% if pages.current == 1 and not pages.is_last %}
		<div class="js-load-more text-center my-4">
			<a class="btn btn-default d-inline-block">
				{{ 'Mostrar más productos' | t }}
				<span class="js-load-more-spinner ml-2" style="display:none;">
					<svg class="icon-inline icon-spin"><use xlink:href="#spinner-third"/></svg>
				</span>
			</a>
		</div>
		<div id="js-infinite-scroll-spinner" class="my-4 text-center w-100" style="display:none">
			<svg class="icon-inline icon-30px svg-icon-text icon-spin"><use xlink:href="#spinner-third"/></svg>
		</div>
	{% endif %}
{% else %}
	<div class="row justify-content-center align-items-center mt-5">
		{% if pages.numbers %}
		{% set currentPage = pages.numbers | filter(p => p.selected) | first %}
		{% set currentNumber = currentPage.number %}
		{% set totalPages = pages.amount %}

		<div class="pagination d-flex align-items-center gap-2">
			<a {% if pages.previous %}href="{{ pages.previous }}"{% endif %} class="{% if not pages.previous %}d-none{% endif %}">
				<svg class="icon-inline icon-flip-horizontal"><use xlink:href="#chevron"/></svg>
			</a>

			{% set showedFirst = false %}
			{% for page in pages.numbers %}
				{% if page.number == 1 %}
					{% if page.selected %}
						<span class="current-page fw-bold">{{ page.number }}</span>
					{% else %}
						<a href="{{page.url}}" class="page-link">{{ page.number }}</a>
					{% endif %}
					{% set showedFirst = true %}
				{% endif %}
			{% endfor %}

			{% if currentNumber > 4 %}
				<span class="dots">…</span>
			{% endif %}

			{% for page in pages.numbers %}
				{% if page.number > 1 and page.number < totalPages %}
					{% if page.number >= currentNumber - 2 and page.number <= currentNumber + 2 %}
						{% if not (page.number == 1 or page.number == totalPages) %}
							{% if page.selected %}
								<span class="current-page fw-bold">{{ page.number }}</span>
							{% else %}
								<a href="{{page.url}}" class="page-link">{{ page.number }}</a>
							{% endif %}
						{% endif %}
					{% endif %}
				{% endif %}
			{% endfor %}

			{# Reticências antes da última página #}
			{% if currentNumber < totalPages - 3 %}
				<span class="dots">…</span>
			{% endif %}

			{# Última página #}
			{% set showedLast = false %}
			{% for page in pages.numbers %}
				{% if page.number == totalPages %}
					{% if page.selected %}
						<span class="current-page fw-bold">{{ page.number }}</span>
					{% else %}
						<a href="{{ page.url }}" class="page-link">{{ page.number }}</a>
					{% endif %}
					{% set showedLast = true %}
				{% endif %}
			{% endfor %}

			<a {% if pages.next %}href="{{ pages.next }}"{% endif %} class="{% if not pages.next %}d-none{% endif %}">
				<svg class="icon-inline"><use xlink:href="#chevron"/></svg>
			</a>
		</div>
	{% endif %}

	</div>
{% endif %}