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
        <h2>Política de frete e entrega</h2>
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
                <h3>Como funciona a entrega do móvel?</h3>
                <p>A Esplanada Móveis se responsabiliza pela entrega dos produtos adquiridos até a porta de entrada ou portaria do endereço indicado, se a portaria do condomínio permitir, as entregas são efetuadas no piso térreo e é de responsabilidade do cliente a locomoção da mercadoria até seu apartamento ou casa.</p>
                <p>Confira as dimensões do produto e certifique-se de que estão adequadas aos elevadores, portas e corredores do local da entrega. Não fazemos a montagem, desmontagem do produto e/ou portas e janelas, transporte pela escada ou içamentos pelo lado de fora do prédio. Não está incluso no serviço de entrega o deslocamento até o interior do apartamento, com ou sem elevador, ou deslocamento em locais de difícil acesso como escadarias.</p>
                <p>Caso o cliente necessite de entrega dentro das dificuldades mencionadas, deverá entrar em contato através do WhatsApp (11)99880-4287 para análise e cotação do valor do serviço.</p>
                <p>Certifique-se de tudo antes de finalizar a compra, evitando assim futuros desagrados ou imprevistos com a entrega.</p>
                <h3>Qual prazo de entrega do produto?</h3>
                <p>O prazo de entrega pode variar de acordo com a região que você reside e com o método de entrega selecionado. O prazo começa a contar a partir da aprovação de pagamento pela operadora de cartão ou confirmação de pagamento do boleto por parte do banco emissor.</p>
                <p>Lembrando que não realizamos agendamento de entrega do produto.</p>
                <h3>Como funciona nossa política de frete?</h3>
                <p>Todos os nossos produtos ficam armazenados em nosso Centro de Distribuição. O custo de frete de um produto varia conforme peso, dimensão e a distância do Centro de Distribuição em relação ao CEP de entrega que você escolheu.</p>
                <p>Devido a tudo isso pode acontecer de um produto estar disponível para determinado CEP com valor de frete diferente do praticado para outro, assim como é possível que um produto esteja em um promoção com frete grátis para um local e indisponíveis para outro.</p>
                <p>Para consultar o valor do frete e o prazo de entrega de um produto, é só digitar o seu CEP de entrega no local indicado em nosso site na página do produto ou no Carrinho de Compras!</p>
                <h3>Posso rastrear meu pedido?</h3>
                <p>Acessando o nosso site você consegue ter acesso a página de Rastreamento, para rastrear seu pedido basta ter o número do CPF do titular da compra e o número da NF!</p>
                <p>Lembrando que para começar a acompanhar seu pedido já é necessário aguardar os 5 dias úteis do nosso prazo de expedição, após sua NF ser emitida você já consegue consultar!</p>
                <h3>Como posso acompanhar a entrega do meu pedido?</h3>
                <p>Nós sabemos o quanto o seu móvel novinho está sendo aguardado e como é bom acompanhar cada passo de todo o processo. Para isso, nós enviaremos a você via WhatsApp periodicamente o status do seu pedido.</p>
                <p>Claro que só isso também é muito pouco, então, temos um cantinho especial, para você em nosso site para que possa fazer o acompanhamento sempre que quiser. Para isso é necessária apenas acessar o botão ‘Minha Conta’, no topo do site. Lá você poderá acompanhar de pertinho todos os procedimentos até a chegada de seu pedido em sua casa.</p>
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
                <h3>Como funciona a entrega do móvel?</h3>
                <p>A Esplanada Móveis se responsabiliza pela entrega dos produtos adquiridos até a porta de entrada ou portaria do endereço indicado, se a portaria do condomínio permitir, as entregas são efetuadas no piso térreo e é de responsabilidade do cliente a locomoção da mercadoria até seu apartamento ou casa.</p>
                <p>Confira as dimensões do produto e certifique-se de que estão adequadas aos elevadores, portas e corredores do local da entrega. Não fazemos a montagem, desmontagem do produto e/ou portas e janelas, transporte pela escada ou içamentos pelo lado de fora do prédio. Não está incluso no serviço de entrega o deslocamento até o interior do apartamento, com ou sem elevador, ou deslocamento em locais de difícil acesso como escadarias.</p>
                <p>Caso o cliente necessite de entrega dentro das dificuldades mencionadas, deverá entrar em contato através do WhatsApp (11)99880-4287 para análise e cotação do valor do serviço.</p>
                <p>Certifique-se de tudo antes de finalizar a compra, evitando assim futuros desagrados ou imprevistos com a entrega.</p>
                <h3>Qual prazo de entrega do produto?</h3>
                <p>O prazo de entrega pode variar de acordo com a região que você reside e com o método de entrega selecionado. O prazo começa a contar a partir da aprovação de pagamento pela operadora de cartão ou confirmação de pagamento do boleto por parte do banco emissor.</p>
                <p>Lembrando que não realizamos agendamento de entrega do produto.</p>
                <h3>Como funciona nossa política de frete?</h3>
                <p>Todos os nossos produtos ficam armazenados em nosso Centro de Distribuição. O custo de frete de um produto varia conforme peso, dimensão e a distância do Centro de Distribuição em relação ao CEP de entrega que você escolheu.</p>
                <p>Devido a tudo isso pode acontecer de um produto estar disponível para determinado CEP com valor de frete diferente do praticado para outro, assim como é possível que um produto esteja em um promoção com frete grátis para um local e indisponíveis para outro.</p>
                <p>Para consultar o valor do frete e o prazo de entrega de um produto, é só digitar o seu CEP de entrega no local indicado em nosso site na página do produto ou no Carrinho de Compras!</p>
                <h3>Posso rastrear meu pedido?</h3>
                <p>Acessando o nosso site você consegue ter acesso a página de Rastreamento, para rastrear seu pedido basta ter o número do CPF do titular da compra e o número da NF!</p>
                <p>Lembrando que para começar a acompanhar seu pedido já é necessário aguardar os 5 dias úteis do nosso prazo de expedição, após sua NF ser emitida você já consegue consultar!</p>
                <h3>Como posso acompanhar a entrega do meu pedido?</h3>
                <p>Nós sabemos o quanto o seu móvel novinho está sendo aguardado e como é bom acompanhar cada passo de todo o processo. Para isso, nós enviaremos a você via WhatsApp periodicamente o status do seu pedido.</p>
                <p>Claro que só isso também é muito pouco, então, temos um cantinho especial, para você em nosso site para que possa fazer o acompanhamento sempre que quiser. Para isso é necessária apenas acessar o botão ‘Minha Conta’, no topo do site. Lá você poderá acompanhar de pertinho todos os procedimentos até a chegada de seu pedido em sua casa.</p>
            </div>
        </div>
    </div>
</div>