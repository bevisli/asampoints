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


		$t_article_cat = $tablePreStr."article_cat";

		$sql = "delete from `$t_article_cat` where parent_id=".$r[3]." ";
		$dbo->exeUpdate($sql);
		$sql = "delete from `$t_article_cat` where cat_id=".$r[3]." ";
		$dbo->exeUpdate($sql);
		echo "<script>alert('删除成功');location.href='".URL_NAV('power_category')."';</script>";


	exit();
?>