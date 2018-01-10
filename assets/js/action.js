/*悬浮走动*/
function action(obj,left,top,step){
	var timer=null;/*定时器*/
	var _left=left;/*默认left距离*/
	var _top=top;/*默认top距离*/
	var _step=step;
	var top_folg=false;/*控制高度-锁*/
	var left_folg=true;/*控制宽度-锁*/
	/*var win_width=$(window).width()-$(".divbody").width()-600;//获取并计算浏览器初始宽度
	var win_height=$(window).height()-$(".divbody").height()-400;//获取并计算浏览器初始高度*/
	timer=setInterval(function(){
		if(!top_folg){
			_top=_top+_step;
			if(_top>=1200){top_folg=true;};
		}else{
			_top=_top-_step;
			if(_top<=700){top_folg=false;};
		};
		if(left_folg){
			 _left++;
			if(_left>=1200){left_folg=false;};
		}else{
			_left--;
			if(_left<=400){left_folg=true;};
		};
		$("."+obj).animate({
			left:_left,
			top:_top
		},1);
		
	},15);
}
//显示悬浮的红包
function showhongbao(){
	$('<div class="divbody"><a class="btn c_adver" href="/bonus/" target="_blank"></a></div><div class="divbody1"><a class="btn c_adver" href="/bonus/" target="_blank"></a></div><div class="divbody2"><a class="btn c_adver" href="/bonus/" target="_blank"></a></div>').appendTo('body');
}
