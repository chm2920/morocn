$(function() {
//TAB切换
  $("div.pro_show .title li").hover(function() {
	 $("div.pro_show .title li").removeClass("curr");
	 $("div.pro_content .tab").css('z-index','-1');
	 $(this).addClass("curr");
	 $("div.pro_content .tab:eq("+$(this).index()+")").css('z-index','10');
  });
  
  
//滚动条
$('.jScrollbar').jscroll({W:"5px"//设置滚动条宽度
	,Bg:"#f1f1f1"
	,Bar:{Bd:{Out:"#909090",Hover:'#909090'}
		,Bg:{Out:"#909090",Hover:"#909090",Focus:"#909090"}}//设置滚动条滚轴背景：鼠标离开(默认)，经过，点击
	,Btn:{btn:false}
	,Fn:function(){}//滚动时候触发的方法
	});
		
  $(".block_box a").hover(function() {
	 $(this).stop().fadeTo("fast",0.5);
  },function() {
	 $(this).stop().fadeTo("fast",1);
  });
 //判断滚动条距离上面的高度是否为0来判断是否显示返回头部模块
 $(window).scroll(function(){
  var top=$(window).scrollTop();
  if(top>105){
   $(".news_right").addClass("news_fixed");
  }else{
   $(".news_right").removeClass("news_fixed");
  }
 });
//点击显示faq
	$('.faq_list li a').click(function(){
		if($(this).parent().find('div').is(":visible")) {
			$(this).parent().find('div').hide();
		}else{
			$(this).parent().find('div').show();
		}
	});
//导航
$('#navlist li').hover(function() {
    $(this).find('div.subbox').show();
  },
  function() {
    $(this).find('div.subbox').hide();
  })
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
  })
  $('#language .en').hover(function() {
    $(this).css("background-position", "right -36px");
    $('#language .cn').css("background-position", "0 -36px");
  },
  function() {
    $(this).css("background-position", "right 0");
    $('#language .cn').css("background-position", "0 0");
  });
  $(".soroll").scrol({
    sctype: false,
    //true 往复 false 循环
    controls: "none",
    //none 按钮无 number 数字 next 前后
    contid: "dict",
    //控制按钮的id
    direct: "top",
    speed: 1000,
    auto: true,
    //是否自动滚动
    pause: 3000 //翻页停顿时间，0不翻页
  });
});
function showRoom(classname,roomid){
	//alert($('.'+classname+' img').eq(roomid).attr("name"));
	$('.'+classname+' img:not(:first)').stop().animate({'opacity':0}, 100);
	$('.'+classname+' img').eq(roomid).stop().animate({'opacity':1}, 500);

};
function showRoom2(classname){
	//alert();
	$('.'+classname+' img:not(:first)').stop().animate({'opacity':0}, 100);
	$('.'+classname+' img').eq($("#map_click").attr("value")).stop().animate({'opacity':1}, 500);

};
function showRoom3(url,uid,nullID,roomid){
	//alert();
	$("#map_click").val(roomid);
  $.post(url,
  function(result) {
    $(uid).html(result);
  });
   $(nullID).click(function(){
      return false;
   });//点击让A标签失效
};
function ajax_list(url,uid,nullID,aid) {
  $(".sale_list li a").removeClass('curr');
  $(aid).addClass('curr');
  $.post(url,
  function(result) {
    $(uid).html(result);
  });
   $(nullID).click(function(){
      return false;
   });//点击让A标签失效
}
function ow(owurl){
var tmp=window.open("about:blank","","fullscreen=1")
tmp.moveTo(0,0)
tmp.resizeTo(screen.width+20,screen.height)
tmp.focus()
tmp.location=owurl
}