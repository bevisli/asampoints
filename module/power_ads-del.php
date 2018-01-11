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


	$t_asd_content = $tablePreStr."asd_content";

	$sql = "select * from `$t_asd_content` where asd_id ='".intval($r[3])."'";
	$info=$dbo->getRow($sql);
	if($info[asd_imgurl]){
		@unlink($info[asd_imgurl]);
	}

	$sql = "delete from `$t_asd_content` where asd_id ='".intval($r[3])."'";
	
	if($dbo->exeUpdate($sql)) {
		echo "<script>alert('删除成功');location.href='".URL_NAV('power_ads')."';</script>";
		exit();
	}else{
		echo "<script>alert('删除失败');location.href='".URL_NAV('power_ads')."';</script>";
		exit();
	}

	exit();
?>