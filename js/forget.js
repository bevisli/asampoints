function getmobilecode(){
	$.post('/ajax/?act=forgetmobliecode', {mobilecode:jQuery.trim($('#u_mobilecode').val()),mobile:jQuery.trim($('#u_phone').val()),send_code:secode},function(msg) {
		if(msg=='1'){
			//hidemsg();
			$('#checkCode').focus();
			RemainTime();
		}else{
			showmsg('系统提示',jQuery.trim(unescape(msg)));
		}
	});
};

var iTime = 59;
var Account;
function RemainTime(){
	document.getElementById('js_get_phone').disabled = true;
	var iSecond,sSecond="",sTime="";
	if (iTime >= 0){
		iSecond = parseInt(iTime%60);
		iMinute = parseInt(iTime/60)
		if (iSecond >= 0){
			if(iMinute>0){
				sSecond = iMinute + "分" + iSecond + "秒";
			}else{
				sSecond = iSecond + "秒";
			}
		}
		sTime=sSecond;
		if(iTime==0){
			clearTimeout(Account);
			sTime='获取手机验证码';
			iTime = 59;
			document.getElementById('js_get_phone').disabled = false;
		}else{
			Account = setTimeout("RemainTime()",1000);
			iTime=iTime-1;
		}
	}else{
		sTime='没有倒计时';
	}
	document.getElementById('js_get_phone').value = sTime;
}	
function showmsg(title,msg){
	BootstrapDialog.show({title:title,message:msg});
}

function getforget2(){
	$.post('/ajax/?act=getforget2', {mobilecode:jQuery.trim($('#u_mobilecode').val()),mobile:jQuery.trim($('#u_phone').val()),mobilecheckCode:jQuery.trim($('#checkCode').val())},function(msg) {
		if(msg=='1'){
			//hidemsg();
			$('#checkCode').focus();
			RemainTime();
		}else{
			showmsg('系统提示',jQuery.trim(unescape(msg)));
		}
	});
};

