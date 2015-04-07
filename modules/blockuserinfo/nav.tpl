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

			<div class="login">
				{l s='Login' mod='blockuserinfo'}
			</div>
			<div class="accedeCuenta">
				<form action="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" method="post" id="login_form" class="box">
					<!-- <h3 class="page-subheading">{l s='Already registered?'}</h3> -->
					<div class="form_content">
						<div class="form-group">
							<label for="email">{l s='Email address'}</label>
							<input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}" />
						</div>
						<div class="form-group">
							<label for="passwd">{l s='Password'}</label>
							<span><input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="passwd" name="passwd" value="{if isset($smarty.post.passwd)}{$smarty.post.passwd|stripslashes}{/if}" /></span>
						</div>

						<p class="submit">
							{if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'html':'UTF-8'}" />{/if}
							<button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
								<span>
									<i class="icon-lock left"></i>
									{l s='Sign in'}
								</span>
							</button>
						</p>

						<p class="lost_password form-group"><a href="{$link->getPageLink('password')|escape:'html':'UTF-8'}" title="{l s='Recover your forgotten password'}" rel="nofollow">{l s='Forgot your password?'}</a></p>
						<a class="creaCuenta" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
							<!-- {l s='Login' mod='blockuserinfo'} -->
							Crea una cuenta
						</a>
					</div>
				</form>
			</div>
		{/if}
	</div>

</div>
<!-- /Block usmodule NAV -->
