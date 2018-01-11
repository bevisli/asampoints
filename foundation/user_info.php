<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}
	//使用的时候，引入公共文件后，放在加载最后面
	//引用后可以全局使用$USER_INFO
	if(get_sess_user_id()) {
		$USER['login'] = 1;
		$USER['user_name'] = get_sess_user_name();
		$USER['user_id'] = get_sess_user_id();
		$USER['user_email'] = get_sess_user_email();
		$USER['user_ico'] = get_sess_user_ico()?get_sess_user_ico():'images/user/header.png';

		/* 数据库操作 */
		dbtarget('t',$dbServs);
		$dbo=new dbex();
		/* 用户信息 */
		$t_users = $tablePreStr."users";
		$SQL_USERS = "SELECT * FROM $t_users where user_id=".$USER['user_id']." limit 0,1";
		$USER_INFO = $dbo->getRow($SQL_USERS);
		if($USER_INFO[locked]=='1'){
			$USER_INFO=array();
			set_session('user_id','');
			set_session('user_name','');
			set_session('user_mobile','');
			set_session('user_email','');
			set_session('group_id','');
			set_sess_login_id('');
			unset_cookie('iweb_login');
			echo "此账户已被锁定无法操作！请联系客服人员！<a href='".URL_NAV('logout')."'>退出正常访问</a>";
			echo "<script>alert('您已被锁定无法操作！');</script>";
			exit();
		}
		if(!$USER_INFO[user_ico]){
			$USER_INFO[user_ico]='images/userico.jpg';
		}


	} else {
		$USER['login'] = 0;
		$USER['user_name'] = '';
		$USER['user_id'] = '';
		$USER['user_email'] = '';
		$USER['shop_id'] = '';
		$USER_INFO=array();
		
	}

?>