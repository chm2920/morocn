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
	
	
	function initKfPanel(){
		var w = $(window).width()
			, h = $(window).height()
			, top = (h - $('#kf_panel').height()) / 2 - 80
			, left = w - $('#kf_panel').width() - 10;
			
		$('#kf_panel').css({
			'top': top + 'px',
			'left': left + 'px'
		}).show();
	}
	
	initKfPanel();
	
	// $(window).scroll(function(){
		// var t = $(window).scrollTop()
			// , pt = parseInt($('#kf_panel').css('top'), 10);
		// $('#kf_panel').css({
			// 'top': pt + t + 'px'
		// });
	// });
	
	$(window).resize(function(){
		initKfPanel();
	});
	
	$('#kf_p_cls').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		$('#kf_panel').hide();
	});
});

if (top.location !== location) { 
	top.location.href = location.href;
}