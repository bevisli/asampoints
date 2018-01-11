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
	$t_course_train=$tablePreStr.'course_train';
	$t_power_nav=$tablePreStr.'power_nav';
	$t_users=$tablePreStr.'users';
	
	if(!$r[2])$r[2]="index";
	@include("power_".$r[2].".php");
	if(!$r[3])$r[3]="";

	$id = $r[3];

	if(CUTURL($r[2])=='student') {
		$user_info=get_table_info($dbo,$t_users,'user_id',$id);
	}
	if(CUTURL($r[2])=='teacher') {
		$trainstatus=array('1'=>'招生','2'=>'培训','3'=>'满意度调查','4'=>'课程结束');
		$user_info=get_table_info($dbo,$t_users,'user_id',$id);
	}
	if(CUTURL($r[2])=='classroom') {
		$SHOW_xd_jd=array('1'=>'上午','2'=>'下午','3'=>'晚上','4'=>'全天');
		$year = get_args('year');
		$month = get_args('month');
		$day = get_args('day');
	}


	//通用栏目获取
	$sql = "SELECT * FROM $t_power_nav WHERE 1=1 ";
	$sql .= " order by sort asc";
	$POWER_NAV = $dbo->getRs($sql);

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


	//POWER通用声明
	function CUTURL($str){
		$sta=explode('-',$str);
		return $sta[0];
	}
?>