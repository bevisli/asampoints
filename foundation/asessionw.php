<?php 
if(!$HUISHI_SOFT_IN){
	die('Hacking attempt');
}

$HOSTURL='huishisoft.com';

ini_set("session.cookie_domain",$HOSTURL);
if($_GET['PHPISD']){
	session_id($_GET['PHPISD']);
}

@session_start();

if (isset($_SERVER['HTTP_CLIENT_IP']) && $_SERVER['HTTP_CLIENT_IP']!='unknown') {   
	 $ip = $_SERVER['HTTP_CLIENT_IP'];   
} elseif (isset($_SERVER['HTTP_X_FORWARDED_FOR']) && $_SERVER['HTTP_X_FORWARDED_FOR']!='unknown') {   
	 $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];   
} else {   
	 $ip = $_SERVER['REMOTE_ADDR'];   
}   

?>