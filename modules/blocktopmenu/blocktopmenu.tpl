<!-- manias -->
{if $MENU != ''}
	<!-- Menu -->
	<div id="block_top_menu" class="menuManias">
		<!-- <div class="cat-title">{l s="Categories" mod="blocktopmenu"}</div> -->
		<ul class="sf-menu menuTop">
			{$MENU}
		</ul>
	</div>
	<!--/ Menu -->
{/if}

<script>
	$('.menuTop > li').addClass('listaMenuTop');
	//$('.sfHoverForce').addClass('listaMenuTop');
	//$('.menuTop li ul li').removeClass('listaMenuTop');
	$('.menuTop > li > a').addClass('testeo');
	//$('.menuTop li ul li a').removeClass('testeo');
	$('.testeo').append('<div class="hexagono"><div class="hexagonoDos"><div class="icono"></div></div></div>');

	$('#subcategories').addClass('subcategories')
	
	//$('.submenu-container li').wrap('<div class="contManias"></div>');
	//$('.submenu-container li ul li').unwrap('<div class="contManias"></div>');

	$(".icono").each(function(i){
		i++;
		$(this).addClass("ico"+i);
	});	

	$(".listaMenuTop").each(function(i){
		i++;
		$(this).addClass("maniaBackground"+i);
	});	
	$('.submenu-container > li').removeClass("listaMenuTop");

</script>