<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();


	//数据表定义区
	$t_asd_content = $tablePreStr."asd_content";


	$KEYS1=@explode('~',$r[3]);
	if($KEYS1){
		foreach($KEYS1 as $k=>$v){
			$c=@explode('-',$v);
			$KEYS[$c[0]]=$c[1];
		}
	}


	$sql = "SELECT * FROM $t_asd_content WHERE 1=1 $OsAL";
	$sql .= " ORDER BY short_order,last_update_time DESC";
	$result = $dbo->fetch_page($sql,15);

?>