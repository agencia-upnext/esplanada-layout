<div class="page-pos-venda-header">
    <div class="container header-content">
        <h2>Central pós venda</h2>
        <p>Estamos aqui para ajudá-lo após a compra! Nossa central de pós-venda está pronta para resolver suas dúvidas, oferecer suporte técnico e garantir que você tenha a melhor experiência possível com nossos produtos.</p>
    </div>
</div>

{% set pos_venda = {
    'Sudeste': [
        { 'state': 'Minas Gerais', 'city': 'Belo Horizonte e Região Metropolitana', 'phone': '(31) 2595-0708' }, { 'state': 'Minas Gerais', 'city': 'Governador Valadares', 'phone': '(33) 4042-1077' }, { 'state': 'Minas Gerais', 'city': 'Poços de Caldas', 'phone': '(35) 3042-9747' }, { 'state': 'Rio de Janeiro', 'city': 'Capital e Interior', 'phone': '(21) 4040-4929' }, { 'state': 'Espírito Santo', 'city': 'Vitória', 'phone': '(27) 4040-4047' }, { 'state': 'São Paulo', 'city': 'Bauru e Região Noroeste', 'phone': '(14) 3500-9344' }, { 'state': 'São Paulo', 'city': 'Campinas e Região', 'phone': '(31) 2595-0708' }, { 'state': 'São Paulo', 'city': 'Região do Vale do Paraíba e Litoral Norte', 'phone': '(17) 2786-1631' }, { 'state': 'São Paulo', 'city': 'Região do Vale do Paraíba e Litoral Norte', 'phone': '(17) 2786-1631' }, { 'state': 'São Paulo', 'city': 'Região do Vale do Paraíba e Litoral Norte', 'phone': '(17) 2786-1631' }, { 'state': 'São Paulo', 'city': 'Região do Vale do Paraíba e Litoral Norte', 'phone': '(17) 2786-1631' }, { 'state': 'São Paulo', 'city': 'Região do Vale do Paraíba e Litoral Norte', 'phone': '(17) 2786-1631' }, { 'state': 'São Paulo', 'city': 'Região do Vale do Paraíba e Litoral Norte', 'phone': '(17) 2786-1631' }, { 'state': 'São Paulo', 'city': 'Região do Vale do Paraíba e Litoral Norte', 'phone': '(17) 2786-1631' }
    ],
    'Sul': [
        { 'state': 'Paraná', 'city': 'Curitiba e Região', 'phone': '(41) 4042-1234' }, { 'state': 'Paraná', 'city': 'Londrina e Região', 'phone': '(43) 3003-5678' }, { 'state': 'Santa Catarina', 'city': 'Florianópolis e Litoral', 'phone': '(48) 4042-9876' }, { 'state': 'Rio Grande do Sul', 'city': 'Porto Alegre e Região Metropolitana', 'phone': '(51) 4042-5432' }
    ],
    'Centro-Oeste': [
        { 'state': 'Distrito Federal', 'city': 'Brasília', 'phone': '(61) 3181-0987' }, { 'state': 'Goiás', 'city': 'Goiânia', 'phone': '(62) 3181-1234' }, { 'state': 'Mato Grosso', 'city': 'Cuiabá', 'phone': '(65) 3181-5678' }
    ],
    'Norte': [
        { 'state': 'Amazonas', 'city': 'Manaus', 'phone': '(92) 3181-0101' }, { 'state': 'Pará', 'city': 'Belém', 'phone': '(91) 3181-0202' }
    ],
    'Nordeste': [
        { 'state': 'Bahia', 'city': 'Salvador', 'phone': '(71) 3181-0303' }, { 'state': 'Pernambuco', 'city': 'Recife', 'phone': '(81) 3181-0404' }, { 'state': 'Ceará', 'city': 'Fortaleza', 'phone': '(85) 3181-0505' }
    ]
} %}

<div class="container">
    <div class="pos-venda-container">
        <div class="region-selector">
            <div class="region-buttons">
                {% for region_name, locations in pos_venda %}
                    <button class="region-button" data-region="{{ region_name }}">{{ region_name }}</button>
                {% endfor %}
            </div>
            <div class="region-dropdown">
                <label for="region-select">SELECIONE SUA REGIÃO</label>
                <select id="region-select" class="region-select">
                    {% for region_name, locations in pos_venda %}
                        <option value="{{ region_name }}">{{ region_name }}</option>
                    {% endfor %}
                </select>
            </div>
        </div>
        <div class="locations-container">
            <div class="locations-list">
                {% for region_name, locations in pos_venda %}
                    <div class="region-content" id="region-{{ region_name }}" style="display: none;">
                        {% for location in locations %}
                            <div class="location-item">
                                <div class="state">{{ location.state }}</div>
                                <div class="details">{{ location.city }} {{ location.phone }}</div>
                            </div>
                        {% endfor %}
                    </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>