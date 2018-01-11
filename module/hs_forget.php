<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=0; //当前栏目ID
	$SYSTEM_TITLE='找回密码'; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明

	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_online_user=$tablePreStr.'users';

	$act = get_args('act');
	if($act=='forget'){
		$password1=short_check(get_args('u_pass1'));
		$password2=short_check(get_args('u_pass2'));
		if(strlen($password1) < 6){
			echo "<script>parent.showalert(0,'密码长度在6位以上！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"$(\'.modal-backdrop\').fadeOut();$(\'.bootstrap-dialog\').fadeOut();\" class=\"btn btn-default\">确定</a></div>');</script>";
			exit();
		}

		$t_users=$tablePreStr.'users';

		if(!$password1||!$password2||$password1!=$password2){
			echo "<script>parent.showalert(0,'密码设置错误请重试！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"$(\'.modal-backdrop\').fadeOut();$(\'.bootstrap-dialog\').fadeOut();\" class=\"btn btn-default\">确定</a></div>');</script>";
			exit();
		}

		$post1=array();
		$post1['user_passwd']=md5($password1);
		update_table_info($dbo,$t_users,$post1," user_mobile='".$mobile."'");
		set_session('forget_code_check','0');
		echo "<script>parent.showalert(0,'密码重置成功！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"parent.location.href=\'".URL_NAV('login')."\';\" class=\"btn btn-default\">确定</a></div>');</script>";
		exit();
	}
	if($r[2]=='1'){
			$mobile = short_check(get_args('u_phone'));

			if(strlen($mobile)!=11){
				echo "<script>parent.showalert(0,'手机号码必须为11位！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"$(\'.modal-backdrop\').fadeOut();$(\'.bootstrap-dialog\').fadeOut();\" class=\"btn btn-default\">确定</a></div>');</script>";
				exit();
			}
			set_session('forget_code_check','0');

			$checkusermobile=get_table_info($dbo,$t_online_user,'user_mobile',$mobile);
			if(!$checkusermobile){
				echo "<script>parent.showalert(0,'手机号码错误或该用户不存在在！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"$(\'.modal-backdrop\').fadeOut();$(\'.bootstrap-dialog\').fadeOut();\" class=\"btn btn-default\">确定</a></div>');</script>";
				die();
			}else{
				set_session('forget_mobile',$checkusermobile['user_mobile']);
				echo "<script>parent.location.href='".URL_NAV('forget_2')."';</script>";
			}
	}
	
	if($r[2]=='2'){
			$mobile = get_session('forget_mobile');
			
			//提交上来的短信
			$act = short_check(get_args('act'));
			$checkCode = short_check(get_args('checkCode'));

			if($act=='checkmobile'){
				//短信验证如果正确
				if($checkCode==$_SESSION['mobile_code']){
					//设置开启可以修改密码
					set_session('forget_code_check','1');
					echo "<script>parent.location.href='".URL_NAV('forget_3')."';</script>";
				}
			}

	}

	if($r[2]=='3'){
		
		$code=get_session('forget_code_check');
		$mobile = get_session('forget_mobile');

		//提交上来的修改密码请求
		$act = short_check(get_args('act'));
		//如果短信正确才可以更新密码
		if($code==1&&$act=='change'){
			$password1=short_check(get_args('password1'));
			$password2=short_check(get_args('password2'));
			if(strlen($password1) < 6){
				echo "<script>parent.showalert(0,'密码长度在6位以上！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"$(\'.modal-backdrop\').fadeOut();$(\'.bootstrap-dialog\').fadeOut();\" class=\"btn btn-default\">确定</a></div>');history.go(-1);</script>";
				exit();
			}

			$t_users=$tablePreStr.'users';

			if(!$password1||!$password2||$password1!=$password2){
				echo "<script>parent.showalert(0,'密码设置错误请重试！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"$(\'.modal-backdrop\').fadeOut();$(\'.bootstrap-dialog\').fadeOut();\" class=\"btn btn-default\">确定</a></div>');history.go(-1);</script>";
				exit();
			}

			$post1=array();
			$post1['user_passwd']=md5($password1);
			update_table_info($dbo,$t_users,$post1," user_mobile='".$mobile."'");
			set_session('forget_code_check','0');
			echo "<script>parent.showalert(0,'密码重置成功！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"parent.location.href=\'".URL_NAV('login')."\';\" class=\"btn btn-default\">确定</a></div>');</script>";
			exit();
		}

	}

?>