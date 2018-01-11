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
		$t_article_cat = $tablePreStr."article_cat";

		$sql = "select * from `$t_article_cat` where parent_id!=0 ";
		$getall = $dbo->getRs($sql);
		if($getall){
			foreach($getall as $k=>$v){
				$showcatinfo[$v[parent_id]][]=$v;
			}
		}

		//读写分离定义方法
		$dbo = new dbex;
		dbtarget('r',$dbServs);

		$sql = "select * from `$t_article_cat` where parent_id=0 ";
		$result = $dbo->fetch_page($sql,5);
?>