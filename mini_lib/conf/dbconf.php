<?php
if(!$HUISHI_SOFT_IN) {
	die("Hacking attempt");
}
$host = 'localhost';//mysql数据库服务器,比如localhost:3306
$user = 'asamxpress'; //mysql数据库默认用户名
$pwd = 'XWaMyVsF4ZvKGbMQ'; //mysql数据库默认密码
$db = 'asamxpress'; //默认数据库名
global $tablePreStr;
$tablePreStr = 'freitex_';//表前缀

//当前提供服务的mysql数据库
global $dbServs;
$dbServs=array($host,$db,$user,$pwd);
?>
