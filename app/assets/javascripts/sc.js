//告诉好友
function copyToClipBoard(){
   var clipBoardContent=''; 
   //获取页面标题
   //clipBoardContent+=document.title;
   //获取页面地址
	if(document.all){
	   clipBoardContent+=window.location;
	   window.clipboardData.setData("Text",clipBoardContent);
	   alert("复制成功，请粘贴到你的QQ/MSN上推荐给你的好友");
	}else if(window.sidebar){
	   clipBoardContent+=window.location;
	   window.clipboardData.setData("Text",clipBoardContent);
	   alert("复制成功，请粘贴到你的QQ/MSN上推荐给你的好友");
	}else{
		alert("对不起，您的浏览器不支持此操作!\n请手动复制网址。")
	}
  }
/*用户分享*/
function share(){ 
document.writeln("<a href=\"javascript:(function(){window.open('http://v.t.sina.com.cn/share/share.php?title='+encodeURIComponent(document.title)+'&url='+encodeURIComponent(location.href)+'&source=bookmark','_blank','width=450,height=400');})()\" title=\"新浪微博分享\"><img src=\"/assets/sc/ico1_s.png\"  alt=\"新浪微博分享\" border=\"0\"></a> <a href=javascript:(function(){window.open('http://v.t.qq.com/share/share.php?title='+encodeURI(document.title)+'&url='+encodeURI(document.location)+'&appkey='+encodeURI(\"appkey\")+'','转播到腾讯微博','width=450,height=400');})() title=\"转播到腾讯微博\"><img src=\"/assets/sc/ico2_s.png\"  alt=\"转播到腾讯微博\" border=\"0\"></a> <a href=\"javascript:window.open(\'http://share.renren.com/share/buttonshare.do?title=\'+encodeURIComponent(document.title.substring(0,76))+\'&link=\'+encodeURIComponent(location.href)+\'&content=\',\'_blank\',\'scrollbars=no,width=600,height=450,left=75,top=20,status=no,resizable=yes\'); void 0\" title=\"转帖到人人网\"><IMG alt=转帖到人人网 src=\"/assets/sc/ico3_s.png\"></a> <a href=\"javascript:window.open(\'http:\/\/www.kaixin001.com\/repaste\/share.php?rtitle=\'+encodeURIComponent(document.title.substring(0,76))+\'&rurl=\'+encodeURIComponent(location.href)+\'&rcontent=\'+encodeURIComponent(document.title.substring(0,76)),\'_blank\',\'scrollbars=no,width=600,height=450,left=75,top=20,status=no,resizable=yes\'); void 0\" title='转帖到开心网'><IMG alt=转帖到开心网 src=\"/assets/sc/ico4_s.png\" alt=转帖到开心网><\/a> <a href=javascript:(function(){window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(document.location.href)+'');})() title=\"分享到QQ空间\"><img src=\"/assets/sc/ico5_s.png\"  alt=\"分享到QQ空间\" border=\"0\"></a> <a href=javascript:; onclick=\"copyToClipBoard();\"  title=\"点击复制网址\"><img src=\"/assets/sc/ico6_s.png\"  alt=\"点击复制网址\" border=\"0\"></a>");}