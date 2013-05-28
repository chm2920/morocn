$(function(){
	$('.search-select').click(function(e){
		e.stopPropagation();
		$('.search-select ul').hide();
		$(this).find('ul').show();
	});
	$('.search-select li').click(function(e){
		e.stopPropagation();
		var p = $(this).parent();
		p.hide();
		p.siblings('b').text('- ' + $(this).text() + ' -');
	});
	$(document).click(function(){
		$('.search-select ul').hide();
	});
});