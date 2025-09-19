{% if product.display_price and product.compare_at_price and product.compare_at_price > product.price %}

    {% set discount_percentage = ((product.compare_at_price - product.price) * 100) / product.compare_at_price %}
    {% set discount_rounded = discount_percentage | round(0, 'floor') %}

    <div class="d-inline-block align-middle ml-2 dicount-flag">
        <span class="">
            -{{ discount_rounded }}% off
        </span>
        
    </div>

{% endif %}