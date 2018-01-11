<?php
/*--HuiShiSoft.Com|Kimy 2013--*/
header("content-type:text/html;charset=utf-8");
define('HUISHI_SOFT_IN','1');
$HUISHI_SOFT_IN = true;
//是否开启后台系统内容缓存
$OPEN_SYSSESSION = false;
//模块地址
$HUISHI_MODULE = 'bW9kdWxlL2hz';
//核心组件加载
require("includes.php");
//获取_GET['r']参数处理
$r=SetandLoad(short_check(get_args('r')));
//读入模块,模板
require($r[0]);include tpl_engine($SYSINFO['templates_name'],$r[1].".html",1);
?>