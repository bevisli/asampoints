<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}

/* 默认配置系统信息 */
$SYSINFO['sys_name'] = 'HUISHI';
$SYSINFO['sys_title'] = 'HUISHI';
$SYSINFO['sys_keywords'] = 'HUISHI';
$SYSINFO['sys_description'] = 'HUISHI';
$SYSINFO['sys_company'] = 'HUISHI';
$SYSINFO['sys_copyright'] = 'Copyright © 2014';
$SYSINFO['sys_icp'] = '闽ICP备01000010号';
$SYSINFO['sys_registerinfo'] = '';
$SYSINFO['sys_kftelphone'] = '0592-000000';
$SYSINFO['sys_kfqq'] = '';
$SYSINFO['email_send'] = 'false';
$SYSINFO['sys_smtpserver'] = 'mail.qq.com';
$SYSINFO['sys_smtpserverport'] = '25';
$SYSINFO['sys_smtpusermail'] = '';
$SYSINFO['sys_smtpuser'] = '';
$SYSINFO['sys_smtppass'] = '';
$SYSINFO['session'] = 'iweb_';
$SYSINFO['web'] = 'http://localhost/';
$SYSINFO['url_r'] = 'false';
$SYSINFO['im_review'] = 'true';
$SYSINFO['im_enable'] = 'false';
$SYSINFO['seller_page'] = '10';
$SYSINFO['search_page'] = '10';
$SYSINFO['product_page'] = '10';
$SYSINFO['article_page'] = '10';
$SYSINFO['height1'] = '84';
$SYSINFO['width1'] = '84';
$SYSINFO['height2'] = '300';
$SYSINFO['width2'] = '300';
$SYSINFO['templates'] = 'default';
$SYSINFO['template_mode'] = 'debug';
$SYSINFO['offline'] = 'true';
$SYSINFO['off_info'] = '站点维护中。。。';
$SYSINFO['timezone'] = '8';
$SYSINFO['sys_countjs'] = '';
$SYSINFO['map'] = 'false';
$SYSINFO['map_key'] = '';
$SYSINFO['sys_logo'] = '';
$SYSINFO['sys_domain'] = '0';
$SYSINFO['sys_smtptest'] = '';
$SYSINFO['version'] = 'v1.2';
$SYSINFO['verifycode'] = 'a:4:{i:1;s:1:"0";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"0";}'; 
$SYSINFO['site_domain'] = '.'.$HOSTURL; 
if(file_exists($webRoot."/cache/setting.php")) {
	include($webRoot."/cache/setting.php");
}
?>