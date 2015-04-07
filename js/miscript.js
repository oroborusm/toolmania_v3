$(function(){

	$('#homeslider').bxSlider({
		controls: false,
		auto: true
	});

	var i = 0;
	$('.contcomment').slimScroll({
		height: '275px'
	});

	$('.añadeCarrituHome').on('click', function(){
		setTimeout(function() {
			$('.cross').trigger('click');
		}, 5000);
	});

	setInterval(function() {
		$('.telefono').toggleClass('tada');
	}, 4000);


	setTimeout(function() {
		$('.dialog').addClass('dialog--open');
	}, 5000);

	$('.closeDialog').on('click',function(){
		$('.dialog').removeClass('dialog--open');
		$('.dialog').addClass('dialog--close');
	});


	// var dlgtrigger = document.querySelector( '[data-dialog]' ),
	// 	somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
	// 	dlg = new DialogFx( somedialog );
	//
	// dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );



})();
