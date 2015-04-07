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


	// setTimeout(function() {
	// 	$('.cross').trigger('click');
	// }, 5000);
	$('.noquieroCupon').on('click', function(){
		$('.cupon').css('display', 'none')
	});
});
