$(function(){

	$('#homeslider').bxSlider({
		controls: false,
		auto: true
	});

	var i = 0;
	$('.contcomment').slimScroll({
		height: '275px'
	});

	$(function(){
		interval = setInterval(callFunc, 7000);
	});

	function callFunc(){
		$('.cross').trigger('click');
	}
});
