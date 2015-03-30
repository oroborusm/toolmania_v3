<!-- Block user information module NAV  -->

<div class="loginUsuario">
	<div class="contenedorLogin">
		{if $is_logged}
			<div class="nombre">
				<span>{$cookie->customer_firstname} {$cookie->customer_lastname}</span>
			</div>
			<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
				<div class="icono"></div>
				<span class="texto">Perfil</span>
			</a>

			<a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}">
				<div class="icono"></div>
				<span class="texto">{l s='Salir' mod='blockuserinfo'}</span>
			</a>
		{else}
			<a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
				{l s='Login' mod='blockuserinfo'}
			</a>
		{/if}		
	</div>

</div>
<!-- /Block usmodule NAV -->
