<?php
/*--HuiShiSoft.Com|Kimy 2013--*/
header("content-type:text/html;charset=utf-8");
define('HUISHI_SOFT_IN','1');
$HUISHI_SOFT_IN = true;
//�Ƿ�����̨ϵͳ���ݻ���
$OPEN_SYSSESSION = false;
//ģ���ַ
$HUISHI_MODULE = 'bW9kdWxlL2hz';
//�����������
require("includes.php");
//��ȡ_GET['r']��������
$r=SetandLoad(short_check(get_args('r')));
//����ģ��,ģ��
require($r[0]);include tpl_engine($SYSINFO['templates_name'],$r[1].".html",1);
?>