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
		$t_other = $tablePreStr."other";


		//读写分离定义方法
		$dbo = new dbex;
		dbtarget('r',$dbServs);

		$sql = "select * from `$t_other` where 1=1 ";
		$result = $dbo->fetch_page($sql,10);
?>