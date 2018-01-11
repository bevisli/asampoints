<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=""; //当前栏目ID
	$SYSTEM_TITLE=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_pro=$tablePreStr.'pro';
	$t_act=$tablePreStr.'act';
	$t_act_cat=$tablePreStr.'act_cat';
	//主题栏目
	$sql = "SELECT * FROM $t_act_cat ";
	$cat_list = $dbo->getRs($sql);
	foreach($cat_list as $k=>$v){
		$show_cat_list[$v[cat_id]]=$v;
	}


	//推荐活动调取
	$sql = "SELECT * FROM $t_pro WHERE is_show=1 and is_digg=1 ";
	$sql .= " ORDER BY pro_id DESC limit 0,3";
	$digg_soft = $dbo->getRs($sql);


	$sql = "SELECT * FROM $t_act WHERE is_show=1 ";

	if($r[2]){
		check_numeric($r[2]);

		$post['act_id'] = short_check(get_args('required_actid'));
		$cat_id = short_check(get_args('required_catid'));
		$actinfo=get_act_info(&$dbo,$t_act,$post['act_id']);
		if($post['act_id']&&$cat_id){
			$prev_apply_time=get_session('prev_apply_time');
			if($prev_apply_time<(time()-60)||!$prev_apply_time){
				$post['sign_name'] = short_check(get_args('required_name'));
				$post['sign_tel'] = short_check(get_args('required_tel'));
				$post['sign_email'] = short_check(get_args('required_email'));
				$post['sign_beizhu'] = short_check(get_args('required_message'));
				$post['add_time'] = time();
				$post['sign_ip'] = get_real_ip();
				//数据表定义区
				$t_sign = $tablePreStr."sign";
				//定义写操作
				dbtarget('w',$dbServs);
				$dbo=new dbex;
				$sign_id = insert_sign_info($dbo,$t_sign,$post);
				set_session('prev_apply_time',time());
				if($sign_id){
					require("./servtools/phpmailer/class.phpmailer.php");
					$mail = new PHPMailer(); //建立邮件发送类
					$mail->Charset="UTF-8"; 
					$mail->IsSMTP(); // 使用SMTP方式发送
					//$mail->Host = "smtp.qq.com"; // 您的企业邮局域名
					$mail->Host = "mail.huishisoft.com"; 
					$mail->SMTPAuth = true; // 启用SMTP验证功能
					$mail->Username = "service@huishisoft.com"; // 邮局用户名(请填写完整的email地址)
					$mail->Password = "Hs123456"; // 邮局密码
					$mail->Port=25;
					$mail->From = "service@huishisoft.com"; //邮件发送者email地址
					$mail->FromName = "厦门汇识咨询";
					$mail->AddAddress("linmx@huishisoft.com", "汇识邮箱");//收件人地址，格式是AddAddress("收件人email","收件人姓名")
					$mail->IsHTML(true); // set email format to HTML //是否使用HTML格式
					$mail->Subject = "汇识咨询通知邮件-[".$post['sign_name']."]用户报名参与活动【系统邮件请勿回复】"; //邮件标题

					$mail->Body = "[".$post['sign_name']."]用户报名参与活动[<a href='http://www.huishisoft.com/?r=act_".$cat_id."_".$post[act_id]."' target='_blank'>点击进入该活动详细</a>]<br />报名者姓名：".$post['sign_name']."<br />报名者邮箱：".$post['sign_email']."<br />报名者电话：".$post['sign_tel']."<br /><br />更多详细请管理员登录系统后台查阅 时间：".date('Y-m-d H:i:s',time())." [系统自动发送请勿回复]  [<a href='http://www.huishisoft.com/' target='_blank'>厦门汇识咨询</a>]"; //邮件内容

					$mail->AltBody = "This is huishisoft.com system message!"; //附加信息，可以省略

					if(!$mail->Send())
					{
					//邮件发送失败
					}
					//邮件发送成功

					$mail->AddAddress($post['sign_email'], $post['sign_name']);//收件人地址，格式是AddAddress("收件人email","收件人姓名")
					$mail->IsHTML(true); // set email format to HTML //是否使用HTML格式
					$mail->Subject = "主题:　".$actinfo[title]."-您报名参与的活动信息【系统邮件请勿回复】"; //邮件标题

					$mail->Body = "您好，[".$post['sign_name']."] 先生/小姐，感谢您报名参与我们的活动。以下是您报名活动的详细信息<br />主题:　".$actinfo[title]."<br />地点:　".$actinfo[where]."<br />日期:　".date('Y年m月d日',$actinfo[act_stime])."<br />时间:　".date('H:i',$actinfo[act_stime])." - ".date('H:i',$actinfo[act_etime])."<br />更多详细：[<a href='http://www.huishisoft.com/?r=act_".$cat_id."_".$post[act_id]."' target='_blank'>点击进入该活动详细</a>]<br />咨询电话：0592-5591523<br /><br />时间：".date('Y-m-d H:i:s',time())." [系统自动发送请勿回复]  [<a href='http://www.huishisoft.com/' target='_blank'>厦门汇识咨询</a>]"; //邮件内容

					$mail->AltBody = "This is huishisoft.com system message!"; //附加信息，可以省略

					if(!$mail->Send())
					{
					//邮件发送失败
					}
					//邮件发送成功
					die('<script>alert("报名成功！感谢您，我们会尽快与您联系！");location.href="'.URL_ACT('act',$cat_id,$post[act_id]).'";</script>');
				}
			}else{
					die('<script>alert("请稍后再提交！");location.href="'.URL_ACT('act',$cat_id,$post[act_id]).'";</script>');
			}
		}

		$IS_Act=1;

		$sql.=" and act_id='".$r[2]."' ";
		$Act_Info = $dbo->getRow($sql);

		$SYSTEM_TITLE=$Act_Info[title]; //标题
		$SYSTEM_KEYWORD=$Act_Info[title]; //关键词
		$SYSTEM_DESCRIPTION=$Act_Info[title]; //描述说明

		//推荐活动调取
		$sql = "SELECT * FROM $t_act WHERE is_show=1 ";
		$sql .= " ORDER BY act_stime ASC limit 0,10";
		$digg_act = $dbo->getRs($sql);
	}else{
		$r[1]="404";
	}
?>