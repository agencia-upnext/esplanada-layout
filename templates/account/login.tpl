{% embed "snipplets/page-header.tpl" %}
	{% block page_header_text %}{{ 'Iniciar sesión' | translate }}{% endblock page_header_text %}
{% endembed %}

{# Login Form #}

<section class="account-page mb-4">
	<div class="container">
		<div class="d-flex align-items-center warning-box mb-4">
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" class="mr-2 d-md-block d-none">
				<g id="SVGRepo_bgCarrier" stroke-width="0"/>
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"/>
				<g id="SVGRepo_iconCarrier"> <g clip-path="url(#clip0_429_11160)"> <circle cx="12" cy="11.9999" r="9" stroke="#1e2936" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/> <rect x="12" y="8" width="0.01" height="0.01" stroke="#1e2936" stroke-width="3.75" stroke-linejoin="round"/> <path d="M12 12V16" stroke="#1e2936" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/> </g> <defs> <clipPath id="clip0_429_11160"> <rect width="24" height="24" fill="white"/> </clipPath> </defs> </g>
			</svg>

			<p class="mb-0">
				Estamos de cara nova, para ter acesso ao seu cadastro, por favor clique em "Esqueceu a Senha" e crie uma nova senha de acesso.
				Caso tenha um pedido antigo que deseja acompanhar <a href="https://wa.me/5511998804287" target="_blank" rel="noopener noreferrer">clique aqui</a>
				e acesse o whatsapp do nosso time de pós venda.
			</p>
		</div>

		<div class="row">
			<div class="col-md-5">
				{{ component('forms/account/login' , {
					validation_classes: {
						link: 'btn-link font-small ml-1',
						text_align: 'text-center',
						text_size: 'font-small',
					},
					spacing_classes: {
						top_2x: 'mt-2',
						bottom_2x: 'mb-2',
						bottom_3x: 'mb-3',
						bottom_4x: 'mb-4',
					},
					form_classes: {
						facebook_login: 'btn btn-secondary d-block mb-4',
						password_toggle: 'btn',
						input_help_align: 'text-right',
						input_help_link: 'btn-link btn-link font-small mb-2 mr-1',
						help_align: 'text-center',
						help_text_size: 'font-small',
						help_link: 'btn-link btn-link font-small mb-2 ml-1',
						submit: 'btn btn-primary btn-big btn-block',
						submit_spinner: 'icon-inline icon-spin svg-icon-mask ml-2'
					}})
				}}
			</div>
		</div>
	</div>
</section>