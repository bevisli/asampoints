<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}
//数据分离连接
function dbtarget($rwAction,$dbServs)
{
	//$rwAction
	db_conn($dbServs[0],$dbServs[2],$dbServs[3],$dbServs[1]);
}

function dbplugin($rw)
{
	global	$dbServs;
	dbtarget($rw,$dbServs);
}

//数据连接
function db_conn($host,$user,$pwd,$db)
{
	if($connStr=mysql_connect($host,$user,$pwd)){

	mysql_query("set names 'UTF8'");
	mysql_select_db($db,$connStr);
	}else{
		throw new Exception('');
		return false;
	}
}

//数据断开连接
function dbtarget_free()
{
	@mysql_close(); 
}
?>