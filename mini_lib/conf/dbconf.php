<?php
if(!$HUISHI_SOFT_IN) {
	die("Hacking attempt");
}
//$host = '47.88.48.29';//mysql数据库服务器,比如localhost:3306

//$user = 'build'; //mysql数据库默认用户名
//$pwd = 'build123!A'; //mysql数据库默认密码
//$db = 'asamxpress'; //默认数据库名

//$user = 'buildqa';
//$pwd = 'buildqa123';
//$db = 'asamxpressqa';

//$host = 'db.mrhefan.com';
//$user = 'buildqa';
//$pwd = 'buildqa123A';
//$db = 'asamxpress_qa';

$host = 'db.asamxpress.com';
$user = 'buildqa';
$pwd = 'buildqa123A';
$db = 'asamxpress_qa';

global $tablePreStr;
$tablePreStr = 'freitex_';//表前缀

//当前提供服务的mysql数据库
global $dbServs;
$dbServs=array($host,$db,$user,$pwd);
?>
