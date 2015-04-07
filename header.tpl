{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="{$lang_iso}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$lang_iso}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$lang_iso}"><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$lang_iso}"><![endif]-->
<html lang="{$lang_iso}">
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
{/if}
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />

		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />


		<link rel="stylesheet" href="{$css_dir}normalize.css">
		<link rel="stylesheet" href="{$css_dir}verticalmenu.css">
		<link rel="stylesheet" href="{$css_dir}estilos.css">
		<link rel="stylesheet" href="{$css_dir}animate.css">
		<link rel="stylesheet" href="{$css_dir}internos.css">
		<link rel="stylesheet" href="{$css_dir}owl.carousel.css">
		<link rel="stylesheet" href="{$css_dir}fancybox.css">



{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
	{$js_def}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
	{/foreach}
{/if}
	<script type="text/javascript" src="{$js_dir}modernizr.custom.js"></script>
	<script type="text/javascript" src="{$js_dir}miscript.js"></script>

	<script type="text/javascript" src="{$js_dir}carrusel.js"></script>
	<script type="text/javascript" src="{$js_dir}slimscroll.min.js"></script>
	<script type="text/javascript" src="{$js_dir}owl.carousel.min.js"></script>




		{$HOOK_HEADER}

		<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->




	</head>
	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{/if}{if $hide_right_column} hide-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso}">
	{if !isset($content_only) || !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span></p>
			</div>
		{/if}

		{if $logged}
		  <div class="cupon" style="display:none;">
		  </div>
		{else}
			{if $page_name == 'authentication'}
				<div class="cupon" style="display:none;">
				</div>
			{else}
			  <div class="cupon">
			    <div class="avisoCupon">
			      <p>Si te logeas hay cupon de descuento washo</p>
			      <a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
							<span>click para cupon</span>
						</a>
						<div class="noquieroCupon">X</div>
			    </div>
			  </div>
			{/if}
		{/if}

		<header>
			<div class="header">
				<figure>
					<a href="{$base_dir}" title="{$shop_name|escape:'html':'UTF-8'}">
						<img src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"/>
					</a>
				</figure>
				<div class="headerCOnt">
					{if isset($HOOK_TOP)}{$HOOK_TOP}{hook h="displayNav"}{/if}
				</div>
			</div>
			<div class="telefono animated tada">
			</div>
			<div class="telefonoContenedor">
				<span>223792188</span>
			</div>
		</header>

		<div id="page">
			<div class="columns-container">
				<div id="columns" class="container">
					{if $page_name !='index' && $page_name !='pagenotfound'}
						{include file="$tpl_dir./breadcrumb.tpl"}
					{/if}


	{/if}
