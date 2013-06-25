$(function() {
	$('.nav-td').hover(function() {
		var w = $(this).width(),
			tb = $(this).find('.subbox'),
			iw = tb.width();
		
		if(iw < w){
			tb.css('width', w + 'px');
		} else {
			tb.css('width', iw + 'px');
		}
		$(this).find('table').addClass('hover');
		$(this).find('div.subbox').show();
	},
	function() {
		$(this).find('table').removeClass('hover');
		$(this).find('div.subbox').hide();
	});
	
	$('.subbox .item').hover(function() {
		$(this).addClass('item_hover');
		$(this).find('dl').css({
			'left': $(this).parent().width() + 'px'
		});
		$(this).find('dl').show();
	},
	function() {
		$(this).removeClass('item_hover');
		$(this).find('dl').hide();
	});
	
	$('.subbox dt').hover(function() {
		$(this).attr('width', $(this).width() + 'px');
		$(this).addClass('dt_hover');
	},
	function() {
		$(this).removeClass('dt_hover');
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
		
		$('#kf_hid').css({
			'top': top + 'px',
			'left': w - $('#kf_hid').width() - 2 + 'px'
		}).hide();
		
		if(!$.cookie('kf_dialog')){
			$('#kf_dialog').css({
				'top': h / 2 - 70 + 'px',
				'left': w / 2 - 160 + 'px'
			}).show();
		}
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
		$('#kf_panel').animate({
			'left': '+=180'
		}, 500, function(){
			$('#kf_hid').show();
		});		
	});
	
	$('#kf_hid').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		$('#kf_panel').animate({
			'left': '-=180'
		}, 500);
		$('#kf_hid').hide();
	});	
	
	$('#kf_dlg_close').click(function(){
		$('#kf_dialog').hide();
		$.cookie('kf_dialog', '1', {expires: 1000 * 60});
	});
	
	$('#kf_dlg_cancle').click(function(){
		$('#kf_dialog').hide();
		$.cookie('kf_dialog', '1', {expires: 1000 * 60});
	});
});

if (top.location !== location) { 
	top.location.href = location.href;
}