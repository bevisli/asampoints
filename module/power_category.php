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





	//数据表定义区
	$t_pro_cat = $tablePreStr."pro_cat";


	//读写分离定义方法
	$dbo = new dbex;
	dbtarget('r',$dbServs);

	$sql = "select * from `$t_pro_cat` where 1 ";
	$result = $dbo->fetch_page($sql,20);
?>