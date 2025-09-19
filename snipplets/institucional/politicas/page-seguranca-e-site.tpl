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
        <h2>Política de privacidade</h2>
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
                <p>Solicitar Alteração ou exclusão de dados (ter uma aba onde possa ser solicitado o cancelamento).</p>

                <p>A Móveis Esplanada LTDA (doravante chamada de “Esplanada Móveis”), fabricante e vendedora brasileira
                    de móveis, inscrita no CNPJ n.º 09.184.779/0001-17, e que oferta seus produtos à venda por meio de
                    sua loja virtual e portais parceiros [1], bem como em lojas físicas de terceiros, em observância aos
                    princípios da probidade e da boa-fé, e aos direitos fundamentais da liberdade e da privacidade da
                    pessoa natural, resolve adotar os seguintes Termos de Uso e a seguinte Política de Privacidade:</p>

                <p>A Esplanada Móveis tem o compromisso e preza pela privacidade, a transparência e a proteção dos dados
                    de seus clientes durante todo o processo de interação dos clientes com o nosso site, aplicativo e
                    lojas físicas. Por isso, compartilhamos esse documento para que entendam quais informações coletamos
                    e como as utilizamos, armazenamos ou excluímos, e quais são as medidas que aplicamos para mantê-las
                    seguras.</p>

                <p>De acordo com a definição constante na Lei Geral de Proteção de Dados “LGPD” (Lei Federal nº
                    13.709/18), na maioria das vezes seremos o controlador das suas informações, nesse caso,
                    responsáveis por definir o que acontece com as informações e toda e qualquer medida de segurança
                    para protegê-las.</p>

                <p>Os dados cadastrais dos clientes não são divulgados para terceiros, exceto quando necessários para o
                    processo de entrega, para cobrança ou participação em promoções solicitadas pelos clientes. Seus
                    dados pessoais são peça fundamental para que o pedido chegue em segurança na sua casa, de acordo com
                    o prazo de entrega estipulado.</p>
                <h2>A QUEM A NOSSA POLÍTICA DE PRIVACIDADE SE APLICA?</h2>
                <p>Aplica-se a todos os clientes e usuários da Esplanada Móveis, incluindo os clientes e usuários que
                    acessam o site, aplicativo e lojas físicas, que de alguma forma tenham os dados pessoais tratados
                    por nós.</p>
                <h2>QUAIS INFORMAÇÕES PESSOAIS COLETAMOS E UTILIZAMOS?</h2>
                <p>Durante a sua experiência no uso do nosso site, ou em uma das nossas lojas físicas, podemos coletar
                    diferentes tipos de dados pessoais, de forma automática com o objetivo de conferência, monitoramento
                    e controle, ou fornecidas diretamente por você, como por exemplo para a realização de seu cadastro
                    nas plataformas.</p>

                <p>Informações que você nos fornece durante o cadastro: Dentre as informações que podem ser solicitadas
                    estão: nome completo, e-mail, CPF, data de nascimento, gênero, endereço, números de telefone e
                    número do cartão de crédito.</p>

                <p>Informações coletadas automaticamente pela Esplanada Móveis: coletamos e armazenamos determinadas
                    informações sempre que o você interage conosco. Por exemplo, utilizamos cookies e obtemos
                    informações quando seu navegador acessa o nosso site; quando você clica em anúncios, e-mails de
                    parceiros e outros conteúdos fornecidos por nós em outros sites. Além disso, durante a análise e o
                    monitoramento de suas compras ou outras transações financeiras coletamos tipo de produto;
                    quantidade; valor da mercadoria; valor da transação da compra ou transação; natureza da transação
                    financeira; informações da conta bancária e outros meios utilizados; filiação; informações de renda.
                </p>

                <p>Informações que poderão ser coletadas mesmo que o usuário não esteja cadastrado: Durante a navegação
                    na plataforma poderemos coletar o endereço de IP; informações sobre o dispositivo utilizado para a
                    navegação, produtos e categorias pesquisados ou visualizados; contagem de visualizações, páginas
                    visitadas em outros sites.</p>

                <p>Informações que poderão ser acessadas somente se você nos autorizar: durante a utilização de
                    determinadas funcionalidades em um dos aplicativos poderemos acessar e coletar dados de
                    geolocalização, acesso a lista de contatos e acesso à câmera.</p>
                <h2>COMO E POR QUE UTILIZAMOS OS SEUS DADOS PESSOAIS?</h2>
                <p>Nós utilizamos os dados pessoais como forma de garantir um atendimento de qualidade e uma melhor
                    experiência na sua compra.</p>
                <h2>OS DADOS SÃO NECESSÁRIOS PARA:</h2>
                <p>Entregar os produtos adquiridos ou o serviço contratado;</p>

                <p>Otimizar sua interação conosco;</p>

                <p>Garantir a segurança do site, de seu aplicativo e dos dados que processa;</p>

                <p>Informar o Cliente sobre as ofertas e divulgar os nossos serviços;</p>

                <p>Cumprir obrigações legais;</p>

                <p>Fins administrativos e de gestão.</p>
                <h2>O FORNECIMENTO DOS DADOS PERMITE:</h2>
                <p>Entregar os produtos ou serviços adquiridos;</p>

                <p>Realizar o processo de troca ou devolução de produtos, dentro do prazo estabelecido pelo CDC (Código
                    de Defesa do Consumidor);</p>

                <p>Enviar atualizações sobre o status do pedido e comunicações de serviços; Coordenar com parceiros a
                    entrega ou disponibilização de serviços;</p>

                <p>Prestar serviços adequados às necessidades do Cliente;</p>

                <p>Melhorar a experiência de compra dos clientes na Esplanada Móveis;</p>

                <p>Fazer análises e pesquisas de mercado;</p>

                <p>Manter o Cliente informado sobre os produtos e serviços que oferecemos;</p>

                <p>Executar publicidade online direcionada;</p>

                <p>Prevenir, detectar e investigar atividades que estejam em desacordo com o nosso Código de Ética e
                    Conduta ou que sejam proibidas ou ilegais;</p>

                <p>Melhorar nosso website, produtos e serviços.</p>

                <p>A Esplanada Móveis utiliza bases legais, que podem variar de acordo com a finalidade da coleta, para
                    tratar os dados pessoais dos clientes. O prazo de armazenamento pode mudar conforme a base legal
                    aplicável a cada situação e a finalidade.</p>
                <h2>SERVIÇOS DE MARKETING</h2>
                <p>Os serviços de marketing são oferecidos por meio de comunicações gratuitas sobre ofertas, serviços e
                    produtos dirigidas a você, relacionadas ao seu perfil no site e às compras que fez. Esse serviço
                    abrange e-mails, SMS e WhatsApp. Vale ressaltar que você pode cancelar o serviço, a qualquer
                    momento, acessando “Minha Conta Esplanada Móveis”.</p>
                <h2>COM QUEM NÓS PODEMOS COMPARTILHAR SEUS DADOS PESSOAIS?</h2>
                <p>Para a execução das atividades listadas até aqui, sempre que necessário, nós poderemos compartilhar
                    os seus dados pessoais com outras empresas do nosso grupo, com prestadores de serviços, parceiros ou
                    órgãos reguladores. Jamais comercializamos dados pessoais.</p>

                <p>As informações coletadas somente serão compartilhadas quando forem necessárias:</p>

                <p>I - para prestação adequada dos serviços objeto de suas atividades com empresas parceiras;</p>

                <p>II - proteção em caso de conflito;</p>

                <p>III - mediante decisão judicial ou requisição de autoridade competente;</p>

                <p>IV - com empresas provedoras de infraestrutura tecnológica e operacional, como empresas
                    intermediadoras de pagamento e provedoras de serviço de armazenamento de informações.</p>
                <h2>TRANSFERÊNCIA INTERNACIONAL DE DADOS PESSOAIS</h2>
                <p>Alguns de seus dados pessoais poderão ser transferidos para outros países, por exemplo, quando
                    utilizamos serviços computacionais em nuvem para processamento ou armazenamento de dados,
                    localizados em outro país. Nestas situações, seguiremos também todos os requisitos estabelecidos na
                    legislação vigente, e adotaremos as melhores práticas de mercado para garantir a proteção e
                    privacidade dos seus dados pessoais.</p>
                <h2>ARMAZENAMENTO E SEGURANÇA DOS DADOS PESSOAIS</h2>
                <p>Nós armazenamos seus dados de forma segura em data centers localizados no Brasil, bem como no
                    exterior. Neste caso de armazenamento no exterior, são adotadas todas as medidas legais aplicáveis,
                    em conformidade com a Lei Geral de Proteção de Dados e suas faturas regulamentares, garantindo a
                    proteção e privacidade de seus dados pessoais.</p>

                <p>Nós adotamos as melhores técnicas para proteger os dados pessoais coletados de acessos não
                    autorizados, destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou
                    ilícito, inclusive mecanismos de criptografia. Ressaltamos, porém, que nenhuma plataforma é
                    completamente segura. Se você tiver qualquer preocupação ou suspeita de que os seus dados estejam em
                    risco, entre em contato conosco por meio dos nossos canais de atendimento.</p>
                <h2>POR QUANTO TEMPO ARMAZENAMOS INFORMAÇÕES PESSOAIS?</h2>
                <p>Armazenamos as informações dos clientes pelo prazo necessário, respeitando todas as normas da
                    legislação brasileira.</p>
                <h2>QUAIS SÃO OS SEUS DIREITOS COMO TITULAR DE DADOS?</h2>
                <p>A partir do início da vigência da LGPD, o titular dos dados pessoais terá o direito de obter da
                    Esplanada Móveis, a qualquer momento, mediante requisição formal, informações referentes aos seus
                    dados.</p>

                <p>A Esplanada Móveis terá 15 dias para responder às solicitações dos titulares. Os pedidos serão
                    analisados conforme previsto em legislação vigente e, por questões legais, algumas solicitações
                    podem não ser atendidas.</p>

                <p>Os titulares dos dados, segundo o texto da LGPD, podem exercer os seus direitos por meio de:</p>

                <p>I - confirmação da existência de tratamento;</p>

                <p>II - acesso aos dados;</p>

                <p>III - correção de dados incompletos, inexatos ou desatualizados;</p>

                <p>IV - anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em
                    desconformidade com o disposto nesta Lei;</p>

                <p>V - portabilidade dos dados a outro fornecedor de serviço ou produto, mediante requisição expressa,
                    de acordo com a regulamentação da autoridade nacional, observados os segredos comercial e
                    industrial;</p>

                <p>VI - eliminação dos dados pessoais tratados com o consentimento do titular;</p>

                <p>VII - informação das entidades públicas e privadas com as quais o controlador realizou uso
                    compartilhado de dados;</p>

                <p>VIII - informação sobre a possibilidade de não fornecer consentimento e sobre as consequências da
                    negativa;</p>

                <p>IX - revogação do consentimento.</p>
                <h2>COMO EXERCER OS SEUS DIREITOS COMO TITULAR DE DADOS?</h2>
                <p>Você pode exercer seus direitos acessando a seção “Privacidade”, no “Minha Conta Esplanada Móveis”,
                    disponível no site esplanadamoveis.com.br. Além disso, pode entrar em contato pelo e-mail
                    sac@moveisesplanada.com.br.</p>

                <p>Para mudar suas preferências em relação às notificações (incluindo as comunicações de marketing), a
                    qualquer momento, você pode acessar “Minha Conta Esplanada Móveis”.</p>

                <p>Se não quiser receber nossas comunicações de marketing, também pode cancelar a assinatura clicando no
                    link enviado junto com o e-mail do marketing.</p>
                <p>Crianças podem comprar na Esplanada Móveis?</p>

                <p>A Esplanada Móveis vende produtos para crianças, mas devem ser comprados por adultos. Se você tem
                    menos de 18 anos, precisará fazer a compra junto com um de seus pais ou responsável.</p>
                <h2>COOKIES E TECNOLOGIAS SEMELHANTES</h2>
                <p>Cookies são pequenos arquivos de dados que são colocados no seu computador ou em outros dispositivos
                    (como 'smartphones' ou 'tablets') enquanto você navega no site.</p>
                <p>Utilizamos cookies, pixels e outras tecnologias (coletivamente,'cookie') para reconhecer seu
                    navegador ou dispositivo, aprender mais sobre seus interesses, fornecer recursos e serviços
                    essenciais e também para:</p>

                <p>Acompanhar suas preferências para enviar somente anúncios de seu interesse. Você pode definir suas
                    preferências por meio de sua conta;</p>

                <p>Acompanhar os itens armazenados no seu carrinho de compras;</p>

                <p>Realização de pesquisas e diagnósticos para melhorar o conteúdo, produtos e serviços;</p>

                <p>Impedir atividades fraudulentas;</p>

                <p>Melhorar a segurança.</p>

                <p>Se você bloquear ou rejeitar nossos cookies, não poderá adicionar itens ao seu carrinho de compras,
                    prosseguir para o checkout ou usar nossos produtos e serviços que exijam login.</p>

                <p>Clique em 'Ajuda', nas configurações do seu navegador, para saber como impedi-lo de aceitar cookies e
                    para ser notificado quando receber novos; para ver quando eles expiram e para desativá-los. Nos
                    links abaixo você encontra mais detalhes sobre como desativar os cookies dos navegadores mais
                    populares:</p>

                <p>Google Chrome</p>

                <p>Mozilla Firefox</p>

                <p>Safari</p>

                <p>Internet Explorer</p>

                <p>Microsoft Edge</p>

                <p>Opera</p>
                <h2>COMO VOCÊ PODE MANTER SUAS INFORMAÇÕES PESSOAIS SEGURAS?</h2>
                <p>A Esplanada Móveis utiliza os melhores protocolos de segurança para preservar a privacidade dos dados
                    dos Clientes, mas também recomenda medidas de proteção individual.</p>

                <p>Para manter a segurança e proteção dos seus dados pessoais fornecidos no cadastro ou nas compras, em
                    nenhuma hipótese o seu login e senha devem ser compartilhados com terceiros. Além disso, ao acessar
                    o seu cadastro pela “Minha Conta Esplanada Móveis”, principalmente em computadores públicos,
                    certifique-se de que você realizou o logout da sua conta para evitar que pessoas não autorizadas
                    acessem e utilizem as informações sem o seu conhecimento.</p>

                <p>Não solicitamos dados pessoais por telefone, WhatsApp, SMS ou e-mail. Em nenhuma hipótese eles devem
                    ser fornecidos, pois pode ser uma tentativa de uso indevido.</p>
                <h2>RETENÇÃO E EXCLUSÃO DOS DADOS PESSOAIS</h2>
                <p>Trataremos seus dados pessoais com níveis de proteção elevados, garantindo sua privacidade, durante
                    todo o período que você for nosso cliente, navegar em nossas plataformas e utilizar nossos serviços,
                    ou se tratar de potencial cliente com quem dividimos nossas ofertas de produtos e serviços.</p>

                <p>Quando aplicável, e mesmo se você optar por excluir seus dados pessoais da nossa base de cadastro,
                    poderemos reter alguns ou todos os seus dados pessoais por períodos adicionais para cumprimento de
                    obrigações legais ou regulatórias, para o exercício regular de nossos direitos, atuação em ações
                    judiciais, para fins de auditoria de diversas naturezas, ou outros prazos definidos e fundamentados
                    por bases legais que justifiquem a retenção destes dados.</p>

                <h2>ALTERAÇÕES DESTA POLÍTICA DE PRIVACIDADE</h2>
                <p>Estamos sempre buscando melhorar a experiência de nossos clientes. Dessa forma, nossas práticas de
                    tratamento de dados pessoais poderão sofrer alterações com a inclusão de novas funcionalidades e
                    serviços.</p>

                <p>Valorizamos a transparência no modo em que tratamos seus dados pessoais. Toda vez que alguma condição
                    relevante deste Política de Privacidade for alterada, essas alterações serão válidas, eficazes e
                    vinculantes após a nova versão ser publicada em nosso site. Estas alterações serão comunicadas por
                    meio de um dos canais disponibilizados por você durante o seu cadastro (e-mail, WhatsApp, SMS,
                    dentre outros).</p>

                <p>Como entrar em contato com o encarregado da proteção de dados da Esplanada Móveis?</p>

                <p>O encarregado da proteção de dados é o responsável escolhido pela Esplanada Móveis para atuar como
                    canal de comunicação entre o controlador, os titulares dos dados e a Autoridade Nacional de Proteção
                    de Dados (ANPD), quando ela for formalizada.</p>

                <h2>LEGISLAÇÃO E FORO</h2>
                <p>Esta política será regida, interpretada e executada de acordo com as Leis da República Federativa do
                    Brasil, especialmente a Lei nº 13.709/2018, independentemente das Leis de outros estados ou países,
                    sendo competente o foro de domicílio do Cliente para dirimir qualquer dúvida decorrente deste
                    documento.</p>

                <p>Última atualização: 30 de Setembro de 2022</p>
                <p>Para mais informações acesse nossa página de atendimento&nbsp;<a
                        href="https://www.esplanadamoveis.com.br/central-de-apoio">clicando aqui</a></p>
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
                <p>Solicitar Alteração ou exclusão de dados (ter uma aba onde possa ser solicitado o cancelamento).</p>

                <p>A Móveis Esplanada LTDA (doravante chamada de “Esplanada Móveis”), fabricante e vendedora brasileira
                    de móveis, inscrita no CNPJ n.º 09.184.779/0001-17, e que oferta seus produtos à venda por meio de
                    sua loja virtual e portais parceiros [1], bem como em lojas físicas de terceiros, em observância aos
                    princípios da probidade e da boa-fé, e aos direitos fundamentais da liberdade e da privacidade da
                    pessoa natural, resolve adotar os seguintes Termos de Uso e a seguinte Política de Privacidade:</p>

                <p>A Esplanada Móveis tem o compromisso e preza pela privacidade, a transparência e a proteção dos dados
                    de seus clientes durante todo o processo de interação dos clientes com o nosso site, aplicativo e
                    lojas físicas. Por isso, compartilhamos esse documento para que entendam quais informações coletamos
                    e como as utilizamos, armazenamos ou excluímos, e quais são as medidas que aplicamos para mantê-las
                    seguras.</p>

                <p>De acordo com a definição constante na Lei Geral de Proteção de Dados “LGPD” (Lei Federal nº
                    13.709/18), na maioria das vezes seremos o controlador das suas informações, nesse caso,
                    responsáveis por definir o que acontece com as informações e toda e qualquer medida de segurança
                    para protegê-las.</p>

                <p>Os dados cadastrais dos clientes não são divulgados para terceiros, exceto quando necessários para o
                    processo de entrega, para cobrança ou participação em promoções solicitadas pelos clientes. Seus
                    dados pessoais são peça fundamental para que o pedido chegue em segurança na sua casa, de acordo com
                    o prazo de entrega estipulado.</p>
                <h2>A QUEM A NOSSA POLÍTICA DE PRIVACIDADE SE APLICA?</h2>
                <p>Aplica-se a todos os clientes e usuários da Esplanada Móveis, incluindo os clientes e usuários que
                    acessam o site, aplicativo e lojas físicas, que de alguma forma tenham os dados pessoais tratados
                    por nós.</p>
                <h2>QUAIS INFORMAÇÕES PESSOAIS COLETAMOS E UTILIZAMOS?</h2>
                <p>Durante a sua experiência no uso do nosso site, ou em uma das nossas lojas físicas, podemos coletar
                    diferentes tipos de dados pessoais, de forma automática com o objetivo de conferência, monitoramento
                    e controle, ou fornecidas diretamente por você, como por exemplo para a realização de seu cadastro
                    nas plataformas.</p>

                <p>Informações que você nos fornece durante o cadastro: Dentre as informações que podem ser solicitadas
                    estão: nome completo, e-mail, CPF, data de nascimento, gênero, endereço, números de telefone e
                    número do cartão de crédito.</p>

                <p>Informações coletadas automaticamente pela Esplanada Móveis: coletamos e armazenamos determinadas
                    informações sempre que o você interage conosco. Por exemplo, utilizamos cookies e obtemos
                    informações quando seu navegador acessa o nosso site; quando você clica em anúncios, e-mails de
                    parceiros e outros conteúdos fornecidos por nós em outros sites. Além disso, durante a análise e o
                    monitoramento de suas compras ou outras transações financeiras coletamos tipo de produto;
                    quantidade; valor da mercadoria; valor da transação da compra ou transação; natureza da transação
                    financeira; informações da conta bancária e outros meios utilizados; filiação; informações de renda.
                </p>

                <p>Informações que poderão ser coletadas mesmo que o usuário não esteja cadastrado: Durante a navegação
                    na plataforma poderemos coletar o endereço de IP; informações sobre o dispositivo utilizado para a
                    navegação, produtos e categorias pesquisados ou visualizados; contagem de visualizações, páginas
                    visitadas em outros sites.</p>

                <p>Informações que poderão ser acessadas somente se você nos autorizar: durante a utilização de
                    determinadas funcionalidades em um dos aplicativos poderemos acessar e coletar dados de
                    geolocalização, acesso a lista de contatos e acesso à câmera.</p>
                <h2>COMO E POR QUE UTILIZAMOS OS SEUS DADOS PESSOAIS?</h2>
                <p>Nós utilizamos os dados pessoais como forma de garantir um atendimento de qualidade e uma melhor
                    experiência na sua compra.</p>
                <h2>OS DADOS SÃO NECESSÁRIOS PARA:</h2>
                <p>Entregar os produtos adquiridos ou o serviço contratado;</p>

                <p>Otimizar sua interação conosco;</p>

                <p>Garantir a segurança do site, de seu aplicativo e dos dados que processa;</p>

                <p>Informar o Cliente sobre as ofertas e divulgar os nossos serviços;</p>

                <p>Cumprir obrigações legais;</p>

                <p>Fins administrativos e de gestão.</p>
                <h2>O FORNECIMENTO DOS DADOS PERMITE:</h2>
                <p>Entregar os produtos ou serviços adquiridos;</p>

                <p>Realizar o processo de troca ou devolução de produtos, dentro do prazo estabelecido pelo CDC (Código
                    de Defesa do Consumidor);</p>

                <p>Enviar atualizações sobre o status do pedido e comunicações de serviços; Coordenar com parceiros a
                    entrega ou disponibilização de serviços;</p>

                <p>Prestar serviços adequados às necessidades do Cliente;</p>

                <p>Melhorar a experiência de compra dos clientes na Esplanada Móveis;</p>

                <p>Fazer análises e pesquisas de mercado;</p>

                <p>Manter o Cliente informado sobre os produtos e serviços que oferecemos;</p>

                <p>Executar publicidade online direcionada;</p>

                <p>Prevenir, detectar e investigar atividades que estejam em desacordo com o nosso Código de Ética e
                    Conduta ou que sejam proibidas ou ilegais;</p>

                <p>Melhorar nosso website, produtos e serviços.</p>

                <p>A Esplanada Móveis utiliza bases legais, que podem variar de acordo com a finalidade da coleta, para
                    tratar os dados pessoais dos clientes. O prazo de armazenamento pode mudar conforme a base legal
                    aplicável a cada situação e a finalidade.</p>
                <h2>SERVIÇOS DE MARKETING</h2>
                <p>Os serviços de marketing são oferecidos por meio de comunicações gratuitas sobre ofertas, serviços e
                    produtos dirigidas a você, relacionadas ao seu perfil no site e às compras que fez. Esse serviço
                    abrange e-mails, SMS e WhatsApp. Vale ressaltar que você pode cancelar o serviço, a qualquer
                    momento, acessando “Minha Conta Esplanada Móveis”.</p>
                <h2>COM QUEM NÓS PODEMOS COMPARTILHAR SEUS DADOS PESSOAIS?</h2>
                <p>Para a execução das atividades listadas até aqui, sempre que necessário, nós poderemos compartilhar
                    os seus dados pessoais com outras empresas do nosso grupo, com prestadores de serviços, parceiros ou
                    órgãos reguladores. Jamais comercializamos dados pessoais.</p>

                <p>As informações coletadas somente serão compartilhadas quando forem necessárias:</p>

                <p>I - para prestação adequada dos serviços objeto de suas atividades com empresas parceiras;</p>

                <p>II - proteção em caso de conflito;</p>

                <p>III - mediante decisão judicial ou requisição de autoridade competente;</p>

                <p>IV - com empresas provedoras de infraestrutura tecnológica e operacional, como empresas
                    intermediadoras de pagamento e provedoras de serviço de armazenamento de informações.</p>
                <h2>TRANSFERÊNCIA INTERNACIONAL DE DADOS PESSOAIS</h2>
                <p>Alguns de seus dados pessoais poderão ser transferidos para outros países, por exemplo, quando
                    utilizamos serviços computacionais em nuvem para processamento ou armazenamento de dados,
                    localizados em outro país. Nestas situações, seguiremos também todos os requisitos estabelecidos na
                    legislação vigente, e adotaremos as melhores práticas de mercado para garantir a proteção e
                    privacidade dos seus dados pessoais.</p>
                <h2>ARMAZENAMENTO E SEGURANÇA DOS DADOS PESSOAIS</h2>
                <p>Nós armazenamos seus dados de forma segura em data centers localizados no Brasil, bem como no
                    exterior. Neste caso de armazenamento no exterior, são adotadas todas as medidas legais aplicáveis,
                    em conformidade com a Lei Geral de Proteção de Dados e suas faturas regulamentares, garantindo a
                    proteção e privacidade de seus dados pessoais.</p>

                <p>Nós adotamos as melhores técnicas para proteger os dados pessoais coletados de acessos não
                    autorizados, destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou
                    ilícito, inclusive mecanismos de criptografia. Ressaltamos, porém, que nenhuma plataforma é
                    completamente segura. Se você tiver qualquer preocupação ou suspeita de que os seus dados estejam em
                    risco, entre em contato conosco por meio dos nossos canais de atendimento.</p>
                <h2>POR QUANTO TEMPO ARMAZENAMOS INFORMAÇÕES PESSOAIS?</h2>
                <p>Armazenamos as informações dos clientes pelo prazo necessário, respeitando todas as normas da
                    legislação brasileira.</p>
                <h2>QUAIS SÃO OS SEUS DIREITOS COMO TITULAR DE DADOS?</h2>
                <p>A partir do início da vigência da LGPD, o titular dos dados pessoais terá o direito de obter da
                    Esplanada Móveis, a qualquer momento, mediante requisição formal, informações referentes aos seus
                    dados.</p>

                <p>A Esplanada Móveis terá 15 dias para responder às solicitações dos titulares. Os pedidos serão
                    analisados conforme previsto em legislação vigente e, por questões legais, algumas solicitações
                    podem não ser atendidas.</p>

                <p>Os titulares dos dados, segundo o texto da LGPD, podem exercer os seus direitos por meio de:</p>

                <p>I - confirmação da existência de tratamento;</p>

                <p>II - acesso aos dados;</p>

                <p>III - correção de dados incompletos, inexatos ou desatualizados;</p>

                <p>IV - anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em
                    desconformidade com o disposto nesta Lei;</p>

                <p>V - portabilidade dos dados a outro fornecedor de serviço ou produto, mediante requisição expressa,
                    de acordo com a regulamentação da autoridade nacional, observados os segredos comercial e
                    industrial;</p>

                <p>VI - eliminação dos dados pessoais tratados com o consentimento do titular;</p>

                <p>VII - informação das entidades públicas e privadas com as quais o controlador realizou uso
                    compartilhado de dados;</p>

                <p>VIII - informação sobre a possibilidade de não fornecer consentimento e sobre as consequências da
                    negativa;</p>

                <p>IX - revogação do consentimento.</p>
                <h2>COMO EXERCER OS SEUS DIREITOS COMO TITULAR DE DADOS?</h2>
                <p>Você pode exercer seus direitos acessando a seção “Privacidade”, no “Minha Conta Esplanada Móveis”,
                    disponível no site esplanadamoveis.com.br. Além disso, pode entrar em contato pelo e-mail
                    sac@moveisesplanada.com.br.</p>

                <p>Para mudar suas preferências em relação às notificações (incluindo as comunicações de marketing), a
                    qualquer momento, você pode acessar “Minha Conta Esplanada Móveis”.</p>

                <p>Se não quiser receber nossas comunicações de marketing, também pode cancelar a assinatura clicando no
                    link enviado junto com o e-mail do marketing.</p>
                <p>Crianças podem comprar na Esplanada Móveis?</p>

                <p>A Esplanada Móveis vende produtos para crianças, mas devem ser comprados por adultos. Se você tem
                    menos de 18 anos, precisará fazer a compra junto com um de seus pais ou responsável.</p>
                <h2>COOKIES E TECNOLOGIAS SEMELHANTES</h2>
                <p>Cookies são pequenos arquivos de dados que são colocados no seu computador ou em outros dispositivos
                    (como 'smartphones' ou 'tablets') enquanto você navega no site.</p>
                <p>Utilizamos cookies, pixels e outras tecnologias (coletivamente,'cookie') para reconhecer seu
                    navegador ou dispositivo, aprender mais sobre seus interesses, fornecer recursos e serviços
                    essenciais e também para:</p>

                <p>Acompanhar suas preferências para enviar somente anúncios de seu interesse. Você pode definir suas
                    preferências por meio de sua conta;</p>

                <p>Acompanhar os itens armazenados no seu carrinho de compras;</p>

                <p>Realização de pesquisas e diagnósticos para melhorar o conteúdo, produtos e serviços;</p>

                <p>Impedir atividades fraudulentas;</p>

                <p>Melhorar a segurança.</p>

                <p>Se você bloquear ou rejeitar nossos cookies, não poderá adicionar itens ao seu carrinho de compras,
                    prosseguir para o checkout ou usar nossos produtos e serviços que exijam login.</p>

                <p>Clique em 'Ajuda', nas configurações do seu navegador, para saber como impedi-lo de aceitar cookies e
                    para ser notificado quando receber novos; para ver quando eles expiram e para desativá-los. Nos
                    links abaixo você encontra mais detalhes sobre como desativar os cookies dos navegadores mais
                    populares:</p>

                <p>Google Chrome</p>

                <p>Mozilla Firefox</p>

                <p>Safari</p>

                <p>Internet Explorer</p>

                <p>Microsoft Edge</p>

                <p>Opera</p>
                <h2>COMO VOCÊ PODE MANTER SUAS INFORMAÇÕES PESSOAIS SEGURAS?</h2>
                <p>A Esplanada Móveis utiliza os melhores protocolos de segurança para preservar a privacidade dos dados
                    dos Clientes, mas também recomenda medidas de proteção individual.</p>

                <p>Para manter a segurança e proteção dos seus dados pessoais fornecidos no cadastro ou nas compras, em
                    nenhuma hipótese o seu login e senha devem ser compartilhados com terceiros. Além disso, ao acessar
                    o seu cadastro pela “Minha Conta Esplanada Móveis”, principalmente em computadores públicos,
                    certifique-se de que você realizou o logout da sua conta para evitar que pessoas não autorizadas
                    acessem e utilizem as informações sem o seu conhecimento.</p>

                <p>Não solicitamos dados pessoais por telefone, WhatsApp, SMS ou e-mail. Em nenhuma hipótese eles devem
                    ser fornecidos, pois pode ser uma tentativa de uso indevido.</p>
                <h2>RETENÇÃO E EXCLUSÃO DOS DADOS PESSOAIS</h2>
                <p>Trataremos seus dados pessoais com níveis de proteção elevados, garantindo sua privacidade, durante
                    todo o período que você for nosso cliente, navegar em nossas plataformas e utilizar nossos serviços,
                    ou se tratar de potencial cliente com quem dividimos nossas ofertas de produtos e serviços.</p>

                <p>Quando aplicável, e mesmo se você optar por excluir seus dados pessoais da nossa base de cadastro,
                    poderemos reter alguns ou todos os seus dados pessoais por períodos adicionais para cumprimento de
                    obrigações legais ou regulatórias, para o exercício regular de nossos direitos, atuação em ações
                    judiciais, para fins de auditoria de diversas naturezas, ou outros prazos definidos e fundamentados
                    por bases legais que justifiquem a retenção destes dados.</p>

                <h2>ALTERAÇÕES DESTA POLÍTICA DE PRIVACIDADE</h2>
                <p>Estamos sempre buscando melhorar a experiência de nossos clientes. Dessa forma, nossas práticas de
                    tratamento de dados pessoais poderão sofrer alterações com a inclusão de novas funcionalidades e
                    serviços.</p>

                <p>Valorizamos a transparência no modo em que tratamos seus dados pessoais. Toda vez que alguma condição
                    relevante deste Política de Privacidade for alterada, essas alterações serão válidas, eficazes e
                    vinculantes após a nova versão ser publicada em nosso site. Estas alterações serão comunicadas por
                    meio de um dos canais disponibilizados por você durante o seu cadastro (e-mail, WhatsApp, SMS,
                    dentre outros).</p>

                <p>Como entrar em contato com o encarregado da proteção de dados da Esplanada Móveis?</p>

                <p>O encarregado da proteção de dados é o responsável escolhido pela Esplanada Móveis para atuar como
                    canal de comunicação entre o controlador, os titulares dos dados e a Autoridade Nacional de Proteção
                    de Dados (ANPD), quando ela for formalizada.</p>

                <h2>LEGISLAÇÃO E FORO</h2>
                <p>Esta política será regida, interpretada e executada de acordo com as Leis da República Federativa do
                    Brasil, especialmente a Lei nº 13.709/2018, independentemente das Leis de outros estados ou países,
                    sendo competente o foro de domicílio do Cliente para dirimir qualquer dúvida decorrente deste
                    documento.</p>

                <p>Última atualização: 30 de Setembro de 2022</p>
                <p>Para mais informações acesse nossa página de atendimento&nbsp;<a
                        href="https://www.esplanadamoveis.com.br/central-de-apoio">clicando aqui</a></p>
            </div>
        </div>
    </div>
</div>