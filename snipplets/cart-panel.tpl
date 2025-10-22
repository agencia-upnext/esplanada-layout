<div class="js-ajax-cart-list scroll-aware">
    {# Cart panel items #}
    {% if cart.items %}
      {% for item in cart.items %}
        {% include "snipplets/cart-item-ajax.tpl" %}
      {% endfor %}
    {% endif %}
</div>
<div class="js-empty-ajax-cart" {% if cart.items_count > 0 %}style="display:none;"{% endif %}>
 	{# Cart panel empty #}
    <div class="alert alert-info text-center" data-component="cart.empty-message">{{ "El carrito de compras está vacío." | translate }} </div>
</div>
<div id="error-ajax-stock" style="display: none;">
	<div class="alert alert-warning m-3">
     	{{ "¡Uy! No tenemos más stock de este producto para agregarlo al carrito. Si querés podés" | translate }}<a href="{{ store.products_url }}" class="btn-link font-small ml-1">{{ "ver otros acá" | translate }}</a>
    </div>
</div>

<div class="cart-row">
    {% include "snipplets/cart-totals.tpl" %}
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
  var cartModal = document.getElementById('modal-cart');
  if (!cartModal) return;

  var scrollableArea = cartModal.querySelector('.modal-scrollable-area');
  var modalHeader = cartModal.querySelector('.modal-header');
  var modalFooter = cartModal.querySelector('.modal-footer');
  if (!scrollableArea || !modalHeader || !modalFooter) return;

  function checkScroll() {
    var el = scrollableArea;
    var scrollTop = el.scrollTop;

    if (scrollTop > 0) {
      modalHeader.classList.add('is-scrolled');
    } else {
      modalHeader.classList.remove('is-scrolled');
    }

    var hasScrollableContent = el.scrollHeight > el.clientHeight;
    var atBottom = (scrollTop + el.clientHeight) >= (el.scrollHeight - 5);
    
    if (hasScrollableContent && !atBottom) {
      modalFooter.classList.add('has-scroll-above');
    } else {
      modalFooter.classList.remove('has-scroll-above');
    }
  }

  scrollableArea.addEventListener('scroll', checkScroll);

  var observer = new MutationObserver(function(mutations) {
    mutations.forEach(function(mutation) {
      if (mutation.type === 'attributes' && mutation.attributeName === 'style') {
        var isVisible = cartModal.style.display !== 'none' && 
                       window.getComputedStyle(cartModal).display !== 'none';
        if (isVisible) {
          setTimeout(checkScroll, 50);
          setTimeout(checkScroll, 200);
        }
      }
    });
  });

  observer.observe(cartModal, {
    attributes: true,
    attributeFilter: ['style', 'class']
  });

  document.addEventListener('click', function(e) {
    if (e.target.closest('[data-toggle="#modal-cart"]')) {
      setTimeout(checkScroll, 100);
      setTimeout(checkScroll, 350);
    }
  });

  document.addEventListener('ajax:cart:success', function () {
    setTimeout(checkScroll, 150);
  });

  window.addEventListener('resize', checkScroll);
});
</script>