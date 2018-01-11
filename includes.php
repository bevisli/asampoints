<?php
/********|————————|********/
/********|--该文件可加密--|********/
/********|--全局核心代码--|********/
/********|---2013-11-01---|********/
/********|------Kimy------|********/
/********|————————|********/
/* 公共包含文件 */
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}
//error_reporting(0);//不显示错误
//全局SESSION设置
require($webRoot."foundation/asession.php");
//系统全局配置
require($webRoot."foundation/configuration.php");
//数据库配置及连接文件
require($webRoot.$baseLibsPath."conf/dbconf.php");
require($webRoot.$baseLibsPath."fdbtarget.php");
//数据库查询函数及翻页配置
require($webRoot.$baseLibsPath."cdbex.class.php");
//库支持文件,函数，不支持数据库查询
require($webRoot.$baseLibsPath."libs_inc.php");
//过滤函数
require($webRoot."foundation/freq_filter.php");
//应用工具控制函数
require($webRoot."foundation/fmain_target.php");
//时间函数
require($webRoot."foundation/ctime.class.php");
//文件上传函数
require($webRoot."foundation/cupload.class.php");
require($webRoot."foundation/fsqlitem_set.php");
require_once($webRoot."foundation/asystem_info.php");
//封装session,cookie,get,post文件
require($webRoot."foundation/fsession.php");
require($webRoot."foundation/fcookie.php");
//GET和POST统一处理
require($webRoot."foundation/fgetandpost.php");
//伪静态函数
require($webRoot."foundation/furl_rewrite.php");
require($webRoot."foundation/fjson_encode.php");
require($webRoot."foundation/fplugin.php");
require($webRoot."foundation/fstring.php");
require($webRoot."foundation/fcustom_domain.php");
require($webRoot."foundation/ftpl_compile.php");
//加载查询声明库
require($webRoot."foundation/function_sqlclass.php");
//加载后台缓存
require($webRoot."temp/cache/setting.php");
//加载memcache缓存
require($webRoot."foundation/memcache.php");
$ctime = new time_class($SYSINFO['timezone']);
$current_domain = get_domain();
$now_domain=get_custom_domain($current_domain);
$NowDomainUrl="http://".$HOSTURL."/";
$baseUrl="http://".$HOSTURL."/";
//引用系统缓存的导航信息@$SYSTEM_NAV 系统栏目
require("foundation/module_nav.php");
//引用登陆后的用户缓存信息
require("foundation/user_info.php");
$this_lg=get_cookie('this_lg')?get_cookie('this_lg'):$SYSINFO['lp'];
$thislgs=$this_lg=='cn'?$SYSINFO[templates].'_cn':$SYSINFO[templates];
if($_GET[lg]=='cn'){
	set_cookie('this_lg',$_GET[lg]);
	//$thislgs=$SYSINFO[templates];
	$thislgs=$SYSINFO[templates].'_cn';
	header('location:'. $_SERVER['HTTP_REFERER']);
}
if($_GET[lg]=='en'){
	set_cookie('this_lg',$_GET[lg]);
	$thislgs=$SYSINFO[templates];
	header('location:'. $_SERVER['HTTP_REFERER']);
}
$SYSINFO['templates_name']=$thislgs;
?>