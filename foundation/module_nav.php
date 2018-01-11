<?php
	if(!$HUISHI_SOFT_IN) {
		die("Hacking attempt");
	}

	//MC缓存
	$MC_KEY = new cache();

	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	function get_nav_info($id,$table,&$dbo){
		$sql = "SELECT * FROM $table WHERE id='$id'";
		return $arr = $dbo->getRow($sql);
	}

	function  get_nav_list($table,&$dbo,$postion=''){
		$sql="SELECT * FROM $table WHERE 1=1";
		if ($postion) {
			$sql.=" and postion='$postion' ";
		}
		$sql.=" and is_hide=1 order by short_order";
		return $res = $dbo->getRs($sql);
	}
	
	if($MC_KEY->getcache('SYSTEM_NAV')&&$MC_KEY->getcache('MEDAL_INFO')&&$MC_KEY->getcache('SYSTEM_NAV_TIME')+1800>time()){
		$SYSTEM_NAV=@unserialize($MC_KEY->getcache('SYSTEM_NAV'));
		$MEDAL_INFO=@unserialize($MC_KEY->getcache('MEDAL_INFO'));
	}else{
		$SYSTEM_NAV_X=get_nav_list($tablePreStr."nav",$dbo,$postion='');
		foreach($SYSTEM_NAV_X as $k=>$v){
			$SYSTEM_NAV[$v[short_order]]=$v;
		}
		$MC_KEY->setcache('SYSTEM_NAV',serialize($SYSTEM_NAV));
		$MC_KEY->setcache('SYSTEM_NAV_TIME',time());
	}

	if($MC_KEY->getcache('SYSINFO')&&$MC_KEY->getcache('BBSSYSINFO')&&$MC_KEY->getcache('SSYSINFO_TIME')+600>time()){
		$SYSINFO=@unserialize($MC_KEY->getcache('SYSINFO'));
		$BBSSYSINFO=@unserialize($MC_KEY->getcache('BBSSYSINFO'));
	}else{
		//系统配置
		$t_settings=$tablePreStr.'settings';
		$SYSINFOLIST=get_table_list($dbo,$t_settings,'','');
		if($SYSINFOLIST){
			foreach($SYSINFOLIST as $k=>$v){
				$SYSINFO[$v[variable]]=$v[value];
			}
		}
		$MC_KEY->setcache('SYSINFO',serialize($SYSINFO));
		$MC_KEY->setcache('SSYSINFO_TIME',time());
	}
	
?>