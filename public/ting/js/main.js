$(function(){
	$('.search-select').click(function(e){
		e.stopPropagation();
		$('.search-select ul').hide();
		$(this).find('ul').show();
	});
	$('.search-select li').click(function(e){
		e.stopPropagation();
		var p = $(this).parent()
			, v = $(this).text();
		p.hide();
		p.siblings('b').text('- ' + v + ' -');
		p.parent().parent().find('input').val(v);
	});
	$(document).click(function(){
		$('.search-select ul').hide();
	});
});