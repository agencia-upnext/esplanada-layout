{# 1. Defina seu array de SVGs. Cada string é o ID do ícone no seu sprite SVG. #}
{% set meus_icones_svg = ['coracao', 'estrela', 'carrinho', 'usuario', 'configuracao', 'presente', 'promocao', 'ajuda'] %}

<div class="section-home section-categories-home">
    <div class="container position-relative">
        <h3 class="section-title mb-4 text-center">Nossos Ícones</h3>

        <div class="js-swiper-categories swiper-container">
            <div class="swiper-wrapper">

                {# 2. Loop através do seu array de ícones #}
                {% for nome_do_icone in meus_icones_svg %}
                    <div class="swiper-slide">
                        
                        {# Você pode adicionar um link se precisar #}
                        <a href="/categoria/{{ nome_do_icone }}" class="home-category text-center">
                            <div class="home-category-image">

                                {# 3. Renderiza o SVG usando o ID do array #}
                                <svg class="meu-icone meu-icone-{{ nome_do_icone }}" aria-label="{{ nome_do_icone | capitalize }}">
                                    <use xlink:href="#{{ nome_do_icone }}"></use>
                                </svg>
                                
                            </div>
                            <div class="home-category-name">
                                <span>{{ nome_do_icone | capitalize }}</span>
                            </div>
                        </a>

                    </div>
                {% endfor %}

            </div>
        </div>

        {# Botões de navegação do Swiper #}
        <div class="js-swiper-categories-prev swiper-button-prev swiper-button-outside svg-icon-text d-none d-md-block">
            <svg class="icon-inline icon-lg icon-flip-horizontal"><use xlink:href="#chevron"></use></svg>
        </div>
        <div class="js-swiper-categories-next swiper-button-next swiper-button-outside svg-icon-text d-none d-md-block">
            <svg class="icon-inline icon-lg"><use xlink:href="#chevron"></use></svg>
        </div>

    </div>
</div>