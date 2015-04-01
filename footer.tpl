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
{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
						{if isset($right_column_size) && !empty($right_column_size)}
							
						{/if}
					</div><!-- popularesMasVendidos -->







				</div>
			</div>

			
			
		<!--</div> esto abre desde el archivo header.tpl#page -->


					{if isset($HOOK_HOME) && $HOOK_HOME|trim}
					<!-- hook_home arriba en los comentarios quedo el contenido que va aca por default-->
						<!-- <div class="homeInfo">
							<h3>alguna metodologia que explicar?</h3>
							<ul>
								<li>
									<div class="icoInfo1"></div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</li>
								<li>
									<div class="icoInfo2"></div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</li>
								<li>
									<div class="icoInfo3"></div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</li>
							</ul>

						</div> -->

						<div class="contenedorPartners">

							  <!-- SilverTrack requires only this part -->
							  <div class="owl-carousel">
							      <div class="item"><img src="themes/toolmanía_v3-master/img/1.jpg"></div>
							      <div class="item"><img src="themes/toolmanía_v3-master/img/2.jpg"></div>
							      <div class="item"><img src="themes/toolmanía_v3-master/img/3.jpg"></div>
							      <div class="item"><img src="themes/toolmanía_v3-master/img/4.jpg"></div>
							      <div class="item"><img src="themes/toolmanía_v3-master/img/5.jpg"></div>
							      <div class="item"><img src="themes/toolmanía_v3-master/img/7.jpg"></div>
							  </div>
							
						</div>
					{/if}



			{if isset($HOOK_FOOTER)}
				<!-- Footer -->
				
				<div class="footer-container">
					<footer id="footer">
						<div class="row">{$HOOK_FOOTER}

						</div>
					</footer>
					<!-- #footer -->
				</div>
				
			{/if}
	</div>


{/if}
{include file="$tpl_dir./global.tpl"}
	<script>
		$('.owl-carousel').owlCarousel({
			autoplay:true,
    		autoplayHoverPause:true,
			autoplayTimeout:3000,
		    loop:true,
		    margin:10,
		    nav:false,
		    pagination:true,
		    responsive:{
		        0:{
		            items:1
		        },
		        600:{
		            items:3
		        },
		        1000:{
		            items:5
		        }
		    }
		})
		
	</script>
    </div>	


	</body>
</html>
