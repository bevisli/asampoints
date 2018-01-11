<?php
	/************about模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}


	$SYSTEM_NAV_SELECTED=6; //当前栏目ID

	$r[2]=intval($r[2])>0?intval($r[2]):'1';

	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_other=$tablePreStr.'other';
	//多条查询
	$sql = "SELECT * FROM $t_other where other_id not in (13,14) order by short_order asc LIMIT 10";
	$other_list = $dbo->getRs($sql);

	//单条查询
	if($r[2]){
	check_numeric($r[2]);
	$sql = "SELECT * FROM $t_other where other_id='".$r[2]."'";
	$other_info = $dbo->getRow($sql);
	}

	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$other_info[title_cn]:$other_info[title];
	if(!$SYSTEM_TITLE)$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	if(!$SYSTEM_KEYWORD)$SYSTEM_KEYWORD=$other_info[title];
	if(!$SYSTEM_DESCRIPTION)$SYSTEM_DESCRIPTION=$other_info[title];
?>