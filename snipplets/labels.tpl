{% if product.compare_at_price > product.price %}
{% set price_discount_percentage = ((product.compare_at_price) - (product.price)) * 100 / (product.compare_at_price) %}
{% endif %}

{% if not product.has_stock or product.free_shipping or product.compare_at_price %}
  <div class="labels">
    {% if not product.has_stock and not quickshop %}
      <div class="{% if product_detail %}js-stock-label {% endif %}label label-default">{{ "Sin stock" | translate }}</div>
    {% else %}
    {% if product.free_shipping %}
      <div class="label label-secondary">{{ "Envío gratis" | translate }}</div>
    {% endif %}
    {% endif %}
  </div>
{% endif %}