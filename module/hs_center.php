<?php
	/************about模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}
	if(!$USER_INFO['user_id']){
		echo "<script language='JavaScript'>location.href='http://www.asamxpress.com/';</script>";
		exit();
	}

	$SYSTEM_TITLE="个人中心-".$SYSINFO['sys_name'];
	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$other_info[title_cn]:$other_info[title];
	if(!$SYSTEM_TITLE)$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	if(!$SYSTEM_KEYWORD)$SYSTEM_KEYWORD=$other_info[title];
	if(!$SYSTEM_DESCRIPTION)$SYSTEM_DESCRIPTION=$other_info[title];

	if(!$r[2])$r[2]="order";
	@include("center_".$r[2].".php");
	if(!$r[3])$r[3]="";

	if(!$year)$year=date('Y',time());

	//开始结束年份
	if($_SESSION['HS_YEARS']){
		$YEARS=$_SESSION['HS_YEARS'];
	}else{
		$YEARS=array();
		for($si=date('Y',time());$si>=2012;$si--){
			$YEARS[]=$si;
		}
		$_SESSION['HS_YEARS']=$YEARS;
	}
	//开始结束月份
	if($_SESSION['HS_MONTHS']){
		$MONTHS=$_SESSION['HS_MONTHS'];
	}else{
		$MONTHS=array();
		for($si=1;$si<13;$si++){
			$MONTHS[]=$si;
		}
		$_SESSION['HS_MONTHS']=$MONTHS;
	}

	//POWER通用声明
	function CUTURL($str){
		$sta=explode('-',$str);
		return $sta[0];
	}
?>