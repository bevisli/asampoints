<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$userid=get_sess_user_id();
	set_session('user_id','');
	set_session('user_name','');
	set_session('user_nice','');
	set_session('user_email','');
	set_session('group_id','');
	if($userid==1){
	set_session('user_sign','');
	}
	set_sess_login_id('');
	$_SESSION['app']['weibo']='';
	$_SESSION['app']['qq']='';
	$_SESSION['wx_openid']='';
	unset_cookie('iweb_login');

	if($_SERVER['HTTP_REFERER']){
		$url=$_SERVER['HTTP_REFERER'];
		$in=strpos($url,'outuserid=');//把退出时的userid传回，如用户立刻在次登录时判断是否和退出时是同一账号
		if($in){
			$url=substr($url,0,$in-1);
		}
		//debug 测试用
		//$url=strpos($url,"?")?$url.'&outuserid='.$userid:$url.'?outuserid='.$userid;
		
		$user_agent = $_SERVER['HTTP_USER_AGENT'];
		if (strpos($user_agent, 'MicroMessenger') === false) {
			header('Location: ' .$url);
		}else{
			header('Location: /');
		}
	}
	echo "<script>top.location.href='/'</script>";
	exit();
?>