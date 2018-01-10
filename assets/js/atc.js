jQuery.cookie=function(name,value,options){if(typeof value!='undefined'){options=options||{};if(value===null){value='';options.expires=-1;}
var expires='';if(options.expires&&(typeof options.expires=='number'||options.expires.toUTCString)){var date;if(typeof options.expires=='number'){date=new Date();date.setTime(date.getTime()+(options.expires*24*60*60*1000));}else{date=options.expires;}
expires='; expires='+date.toUTCString();}
var path=options.path?'; path='+options.path:'';var domain=options.domain?'; domain='+options.domain:'';var secure=options.secure?'; secure':'';document.cookie=[name,'=',encodeURIComponent(value),expires,path,domain,secure].join('');}else{var cookieValue=null;if(document.cookie&&document.cookie!=''){var cookies=document.cookie.split(';');for(var i=0;i<cookies.length;i++){var cookie=jQuery.trim(cookies[i]);if(cookie.substring(0,name.length+1)==(name+'=')){cookieValue=decodeURIComponent(cookie.substring(name.length+1));break;}}}
return cookieValue;}};if($.cookie("disvideo")==1){$('.disvideo').hide();}
var showalertcount=1;
function showalert(keyw,stitle,divname){if(!divname||divname==undefined){divname="#AllObjMsg";}$(divname).html(stitle);if(keyw==1){setTimeout("$('"+divname+"').fadeOut();",1000);}$(divname).show();}
function hiddendiv(divname){if(!divname){divname="#AllObjMsg";}$(divname).fadeOut();}
function goback(val){if(val){location.href=val;window.location.href=val;}else{val=$('#PREVURL').val();location.href=val;window.location.href=val;}}
if($("#AllObjMsg").length<1){$('body').append('<div id="AllObjMsg"></div><iframe id="modalframe" name="modalframe" style="display:none;border:0;" src="" height="0" width="0"></iframe>');}
$(document).ready(function(){$(".scrollLoadimg").click(function(){scrollLoadimg();});$("#searchBox").focus(function() {var e = $(".navbar .navbar-Box").width() + 180 + "px";$(".navbar .navbar-Box").hide(),$(this).animate({width: e},200)}),$("#searchBox").blur(function() {$(this).animate({width: "180px"},200, "swing",function() {$(".navbar .navbar-Box").show()})});var showCaseItems=$('.show-case-item').hide();var splashes=$('.splash').hide();splashes.eq(0).show();showCaseItems.eq(0).show();var prevIndex=-1;var nextIndex=0;var currentIndex=0;$('#banner-pagination li a').click(function(){nextIndex=parseInt($(this).attr('rel'));if(nextIndex!=currentIndex){$('#banner-pagination li a').html('<img src="assets/img/slidedot.png" alt="slide"/>');$(this).html('<img src="assets/img/slidedot-active.png" alt="slide"/>');currentIndex=nextIndex;if(prevIndex<0)
prevIndex=0;splashes.eq(prevIndex).css({opacity:1}).animate({opacity:0},500,function(){$(this).hide();});splashes.eq(nextIndex).show().css({opacity:0}).animate({opacity:1},500,function(){});showCaseItems.eq(prevIndex).css({opacity:1}).animate({opacity:0},500,function(){$(this).hide();showCaseItems.eq(nextIndex).show().css({opacity:0}).animate({opacity:1},200,function(){});});prevIndex=nextIndex;}
return false;});$(window).scroll(function(){var scrolltop=$(this).scrollTop();if(scrolltop>=300){$("#elevator").show();$("#elevator").css('display','block');}else{$("#elevator").hide();}});$("#elevator").click(function(){$("html,body").animate({scrollTop:0},500);});$(".qr").hover(function(){$(".qr-popup").show();},function(){$(".qr-popup").hide();});});var arrowelm=$('#speak').find('.arrowdown');var speakTimer=null;var current=0;function changeAnim(index){var curLi=$('#joinus li').eq(index);var text=curLi.find('img').attr('alt');$('#speak').find('strong').html(text);arrowelm.stop().animate({'left':curLi.attr('rel')},200);curLi.addClass('active').siblings().removeClass('active');}
$('#joinus li').hover(function(){if(speakTimer){window.clearInterval(speakTimer)}
var index=$(this).index();changeAnim(index)},function(){current=$(this).index();go()});function delchat(val){showalert(0,"确定删除该聊天信息？<br /><a class='btn pd215' href='javascript:;' onclick='dodelchat("+val+");'>确定</a> 　 <a class='btn pd215' href='javascript:;' onclick='hiddendiv();'>取消</a>");}
function dodelchat(val){$.post("/ajax/",{act:'dodelchat',sid:val},function(data,status){if(data){showalert(1,data);$('#listchat'+val).fadeOut();}else{showalert(1,'删除失败！');}});}
function go(){if(speakTimer){window.clearInterval(speakTimer)}
speakTimer=window.setInterval(function(){if(current>3){current=0}
changeAnim(current);current++;},2000)}function addfriendclick(button,dataid,css1,css2,showtext){$(button).click(function(){var cuid=$(this).attr(dataid);var thisbox=$(this);$.post(sitedomain+"/ajax/",{act:'questionClick',datado:'addfriend',sid:cuid},function(data,status){if(data=='已关注'||data=='关注TA'){if(data=='已关注'){thisbox.removeClass(css1);thisbox.removeClass(css2);thisbox.addClass(css2);if(showtext==1){thisbox.html(data)}}else{thisbox.addClass(css1);thisbox.removeClass(css2);thisbox.addClass(css1);if(showtext==1){thisbox.html(data)}}}else{showalert(1,"前方高能")}})})}
go();
var scrollLoad = (function (options) {
	var defaults = (arguments.length == 0) ? { src: 'xSrc', time: 300} : { src: options.src || 'xSrc', time: options.time ||300};
	var camelize = function (s) {
		return s.replace(/-(\w)/g, function (strMatch, p1) {
			return p1.toUpperCase();
		});
	};
	this.getStyle = function (element, property) {
		if (arguments.length != 2) return false;
		var value = element.style[camelize(property)];
		if (!value) {
			if (document.defaultView && document.defaultView.getComputedStyle) {
				var css = document.defaultView.getComputedStyle(element, null);
				value = css ? css.getPropertyValue(property) : null;
			} else if (element.currentStyle) {
				value = element.currentStyle[camelize(property)];
			}
		}
		return value == 'auto' ? '' : value;
	};
	var _init = function () {
		var offsetPage = window.pageYOffset ? window.pageYOffset : window.document.documentElement.scrollTop,
			offsetWindow = offsetPage + Number(window.innerHeight ? window.innerHeight : document.documentElement.clientHeight),
			docImg = document.images,
			_len = docImg.length;
		if (!_len) return false;
		for (var i = 0; i < _len; i++) {
			var attrSrc = docImg[i].getAttribute(defaults.src),
				o = docImg[i], tag = o.nodeName.toLowerCase();
			if (o) {
				postPage = o.getBoundingClientRect().top + window.document.documentElement.scrollTop + window.document.body.scrollTop; postWindow = postPage + Number(this.getStyle(o, 'height').replace('px', ''));
				if ((postPage > offsetPage && postPage < offsetWindow) || (postWindow > offsetPage && postWindow < offsetWindow)) {
					if (tag === "img" && attrSrc !== null) {
						o.setAttribute("src", attrSrc);
					}
					o = null;
				}
			}
		};
		window.onscroll = function () {
			setTimeout(function () {
				_init();
			}, defaults.time);
		}
	};
	return _init();
});
scrollLoad();
function scrollLoadimg(){
	var defaults = (arguments.length == 0) ? { src: 'xSrc', time: 300} : { src: options.src || 'xSrc', time: options.time ||300};
	var docImg = document.images,
		_len = docImg.length;
	if (!_len) return false;
	for (var i = 0; i < _len; i++) {
		var attrSrc = docImg[i].getAttribute(defaults.src),
			o = docImg[i], tag = o.nodeName.toLowerCase();
		if (o) {
			if (tag === "img" && attrSrc !== null) {
				o.setAttribute("src", attrSrc);
			}
			o = null;
		}
	};
}