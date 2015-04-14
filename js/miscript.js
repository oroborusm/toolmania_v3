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

	// $('[placeholder]').focus(function() {
	//   var input = $(this);
	//   if (input.val() == input.attr('placeholder')) {
	//     input.val('');
	//     input.removeClass('placeholder');
	//   }
	// }).blur(function() {
	//   var input = $(this);
	//   if (input.val() == '' || input.val() == input.attr('placeholder')) {
	//     input.addClass('placeholder');
	//     input.val(input.attr('placeholder'));
	//   }
	// }).blur();
	//
	// $('[placeholder]').parents('form').submit(function() {
	//   $(this).find('[placeholder]').each(function() {
	//     var input = $(this);
	//     if (input.val() == input.attr('placeholder')) {
	//       input.val('');
	//     }
	//   })
	// });


	//$('input, textarea').placeholder({customClass: 'my-placeholder'});
});
