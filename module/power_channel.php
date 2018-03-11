<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}


	/**************************************/
	/**************************************/
	/************power提交区域*************/
	/**************************************/
	/**************************************/

	$act = get_args('act');
	if($act=='edit'){
	exit();
	}



	//数据表定义区
	$t_nav = "channels";

	//读写分离定义方法
	$dbo = new dbex;
	dbtarget('r',$dbServs);

	$sql = "select * from `$t_nav` where status = 'ACTIVE' order by id asc";
	$result = $dbo->fetch_page($sql,15);

?>