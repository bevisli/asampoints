<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=5; //当前栏目ID
	$SYSTEM_TITLE=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_online_train=$tablePreStr.'online_train';
	$t_asd_content = $tablePreStr."asd_content";
	$t_online_cat=$tablePreStr.'online_cat';
	$t_users=$tablePreStr.'users';
	
	$teacher_list=get_table_list($dbo,$t_users,'',' where rank_id=1');
	foreach($teacher_list as $value) {
		$showteacher[$value[user_id]]=$value[user_name];
	}
	$sql = "SELECT * FROM $t_online_cat ";
	$train_catlist = $dbo->getRs($sql);
	foreach($train_catlist as $k=>$v){
		$showtraincat[$v[cat_id]]=$v[cat_name];
	}
	//最新培训
	$sql = "SELECT * FROM $t_online_cat where 1=1 and is_digg=1 ";
	$sql .= " ORDER BY sort_order DESC limit 0,10";
	$train_list = $dbo->getRs($sql);

	//获取-中屏-右侧-第一
	$sql = "SELECT * FROM $t_asd_content WHERE position_id=14 ";
	$one_asd_63 = $dbo->getRow($sql);

	$sql = "SELECT * FROM $t_online_train WHERE 1=1 ";

	if($r[2]){
		check_numeric($r[2]);

		$sql.=" and id='".$r[2]."' ";
		$Online_Info = $dbo->getRow($sql);

		$SYSTEM_TITLE=$Online_Info[subject]; //标题
		$SYSTEM_KEYWORD=$Online_Info[subject]; //关键词
		$SYSTEM_DESCRIPTION=$Online_Info[subject]; //描述说明


	}
?>