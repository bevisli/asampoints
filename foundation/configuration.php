<?php
if(!$HUISHI_SOFT_IN) {
	die("Hacking attempt");
}

ini_set("date.timezone","PRC");

//站点配置
$webRoot = str_replace("\\","/",dirname(dirname(__FILE__)))."/";
$adminEmail = 'admin@admin.com';

//缓存更新延时设置,单位为秒
$cache_update_delay_time="0";

//语言包参数，目前参数值zh,en
$langPackagePara = 'zh';
$langPackageBasePath = 'langpackage/'.$langPackagePara.'/';

//支持库配置
$baseLibsPath = 'mini_lib/';

//plugins位置文件
$pluginOpsition = array("index.html");

// session 前缀
global $session_prefix;
$session_prefix = 'freitex_';

$tablePreStr= 'freitex_';

// web访问根目录

$baseUrl = 'http://www.asamxpress.com/';



// url_rewrite 是否开启
$url_rewrite = 'true';

if(file_exists($webRoot."temp/cache/setting.php")) {
	include($webRoot."temp/cache/setting.php");
}
?>
