<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}
	$POWER[power_id]=get_session('power_id');
	$POWER[power_name]=get_session('power_name');
	$POWER[power_nice]=get_session('power_nice');
	$POWER[power_email]=get_session('power_email');
	$POWER[group_id]=get_session('group_id');
	$REQUEST_URI= $_SERVER['REQUEST_URI'];
	$PREVURL = $_SERVER['HTTP_REFERER'];

	if(!$POWER['power_id']){
		echo "<script language='JavaScript'>alert('请先登录！');location.href='".URL_NAV('/')."'</script>";
		exit();
	}


	$SYSTEM_NAV_SELECTED=0; //当前栏目ID
	$SYSTEM_TITLE=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明

	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//定义数据库表
	$t_power_setting=$tablePreStr.'power_setting';
	$t_power_nav=$tablePreStr.'power_nav';
	$t_admin_user=$tablePreStr.'admin_user';
	

	//通用栏目获取
	$sql = "SELECT * FROM $t_admin_user WHERE admin_id='".$POWER[power_id]."'";
	$POWERUSER_NAV = $dbo->getRow($sql);
	$POWER[power_lastlogin]=$POWERUSER_NAV['last_login'];
	$sql = "SELECT * FROM $t_power_nav WHERE 1=1 ";
	$sql .= " order by sort asc";
	$POWER_NAV = $dbo->getRs($sql);
	foreach($POWER_NAV as $k=>$v){
			if(!in_array($v[id],explode(',',$POWERUSER_NAV[power_nav]))){
				unset($POWER_NAV[$k]);
			}
	}

	//管理组权限
	$sql = "SELECT * FROM $t_power_setting WHERE power_id = '".$POWER[power_id]."'";
	$setting_info = $dbo->getRs($sql);
	foreach($setting_info as $k=>$v){
		$admin_rights[$v[nav_id]]=$v;
	}
	if($admin_rights){
		$POWER_RIGHT=$admin_rights;
	}else{
		$POWER_RIGHT="";
	}

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

	if(!$r[2])$r[2]="index";
	@include("power_".$r[2].".php");
	if(!$r[3])$r[3]="";

?>