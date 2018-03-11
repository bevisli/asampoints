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


		$sql = "delete from channels where id='".$r[3]."' ";
		$dbo->exeUpdate($sql);
		echo "<script>alert('删除成功');location.href='".URL_NAV('power_channel')."';</script>";


	exit();
?>