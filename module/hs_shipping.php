<?php
	/************about模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=2; //当前栏目ID
	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	$act = get_args('act');
	if($act=='add'){
	
		/* post 数据处理 */
		$post['pro_foruid'] = $USER_INFO[user_id];
		$post['pro_usermobilecode'] = short_check(get_args('mobilecode'));
		$post['pro_username'] = short_check(get_args('uname'));
		$post['pro_usermobile'] = short_check(get_args('mobile'));
		$post['pro_useraddress'] = short_check(get_args('uaddress'));
		$post['pro_usersentbrand'] = short_check(get_args('usentbrand'));
		$post['pro_usersentnum'] = short_check(get_args('usentnum'));
		$post['pro_usersentmoney'] = short_check(get_args('usentmoney'));
		$post['pro_usersentweight'] = short_check(get_args('usentweight'));
		$post['pro_usersentgetmobile1'] = intval(get_args('usentgetmobile1'));
		$post['add_time'] = date('Y-m-d H:i:s',time());
		
		if(!$post['pro_usermobilecode']){
			echo "<script>parent.alert('请填写手机号的国家代号');</script>";
			die();
		}
		if(!$post['pro_username']){
			echo "<script>parent.alert('请填写收件人姓名');</script>";
			die();
		}
		if(!$post['pro_usermobile']){
			echo "<script>parent.alert('请填写收件人手机号');</script>";
			die();
		}
		if(!$post['pro_useraddress']){
			echo "<script>parent.alert('请填写收件人地址');</script>";
			die();
		}
		if(!$post['pro_usersentbrand']){
			echo "<script>parent.alert('请填写品名');</script>";
			die();
		}
		if(!$post['pro_usersentnum']){
			echo "<script>parent.alert('请填写数量');</script>";
			die();
		}
		if(!$post['pro_usersentweight']){
			echo "<script>parent.alert('请填写重量');</script>";
			die();
		}
		

		if($post['pro_username']&&$post['pro_usermobile']&&$post['pro_useraddress']){
			$prev_apply_time=get_session('prev_apply_time');
			if($prev_apply_time<(time()-60)||!$prev_apply_time){
				//数据表定义区
				$t_pro = $tablePreStr."pro";
					/* 图片上传 */
					$upload = new upload('jpg|gif|png',5024,'imgurl');
					$upload->set_dir("./uploadfiles/card/","{y}/{m}/{d}");
					$file = $upload->execute();
					/* 图片上传end */
					//if ($file){
						if ($file[0]['flag'] == 1){
							$web_dir = $file[0]['dir'].$file[0]['name'];
							$post['pro_usercard'] = $web_dir;
						}
					//}else{
						//echo "<script>parent.alert('请上传收件人身份证');</script>";
						//die();
					//}

					//定义写操作
					dbtarget('w',$dbServs);
					$dbo=new dbex;

					$sql ="SELECT count(*) as a FROM $t_pro order by pro_id desc";
					$fxid = $dbo->getRow($sql);
					$newt=$fxid[a]+1;
					$svs=6000000000;
					$post['pro_newid']='FX'.($svs+$newt);

					$new_id = insert_table_info($dbo,$t_pro,$post);
					set_session('prev_apply_time',time());
			}else{
				die('<script>parent.alert("请稍后再提交！");</script>');
			}

		}else{
				echo "<script>parent.alert('请完善资料再提交！');</script>";
				exit();
		}


		if($new_id) {
			die('<script>parent.alert("寄件提交成功！客服将会尽快与您取得联系！");parent.location.href="'.URL_NAV('shipping').'";</script>');
		} else {
			echo "<script>parent.alert('寄件提交失败！');</script>";
			exit();
		}
	exit();
	}

?>