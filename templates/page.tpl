{{ 'js/institucional.js.tpl' | static_url | script_tag }}

{% if page.handle == 'store-locations' %}
    {% include "snipplets/institucional/page-nossas-lojas.tpl" %}
{% elseif page.handle == 'service' %}
    {% include "snipplets/institucional/page-service.tpl" %}
{% elseif page.handle == 'sac' %}
    {% include "snipplets/institucional/page-pos-venda.tpl" %}
{% elseif page.handle == 'faq' %}
    {% include "snipplets/institucional/page-faq.tpl" %}
{% elseif page.handle == 'central-de-apoio' %}
    {% include "snipplets/institucional/page-central-atendimento.tpl" %}
{% elseif page.handle == 'join-us' %}
    {% include "snipplets/institucional/page-trabalhe-conosco.tpl" %}
{% elseif page.handle == 'entrega' %}
    {% include "snipplets/institucional/politicas/page-entrega.tpl" %}
{% elseif page.handle == 'politicas-reembolso' %}
    {% include "snipplets/institucional/politicas/page-politicas-reembolso.tpl" %}
{% elseif page.handle == 'trocas-e-devolucoes' %}
    {% include "snipplets/institucional/politicas/page-trocas-e-devolucoes.tpl" %}
{% elseif page.handle == 'seguranca-e-site' %}
    {% include "snipplets/institucional/politicas/page-seguranca-e-site.tpl" %}

{% else %}
    {% embed "snipplets/page-header.tpl" %}
        {% block page_header_text %}{{ page.name }}{% endblock page_header_text %}
    {% endembed %}

    <section class="user-content pb-5">
        <div class="container">
            <div class="row">
                <div class="col">
                    {{ page.content }}
                </div>
            </div>
        </div>
    </section>

{% endif %}