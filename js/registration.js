function getmobilecode(){
		$.post('/ajax/?act=sentmobliecode', {mobilecode:jQuery.trim($('#u_mobilecode').val()),mobile:jQuery.trim($('#u_phone').val()),send_code:secode},function(msg) {
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
	function showagreement(){
		showmsg('系统提示','<div class="modal-body"><h4 style="text-align:center;">注册服务协议</h4><p>第一条特别提示</p><p>1.  HUBPER GROUP 鹰联物链（以下简称“hubper”）在此特别提醒您（用户）在注册成为用户之前，请认真阅读本《速运通会员服务协议》（以下简称“协议”），确保您充分理解本协议中各条款，包括免除hubper责任的条款及限制用户权利的条款。请您审慎阅读并选择接受或不接受本协议。除非您接受本协议所有条款，否则您无权注册、登录或使用本协议所涉服务。您的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。</p><p>2.  本协议约定hubper与用户之间关于速运通会员服务（以下简称“服务”）的权利义务。“用户”是指注册、登录、使用本服务的机构或个人。本协议可由hubper随时更新，更新后的协议条款一旦公布即代替原来的协议条款，恕不再另行通知。在hubper修改协议条款后，如果用户不接受修改后的条款，请立即停止使用hubper提供的服务，用户继续使用hubper提供的服务将被视为接受修改后的协议。</p><p>第二条会员注册</p><p>1.  用户在使用本服务前需要注册一个“速运通会员”账号。“速运通会员”账号应当使用手机号码绑定注册，请用户使用尚未与“速运通会员”账号绑定的手机号码，以及未被hubper根据本协议封禁的手机号码注册“速运通会员”账号。hubper可以根据用户需求或产品需要对账号注册和绑定的方式进行变更，而无须事先通知用户。</p><p>2.  如果注册申请者有被hubper封禁的先例或涉嫌虚假注册及滥用他人名义注册，及其他不能得到许可的理由，hubper将拒绝其注册申请。</p><p>3.  注册成功后，用户可以通过速运通网站页面中“个人中心”界面浏览或更改本人的个人信息。</p><p>4.  用户注册时所填写的信息如有变动，用户需通过“个人中心”界面及时更改。用户因未及时更改造成的损失hubper概不负责。</p><p>第三条服务内容</p><p>1.  本服务的具体内容由hubper根据实际情况提供，包括但不限于：   （1）快递下单：用户可以在速运通网站界面选择快递公司下单</p><p>第四条用户账户安全</p><p>1.  注册用户的登陆密码管理由用户来负责，用户不应把自己的密码告诉其他第三者。</p><p>2. 用户如果遗失自己的登陆密码，需及时到速运通网站“个人中心”页面中找回密码。</p><p>第五条服务的变更、中断、终止</p><p> 1. 因设备维修或更换、故障和通信中断等技术原因而中断业务，hubper可视情况事前或事后通知用户。</p><p> 2. 当用户发生如下情况时，hubper可单方面终止本协议，取消用户继续使用hubper产品及服务的资格：</p><p>（1）用户死亡；</p><p>（2）盗用他人的个人信息或手机；</p><p>（3）注册用户时提供虚假信息；</p><p>（4）以非法手段（包括且不限于黑客攻击等）来积累或使用提成；</p><p>（5）妨碍其他用户的正常使用；</p><p>（6）伪称是hubper的工作人员或管理人员；</p><p>（7）擅自强行更改hubper的计算机系统.</p></div><div class="modal-footer"><button type="button" class="btn btn-default" data-dismiss="modal">返回</button></div>');
	}

