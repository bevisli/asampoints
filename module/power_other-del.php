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


	$t_other = $tablePreStr."other";



	$sql = "delete from `$t_other` where other_id ='".intval($r[3])."'";
	
	if($dbo->exeUpdate($sql)) {
		echo "<script>alert('删除成功');location.href='".URL_NAV('power_other')."';</script>";
		exit();
	}else{
		echo "<script>alert('删除失败');location.href='".URL_NAV('power_other')."';</script>";
		exit();
	}

	exit();
?>