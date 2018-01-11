<?php
	/************about模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=4; //当前栏目ID
	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明



	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_pro_cat=$tablePreStr.'pro_cat';
	//多条查询
	$sql = "SELECT * FROM $t_pro_cat order by sort asc";
	$partner_list = $dbo->getRs($sql);

	if(!$SYSTEM_KEYWORD)$SYSTEM_KEYWORD=$other_info[title];
	if(!$SYSTEM_DESCRIPTION)$SYSTEM_DESCRIPTION=$other_info[title];
?>