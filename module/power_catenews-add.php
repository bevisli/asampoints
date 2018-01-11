<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}



		//数据表定义区
		$t_article_cat = $tablePreStr."article_cat";

		//读写分离定义方法
		$dbo = new dbex;
		dbtarget('r',$dbServs);

		$sql="select * from $t_article_cat where parent_id=0";
		$topcatlist=$dbo->getRs($sql);

?>