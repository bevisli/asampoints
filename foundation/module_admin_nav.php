<?php
	if(!$HUISHI_SOFT_IN) {
		die("Hacking attempt");
	}

	function get_nav_info($id,$table,&$dbo){
		$sql = "SELECT * FROM $table WHERE id='$id'";
		return $arr = $dbo->getRow($sql);
	}

	function  get_nav_list($table,&$dbo,$postion=''){
		$sql="SELECT * FROM $table WHERE 1=1";
		if ($postion) {
			$sql.=" and postion='$postion' ";
		}
		$sql.=" order by sort";
		return $res = $dbo->getRs($sql);
	}
	
	if(get_session('ADMIN_SYSTEM_NAV')&&$OPEN_SYSSESSION){
		$ADMIN_SYSTEM_NAV=get_session('ADMIN_SYSTEM_NAV');
	}else{
		/* 数据库操作分离 */
		dbtarget('n',$dbServs);
		$dbo=new dbex();
		$SYSTEM_NAV_X=get_nav_list($tablePreStr."admin_nav",$dbo,$postion='');
		foreach($SYSTEM_NAV_X as $k=>$v){
			$ADMIN_SYSTEM_NAV[$v['parent']][]=$v;
		}
		set_session('ADMIN_SYSTEM_NAV',$ADMIN_SYSTEM_NAV);
	}
?>