$(function() {	
	$('#navlist li').hover(function() {
		$(this).find('div.subbox').show();
	},
	function() {
		$(this).find('div.subbox').hide();
	});
	
	$('.subbox .item').hover(function() {
		var iNum = $('#nav_list .subbox div').length;
		var dNum = $(this).find('dt').length;
		var hNum = dNum;
		if(iNum>dNum){
			hNum = iNum;
		}
		$('#nav_list .subbox').css('height',hNum*24+'px');
		$(this).find('dl').css({
			'height': hNum*24+'px',
			'left': $(this).width()+20+'px'
		});
		$(this).find('dl').show();
	},
	function() {
		$(this).find('dl').hide();
	});
});