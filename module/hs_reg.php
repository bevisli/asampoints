<?php
	/************index模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=1; //当前栏目ID
	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明

	$act = get_args('act');
	if($act=='reg'){
		//数据表定义区
		$t_users = $tablePreStr."users";

		$post['user_name'] = lib_replace_end_tag(short_check(get_args('u_name')));
		$post['express_address'] = lib_replace_end_tag(short_check(get_args('u_address')));
		$post['express_name'] = lib_replace_end_tag(short_check(get_args('u_name')));
		$post['user_mobile']=lib_replace_end_tag(short_check(get_args('u_phone')));
		$post['user_mobile_code'] = intval(get_args('u_mobilecode'));


		$checkCode=intval(get_args('checkCode'));
		$password = short_check(get_args('u_pass1'));

		if($post['user_mobile_code']=='86'){
			if(strlen($post['user_mobile'])!=11){
				echo "<script>parent.alert('手机号码必须为11位！');</script>";
				die();
			}
			if($post['user_mobile']!=$_SESSION['mobile'] or $checkCode!=$_SESSION['mobile_code'] or empty($post['user_mobile']) or empty($checkCode)){
				echo "<script>parent.alert('手机验证码输入错误！');</script>";
				die();
			}
		}

		$post['mobile_check'] = 1;

		$post['rank_id'] = 1;
		$post['reg_time'] = date('Y-m-d H:i:s',time());
		$post['last_login_time'] = date('Y-m-d H:i:s',time());
			
		if(strlen($password) < 6){
			echo "<script>parent.alert('密码长度在6位以上！');</script>";
			die();
		}

        $checkusername=get_table_info($dbo,$t_users,'user_name',$post['user_name']);
        if($checkusername){
            echo "<script>parent.alert('该姓名已经在！');</script>";
            die();
        }

		$checkusermobile=get_table_info($dbo,$t_users,'user_mobile',$post['user_mobile']);
		if($checkusermobile){
			echo "<script>parent.alert('该手机账户已经在！');</script>";
			die();
		}
		$post['express_mobile']=$post['user_mobile'];

		if($password&&$post['user_mobile']){
			$prev_apply_time=get_session('prev_apply_time');
			if($prev_apply_time<(time()-60)||!$prev_apply_time){
				$post['user_passwd']=md5($password);
				$post['last_ip'] = get_real_ip();
                $post['sina_uid'] = "";
                $post['qq_uid'] = "";
				$user_id = insert_table_info($dbo,$t_users,$post);
				set_session('prev_apply_time',time());
				if($user_id){
					$last_ip = $_SERVER['REMOTE_ADDR'];
					set_session('user_id',$user_id);
					set_session('user_mobile',$post['user_mobile']);
					set_session('rank_id',$post['rank_id']);
					set_sess_login_id($last_ip);
					die('<script>parent.alert("注册成功！前往寄件！");parent.location.href="'.URL_NAV('shipping').'";</script>');
				}
			}else{
				die('<script>parent.alert("请稍后再提交！");parent.location.href="'.URL_NAV('/').'";</script>');
			}
		}
	}
	if($act=='forget'){
		$mobile=$_SESSION['mobile'];
		$password1=short_check(get_args('u_pass1'));
		$password2=short_check(get_args('u_pass2'));
		if(strlen($password1) < 6){
			echo "<script>parent.alert('密码长度在6位以上！');</script>";
			die();
		}

		$t_users=$tablePreStr.'users';

		if(!$password1||!$password2||$password1!=$password2){
			echo "<script>parent.alert('密码设置错误请重试！');</script>";
			die();
		}

		$post1=array();
		$post1['user_passwd']=md5($password1);
		update_table_info($dbo,$t_users,$post1," user_mobile='".$mobile."'");
		die('<script>parent.alert("密码重置成功！请前往登录！");parent.location.href="'.URL_NAV('/').'";</script>');
	}
	exit();
?>