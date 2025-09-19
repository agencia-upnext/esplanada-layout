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
        <h2>Política de trocas e devoluções</h2>
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
                <h2>COMO FUNCIONA A TROCA E DEVOLUÇÃO DE PRODUTOS?</h2>
                <p>Trocas e devoluções serão aceitas mediante autorização prévia. Caso seja identificado o uso indevido do
                    produto ou o não cumprimento das condições estabelecidas no termo aceito pelo cliente no momento da
                    solicitação, a troca, devolução, cancelamento ou assistência técnica poderá ser recusada.</p>
                <p>Nos casos em que a solicitação de troca ocorrer por arrependimento ou compra incorreta por parte do cliente,
                    a Esplanada Móveis se reserva o direito de cobrar os custos de frete do produto ao endereço do
                    comprador.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:
                </p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>ME ARREPENDI DA MINHA COMPRA, QUAL PROCESSO DEVO EXECUTAR?</h2>
                <p>O Cancelamento da Compra deve ser previamente solicitado até 07 (sete) dias depois do recebimento do produto
                    pelo Chat do site ou pelo telefone (11) 99880-4287. O produto deve estar intacto em embalagem original, sem
                    indícios de uso, com o manual e todos os seus acessórios acompanhado de documento fiscal. Neste caso, poderá
                    ser feito o reembolso.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>O MEU PRODUTO VEIO COM UM PROBLEMA NÃO LISTADO, O QUE DEVO FAZER?</h2>
                <p>Em todos os casos será feita uma avaliação criteriosa de cada solicitação e a Central de Atendimento retorna
                    ao cliente em até 02 (dois) dias úteis para orientar quanto à melhor solução e os procedimentos necessários.
                </p>
                <p>A coleta do produto é de responsabilidade da Esplanada Móveis e será realizada sem custo após avaliação das
                    informações prestadas pelo cliente no canal destinado à solicitação do serviço. O recolhimento deverá ser
                    feito no mesmo endereço de entrega da Nota Fiscal no prazo médio de 10 (dez) dias úteis, que pode variar de
                    acordo com a região.</p>
                <p>Após o retorno do produto, as informações fornecidas são confirmadas com o estado do produto, que deve estar
                    em conformidade com todas as características necessárias para autorização da troca ou devolução.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>O MÓVEL QUE EU COMPREI VEIO EM DESACORDO, O QUE DEVO FAZER?</h2>
                <p>Produtos divergentes com o pedido devem ser recusados na entrega e informados à Central de Atendimento (11)
                    99880-4287. Caso exista divergências de informações que, de qualquer maneira, comprometam o uso do produto,
                    a solicitação de troca deve ser feita até 07 (sete) dias depois do recebimento do produto pelo telefone (11)
                    99880-4287. O produto deve estar sem indícios de mal uso, com o manual e todos os seus acessórios,
                    acompanhado de documento fiscal. Neste caso, deverá ser feita a troca ou o reembolso.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>COMO FUNCIONA A GARANTIA DO FABRICANTE?</h2>
                <p>Em caso de defeitos detectados após ou durante o uso, verifique o prazo e os termos de garantia no manual do
                    produto. A garantia do fabricante é de responsabilidade do fornecedor, porém contato deve ser feito
                    diretamente conosco através da nossa Central de Atendimento. Caso este documento não informe o tempo da
                    garantia, vale o prazo legal de 90 dias corridos após o recebimento, prazo em que é possível solicitar a
                    Troca ou Assistência Técnica pela Esplanada Móveis, através do telefone (11) 99880-4287. Em qualquer caso,
                    estamos sempre dispostos a lhe ajudar. Conte com a gente!</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>O PRODUTO VEIO COM AVARIA OU DEFEITO TÉCNICO DE FABRICAÇÃO, O QUE DEVO FAZER?</h2>
                <p>Em caso de produto com defeito ou avaria por transporte, a troca precisa ser solicitada em até 90 (noventa)
                    dias a partir do recebimento do produto pelo telefone (11) 99880-4287. Em caso de verificação do problema
                    apenas após a montagem, como ocorre com acessórios ou itens faltantes, o prazo de solicitação de Assistência
                    Técnica passa a contar desta data.</p>
                <p>O prazo para prestação do serviço começa a contar a partir do aceite do cliente, que deverá autorizar a
                    Assistência Técnica, mesmo que sujeita às determinações legais do Código de Defesa do Consumidor.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>COMO FUNCIONA O REEMBOLSO DA ESPLANADA MÓVEIS?</h2>
                <p>O estorno de valores será processado somente após análise do motivo e/ou produto. Neste caso, a devolução
                    pode ser restituída de acordo com a conveniência do cliente, por:</p>
                <p>Vale compra com crédito de 100% do valor total da compra e validade de 12 meses, ou</p>
                <p>Estorno do valor do produto através do mesmo meio de pagamento utilizado pelo cliente no ato da compra,
                    conforme segue:</p>
                <p>CARTÃO DE CRÉDITO</p>
                <p>O cancelamento do crédito é solicitado um dia útil após a confirmação pela Central de Atendimento à
                    Administradora responsável pelo estorno, que pode fazê-lo em até duas faturas subsequentes de acordo com a
                    data de vencimento do cartão. Prazo determinado pela própria instituição financeira. Caso sua conta já
                    esteja fechada, o valor ficará indisponível até o próximo vencimento.</p>
                <p>BOLETO BANCÁRIO OU DEPÓSITO</p>
                <p>Reembolso realizado em conta corrente em até 15 dias úteis após o recebimento dos dados bancários do cliente
                    pela Central de Atendimento.</p>
                <p>© 2022 ESPLANADA MÓVEIS Móveis Esplanada Varejista LTDA. Todos os direitos reservados.</p>
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
                <h2>COMO FUNCIONA A TROCA E DEVOLUÇÃO DE PRODUTOS?</h2>
                <p>Trocas e devoluções serão aceitas mediante autorização prévia. Caso seja identificado o uso indevido do
                    produto ou o não cumprimento das condições estabelecidas no termo aceito pelo cliente no momento da
                    solicitação, a troca, devolução, cancelamento ou assistência técnica poderá ser recusada.</p>
                <p>Nos casos em que a solicitação de troca ocorrer por arrependimento ou compra incorreta por parte do cliente,
                    a Esplanada Móveis se reserva o direito de cobrar os custos de frete do produto ao endereço do
                    comprador.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:
                </p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>ME ARREPENDI DA MINHA COMPRA, QUAL PROCESSO DEVO EXECUTAR?</h2>
                <p>O Cancelamento da Compra deve ser previamente solicitado até 07 (sete) dias depois do recebimento do produto
                    pelo Chat do site ou pelo telefone (11) 99880-4287. O produto deve estar intacto em embalagem original, sem
                    indícios de uso, com o manual e todos os seus acessórios acompanhado de documento fiscal. Neste caso, poderá
                    ser feito o reembolso.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>O MEU PRODUTO VEIO COM UM PROBLEMA NÃO LISTADO, O QUE DEVO FAZER?</h2>
                <p>Em todos os casos será feita uma avaliação criteriosa de cada solicitação e a Central de Atendimento retorna
                    ao cliente em até 02 (dois) dias úteis para orientar quanto à melhor solução e os procedimentos necessários.
                </p>
                <p>A coleta do produto é de responsabilidade da Esplanada Móveis e será realizada sem custo após avaliação das
                    informações prestadas pelo cliente no canal destinado à solicitação do serviço. O recolhimento deverá ser
                    feito no mesmo endereço de entrega da Nota Fiscal no prazo médio de 10 (dez) dias úteis, que pode variar de
                    acordo com a região.</p>
                <p>Após o retorno do produto, as informações fornecidas são confirmadas com o estado do produto, que deve estar
                    em conformidade com todas as características necessárias para autorização da troca ou devolução.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>O MÓVEL QUE EU COMPREI VEIO EM DESACORDO, O QUE DEVO FAZER?</h2>
                <p>Produtos divergentes com o pedido devem ser recusados na entrega e informados à Central de Atendimento (11)
                    99880-4287. Caso exista divergências de informações que, de qualquer maneira, comprometam o uso do produto,
                    a solicitação de troca deve ser feita até 07 (sete) dias depois do recebimento do produto pelo telefone (11)
                    99880-4287. O produto deve estar sem indícios de mal uso, com o manual e todos os seus acessórios,
                    acompanhado de documento fiscal. Neste caso, deverá ser feita a troca ou o reembolso.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>COMO FUNCIONA A GARANTIA DO FABRICANTE?</h2>
                <p>Em caso de defeitos detectados após ou durante o uso, verifique o prazo e os termos de garantia no manual do
                    produto. A garantia do fabricante é de responsabilidade do fornecedor, porém contato deve ser feito
                    diretamente conosco através da nossa Central de Atendimento. Caso este documento não informe o tempo da
                    garantia, vale o prazo legal de 90 dias corridos após o recebimento, prazo em que é possível solicitar a
                    Troca ou Assistência Técnica pela Esplanada Móveis, através do telefone (11) 99880-4287. Em qualquer caso,
                    estamos sempre dispostos a lhe ajudar. Conte com a gente!</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>O PRODUTO VEIO COM AVARIA OU DEFEITO TÉCNICO DE FABRICAÇÃO, O QUE DEVO FAZER?</h2>
                <p>Em caso de produto com defeito ou avaria por transporte, a troca precisa ser solicitada em até 90 (noventa)
                    dias a partir do recebimento do produto pelo telefone (11) 99880-4287. Em caso de verificação do problema
                    apenas após a montagem, como ocorre com acessórios ou itens faltantes, o prazo de solicitação de Assistência
                    Técnica passa a contar desta data.</p>
                <p>O prazo para prestação do serviço começa a contar a partir do aceite do cliente, que deverá autorizar a
                    Assistência Técnica, mesmo que sujeita às determinações legais do Código de Defesa do Consumidor.</p>
                <p>A Esplanada Móveis isenta-se da obrigação de cancelar, trocar ou consertar qualquer produto que apresente
                    claramente indícios de mau uso.</p>
                <p>Ademais, os serviços de Troca, Devolução e Assistência Técnica não se aplicam nos seguintes casos:</p>
                <p>Produtos de campanhas como “Troca de Coleção”, “Entrega Imediata” ou itens fora de linha, devidamente
                    comunicados no ato de confirmação da compra não possuem Troca ou Assistência. Mas, em caso de problemas,
                    podem ser reembolsados.</p>
                <p>Produtos devolvidos pelo cliente sem a comunicação e autorização prévia da Esplanada Móveis ou fora do prazo
                    estipulado.</p>
                <p>Produtos devolvidos sem embalagem ou com embalagens abertas. Para garantir seu direito à troca, o envio de
                    uma foto documenta a condição da entrega do material à transportadora, que se torna responsável até o
                    retorno ao Centro de Distribuição.</p>
                <p>Produtos com itens e acessórios faltantes ou sem defeito de fabricação com pedido de devolução fora do prazo
                    legal para desistência.</p>
                <h2>COMO FUNCIONA O REEMBOLSO DA ESPLANADA MÓVEIS?</h2>
                <p>O estorno de valores será processado somente após análise do motivo e/ou produto. Neste caso, a devolução
                    pode ser restituída de acordo com a conveniência do cliente, por:</p>
                <p>Vale compra com crédito de 100% do valor total da compra e validade de 12 meses, ou</p>
                <p>Estorno do valor do produto através do mesmo meio de pagamento utilizado pelo cliente no ato da compra,
                    conforme segue:</p>
                <p>CARTÃO DE CRÉDITO</p>
                <p>O cancelamento do crédito é solicitado um dia útil após a confirmação pela Central de Atendimento à
                    Administradora responsável pelo estorno, que pode fazê-lo em até duas faturas subsequentes de acordo com a
                    data de vencimento do cartão. Prazo determinado pela própria instituição financeira. Caso sua conta já
                    esteja fechada, o valor ficará indisponível até o próximo vencimento.</p>
                <p>BOLETO BANCÁRIO OU DEPÓSITO</p>
                <p>Reembolso realizado em conta corrente em até 15 dias úteis após o recebimento dos dados bancários do cliente
                    pela Central de Atendimento.</p>
                <p>© 2022 ESPLANADA MÓVEIS Móveis Esplanada Varejista LTDA. Todos os direitos reservados.</p>
            </div>
        </div>
    </div>
</div>