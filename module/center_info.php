<?php
	/************about模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明

	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//定义数据库表
	$t_users=$tablePreStr.'users';

	$act = get_args('act');
	if($act=='editinfo'){
	
		$post['user_name'] = lib_replace_end_tag(RemoveXSS(short_check(get_args('name'))));
		$post['express_address'] = lib_replace_end_tag(RemoveXSS(short_check(get_args('address'))));//居住地

		if(!$post['user_name']||!$post['express_address']){
			echo "<script language='JavaScript'>parent.showalert(0,'修改失败！请完善资料！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"location.reload();\" class=\"btn btn-default\">确定</a>');</script>";
			exit();
		}
		
		if(update_table_info($dbo,$t_users,$post," user_id='".$USER_INFO['user_id']."'")){
			echo "<script language='JavaScript'>parent.showalert(0,'修改成功！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"location.reload();\" class=\"btn btn-default\">确定</a>');</script>";
			exit();
		}else{
			echo "<script language='JavaScript'>parent.showalert(0,'修改失败！请完善资料！<hr /> <div class=\"bootstrap-dialog-footer-buttons\"><a href=\"javascript:;\" onclick=\"location.reload();\" class=\"btn btn-default\">确定</a>');</script>";
			exit();
		}
		exit();
	}
	
?>