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
{capture name=path}<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">{l s='My account'}</a><span class="navigation-pipe">{$navigationPipe}</span><span class="navigation_page">{l s='My addresses'}</span>{/capture}

<div class="direcciones">
    <h1 class="page-heading">{l s='My addresses'}</h1>
    <p class="recomendacion">{l s='Please configure your default billing and delivery addresses when placing an order. You may also add additional addresses, which can be useful for sending gifts or receiving an order at your office.'}</p>
    {if isset($multipleAddresses) && $multipleAddresses}
    <div class="addresses">
        <p class="tituloDirecciones">{l s='Your addresses are listed below.'}</p>
        <p class="p-indent">{l s='Be sure to update your personal information if it has changed.'}</p>
        {assign var="adrs_style" value=$addresses_style}
        <div class="listaDireccion">
        {foreach from=$multipleAddresses item=address name=myLoop}
            <div class="contenedorListaDireccion">
                <ul class="{if $smarty.foreach.myLoop.last}last_item{elseif $smarty.foreach.myLoop.first}first_item{/if}{if $smarty.foreach.myLoop.index % 2} alternate_item{else} item{/if} box">
                    <li><h3 class="page-subheading">{$address.object.alias}</h3></li>
                    {foreach from=$address.ordered name=adr_loop item=pattern}
                        {assign var=addressKey value=" "|explode:$pattern}
                        <li>
                        {foreach from=$addressKey item=key name="word_loop"}
                            <span {if isset($addresses_style[$key])} class="{$addresses_style[$key]}"{/if}>
                                {$address.formated[$key|replace:',':'']|escape:'html':'UTF-8'}
                            </span>
                        {/foreach}
                        </li>
                    {/foreach}
                    <li class="address_update">
                        <a class="botonDireccion" href="{$link->getPageLink('address', true, null, "id_address={$address.object.id|intval}")|escape:'html':'UTF-8'}" title="{l s='Update'}">
                            <span>{l s='Update'}<div class="update"></div></span>
                        </a><!--  
                        --><a class="botonDireccion" href="{$link->getPageLink('address', true, null, "id_address={$address.object.id|intval}&delete")|escape:'html':'UTF-8'}" onclick="return confirm('{l s='Are you sure?' js=1}');" title="{l s='Delete'}">
                            <span>{l s='Delete'}<div class="remove"></div></span>
                        </a>
                    </li>
                </ul>
            </div>
        {if $smarty.foreach.myLoop.index % 2 && !$smarty.foreach.myLoop.last} 
        </div>
        <div class="bloc_adresses row">
        {/if}
        {/foreach}
        </div>
    </div>
    {else}
        <p class="alert alert-warning">{l s='No addresses are available.'}</p>
    {/if}
    <div class="agregarNueva">
        <a href="{$link->getPageLink('address', true)|escape:'html':'UTF-8'}" title="{l s='Add an address'}" class="btn btn-default button button-medium"><span>{l s='Add a new address'}<i class="icon-chevron-right right"></i></span></a>
    </div>
<!--     <ul class="volver">
        <li><a class="volverCuenta" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}"><span><i class="icon-chevron-left"></i> {l s='Back to your account'}</span></a></li>
        <li><a class="volverHome" href="{$base_dir}"><span><i class="icon-chevron-left"></i> {l s='Home'}</span></a></li>
    </ul>
 -->
    <p class="navegador">
        <a class="volverCompra" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">
            <span class="icon-chevron-left">
                {l s='Back to Your Account'}
            </span>
            <i class="icon-chevron-left"></i>
        </a>

        <a class="checkout" href="{$base_dir}">
            <span>
                {l s='Home'}

                <i class="icon-chevron-right right"></i>
            </span>
        </a>
    </p>
</div>
    