<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}


	$SYSTEM_NAV_SELECTED=4; //当前栏目ID
	$SYSTEM_TITLE=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_pro=$tablePreStr.'pro';
	$t_server_school=$tablePreStr.'server_school';
	//推荐活动调取
	$sql = "SELECT * FROM $t_pro WHERE is_show=1 and is_digg=1 ";
	$sql .= " ORDER BY pro_id DESC limit 0,3";
	$digg_soft = $dbo->getRs($sql);
	//服务栏目
	$sql = "SELECT * FROM $t_server_school order by short_order ASC";
	$server_list = $dbo->getRs($sql);
	foreach($server_list as $k=>$v){
		$show_server_list[$v[server_id]]=$v;
	}


	if($r[2]){
		check_numeric($r[2]);
		$SYSTEM_TITLE=$show_server_list[$r[2]][title]; //标题
		$SYSTEM_KEYWORD=$show_server_list[$r[2]][title]; //关键词
		$SYSTEM_DESCRIPTION=$show_server_list[$r[2]][title]; //描述说明
	}else{
		foreach($show_server_list as $k=>$v){
			$r[2]=$k;
			$SYSTEM_TITLE=$show_server_list[$k][title]; //标题
			$SYSTEM_KEYWORD=$show_server_list[$k][title]; //关键词
			$SYSTEM_DESCRIPTION=$show_server_list[$k][title]; //描述说明
			break;
		}
	}

?>