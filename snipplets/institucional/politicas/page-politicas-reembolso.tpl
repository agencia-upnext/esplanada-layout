{% set policies = {
    'entrega': {
        'title': 'Política de Frete e Entrega',
        'url': '/entrega'
    },
    'troca': {
        'title': 'Política de Troca e Devolução',
        'url': '/trocas-e-devolucoes'
    },
    'privacidade': {
        'title': 'Política de Privacidade',
        'url': '/seguranca-e-site'
    },
    'reembolso': {
        'title': 'Política de Reembolso',
        'url': '/politicas-reembolso'
    }
} %}

<div class="page-policy-header">
    <div class="container">
        <h2>Política de reembolso</h2>
        <p>Na Esplanada Móveis entregamos com cuidado, você recebe com alegria.</p>
    </div>
</div>

<div class="policy-body container">
    {# Desktop View #}
    <div class="policy-container-desktop">
        <div class="policy-selector">
            {% for key, policy in policies %}
            <a href="{{ policy.url }}" class="policy-button">{{ policy.title }}</a>
            {% endfor %}
        </div>
        <div class="policy-content-container">
            <div class="policy-content">
                <h2>COMO FUNCIONA O REEMBOLSO DA ESPLANADA MÓVEIS?</h2>
                <p>O estorno de valores será processado somente após análise do motivo e/ou produto. Neste caso, a
                    devolução pode
                    ser
                    restituída de acordo com a conveniência do cliente, por: Vale compra com crédito de 100% do valor
                    total da
                    compra e
                    validade de 12 meses, ou Estorno do valor do produto através do mesmo meio de pagamento utilizado
                    pelo cliente
                    no
                    ato da compra, conforme segue:
                </p>
                <p>CARTÃO DE CRÉDITO</p>
                <p>O cancelamento do crédito é solicitado um dia útil após a confirmação pela Central de Atendimento à
                    Administradora
                    responsável pelo estorno, que pode fazê-lo em até duas faturas subsequentes de acordo com a data de
                    vencimento
                    do
                    cartão. Prazo determinado pela própria instituição financeira. Caso sua conta já esteja fechada, o
                    valor ficará
                    indisponível até o próximo vencimento.</p>
                <p>BOLETO BANCÁRIO OU DEPÓSITO</p>
                <p>Reembolso realizado em conta corrente em até 15 dias úteis após o recebimento dos dados bancários do
                    cliente pela
                    Central de Atendimento.</p>
                <h2>ME ARREPENDI DA MINHA COMPRA, QUAL PROCESSO DEVO EXECUTAR?</h2>
                <p>O Cancelamento da Compra deve ser previamente solicitado até 07 (sete) dias depois do recebimento do
                    produto pelo
                    Chat do site ou pelo telefone (11) 99880-4287. O produto deve estar intacto em embalagem original,
                    sem indícios
                    de
                    uso, com o manual e todos os seus acessórios acompanhado de documento fiscal. Neste caso, poderá ser
                    feito o
                    reembolso. A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer
                    produto que
                    apresente
                    claramente indícios de mau uso. Ademais, os serviços de Troca, Devolução e Assistência Técnica não
                    se aplicam
                    nos
                    seguintes casos: Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de
                    linha,
                    devidamente comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em
                    caso de
                    problemas,
                    podem ser reembolsados. Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da
                    Esplanada
                    Móveis
                    ou fora do prazo estipulado. Produtos devolvidos sem embalagem ou com embalagens abertas. Para
                    garantir seu
                    direito
                    à troca, o envio de uma foto documenta a condição da entrega do material à transportadora, que se
                    torna
                    responsável
                    até o retorno ao Centro de Distribuição. Produtos com itens e acessórios faltantes ou sem defeito de
                    fabricação
                    com
                    pedido de devolução fora do prazo legal para desistência.</p>
                <h2>O MÓVEL QUE EU COMPREI VEIO EM DESACORDO, O QUE DEVO FAZER?</h2>
                <p>Produtos divergentes com o pedido devem ser recusados na entrega e informados à Central de
                    Atendimento (11)
                    99880-4287. Caso exista divergências de informações que, de qualquer maneira, comprometam o uso do
                    produto, a
                    solicitação de troca deve ser feita até 07 (sete) dias depois do recebimento do produto pelo
                    telefone (11)
                    99880-4287. O produto deve estar sem indícios de mal uso, com o manual e todos os seus acessórios,
                    acompanhado
                    de
                    documento fiscal. Neste caso, deverá ser feita a troca ou o reembolso. A Esplanada Móveis isenta-se
                    da obrigação
                    de
                    cancelar, trocar ou consertar qualquer produto que apresente claramente indícios de mau uso.
                    Ademais, os
                    serviços de
                    Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos: Produtos de campanhas
                    como “Troca de
                    Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente comunicados no ato de confirmação
                    da compra não
                    possuem Troca ou Assistência. Mas, em caso de problemas, podem ser reembolsados. Produtos devolvidos
                    pelo
                    cliente
                    sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo estipulado. Produtos
                    devolvidos sem
                    embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de uma foto
                    documenta a condição
                    da
                    entrega do material à transportadora, que se torna responsável até o retorno ao Centro de
                    Distribuição. Produtos
                    com
                    itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para
                    desistência.</p>
            </div>
        </div>
    </div>

    {# Mobile View #}
    <div class="policy-container-mobile">
        <div class="policy-select-wrapper">
            <select class="policy-select">
                <option value="" selected disabled>Selecione uma política</option>
                {% for key, policy in policies %}
                    <option value="{{ policy.url }}">
                        {{ policy.title }}
                    </option>
                {% endfor %}
            </select>
        </div>
        <div class="policy-content-container">
            <div class="policy-content">
                <h2>COMO FUNCIONA O REEMBOLSO DA ESPLANADA MÓVEIS?</h2>
                <p>O estorno de valores será processado somente após análise do motivo e/ou produto. Neste caso, a
                    devolução pode
                    ser
                    restituída de acordo com a conveniência do cliente, por: Vale compra com crédito de 100% do valor
                    total da
                    compra e
                    validade de 12 meses, ou Estorno do valor do produto através do mesmo meio de pagamento utilizado
                    pelo cliente
                    no
                    ato da compra, conforme segue:
                </p>
                <p>CARTÃO DE CRÉDITO</p>
                <p>O cancelamento do crédito é solicitado um dia útil após a confirmação pela Central de Atendimento à
                    Administradora
                    responsável pelo estorno, que pode fazê-lo em até duas faturas subsequentes de acordo com a data de
                    vencimento
                    do
                    cartão. Prazo determinado pela própria instituição financeira. Caso sua conta já esteja fechada, o
                    valor ficará
                    indisponível até o próximo vencimento.</p>
                <p>BOLETO BANCÁRIO OU DEPÓSITO</p>
                <p>Reembolso realizado em conta corrente em até 15 dias úteis após o recebimento dos dados bancários do
                    cliente pela
                    Central de Atendimento.</p>
                <h2>ME ARREPENDI DA MINHA COMPRA, QUAL PROCESSO DEVO EXECUTAR?</h2>
                <p>O Cancelamento da Compra deve ser previamente solicitado até 07 (sete) dias depois do recebimento do
                    produto pelo
                    Chat do site ou pelo telefone (11) 99880-4287. O produto deve estar intacto em embalagem original,
                    sem indícios
                    de
                    uso, com o manual e todos os seus acessórios acompanhado de documento fiscal. Neste caso, poderá ser
                    feito o
                    reembolso. A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer
                    produto que
                    apresente
                    claramente indícios de mau uso. Ademais, os serviços de Troca, Devolução e Assistência Técnica não
                    se aplicam
                    nos
                    seguintes casos: Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de
                    linha,
                    devidamente comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em
                    caso de
                    problemas,
                    podem ser reembolsados. Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da
                    Esplanada
                    Móveis
                    ou fora do prazo estipulado. Produtos devolvidos sem embalagem ou com embalagens abertas. Para
                    garantir seu
                    direito
                    à troca, o envio de uma foto documenta a condição da entrega do material à transportadora, que se
                    torna
                    responsável
                    até o retorno ao Centro de Distribuição. Produtos com itens e acessórios faltantes ou sem defeito de
                    fabricação
                    com
                    pedido de devolução fora do prazo legal para desistência.</p>
                <h2>O MÓVEL QUE EU COMPREI VEIO EM DESACORDO, O QUE DEVO FAZER?</h2>
                <p>Produtos divergentes com o pedido devem ser recusados na entrega e informados à Central de
                    Atendimento (11)
                    99880-4287. Caso exista divergências de informações que, de qualquer maneira, comprometam o uso do
                    produto, a
                    solicitação de troca deve ser feita até 07 (sete) dias depois do recebimento do produto pelo
                    telefone (11)
                    99880-4287. O produto deve estar sem indícios de mal uso, com o manual e todos os seus acessórios,
                    acompanhado
                    de
                    documento fiscal. Neste caso, deverá ser feita a troca ou o reembolso. A Esplanada Móveis isenta-se
                    da obrigação
                    de
                    cancelar, trocar ou consertar qualquer produto que apresente claramente indícios de mau uso.
                    Ademais, os
                    serviços de
                    Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos: Produtos de campanhas
                    como “Troca de
                    Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente comunicados no ato de confirmação
                    da compra não
                    possuem Troca ou Assistência. Mas, em caso de problemas, podem ser reembolsados. Produtos devolvidos
                    pelo
                    cliente
                    sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo estipulado. Produtos
                    devolvidos sem
                    embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de uma foto
                    documenta a condição
                    da
                    entrega do material à transportadora, que se torna responsável até o retorno ao Centro de
                    Distribuição. Produtos
                    com
                    itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para
                    desistência.</p>
            </div>
        </div>
    </div>
</div>