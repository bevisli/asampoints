<?php
	/************about模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}


	$SYSTEM_NAV_SELECTED=$ABOUT_SELECTED; //当前栏目ID
	$SYSTEM_TITLE=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明

	/**************************************/
	/**************************************/
	/************power提交区域*************/
	/**************************************/
	/**************************************/

	$act = get_args('act');
	if($act=='add'){
		/* post 数据处理 */
		$code = short_check(get_args('code'));
		$username = short_check(get_args('username'));

		if(!$code) {
			$r[2]='isok';
			$show=1;
			$context='请填写优惠码！';
		}
		if(!$username) {
			$r[2]='isok';
			$show=1;
			$context='请填写绑定账号！';
		}
		//数据表定义区
		$t_online_user = $tablePreStr."online_user";
		$t_online_train_salecode=$tablePreStr.'online_train_salecode';
		$t_online_train_salecode_card=$tablePreStr.'online_train_salecode_card';


		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		$sql = "SELECT * FROM $t_online_train_salecode_card where code='".$code."'";
		$card_info = $dbo->getRow($sql);
		if(!$card_info) {
			$r[2]='isok';
			$show=1;
			$context='优惠码无效或已使用！';
		}else{
			if($card_info[uid]>0){
				$r[2]='isok';
				$show=1;
				$context='领取成功！';
			}else{
				$sql = "SELECT * FROM $t_online_user where user_name='".$username."'";
				$uinfo = $dbo->getRow($sql);
				if($uinfo[user_id]){
					$post[uid]=$uinfo[user_id];
					update_table_info($dbo,$t_online_train_salecode_card,$post," code='".$code."'");
					$r[2]='isok';
					$show=1;
					$context='领取成功！';
				}else{
					$r[2]='isok';
					$show=1;
					$context='错误的用户信息！';
				}
			}
		}
	}


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	if(!$r[2]||$r[2]=='isok'){
		$show=1;
		if($r[2]){
		$context=$context;
		}else{
		$context='优惠码无效或已使用！';
		}
	}else{
		$show='';
		$context='';
	}
	//定义数据库表
	$t_online_train_salecode=$tablePreStr.'online_train_salecode';
	$t_online_train_salecode_card=$tablePreStr.'online_train_salecode_card';

	$sql = "SELECT * FROM $t_online_train_salecode_card where code='".$r[2]."'";
	$card_info = $dbo->getRow($sql);

	$sql = "SELECT * FROM $t_online_train_salecode where id='".$card_info[salecode_id]."'";
	$sale_info = $dbo->getRow($sql);


	if(!$SYSTEM_TITLE)$SYSTEM_TITLE=$other_info[title];
	if(!$SYSTEM_KEYWORD)$SYSTEM_KEYWORD=$other_info[title];
	if(!$SYSTEM_DESCRIPTION)$SYSTEM_DESCRIPTION=$other_info[title];
?>