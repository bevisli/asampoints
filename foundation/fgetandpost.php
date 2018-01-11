<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}

//对表单的统一处理
function get_args($name)
{
	global $USER_INFO;
	if(isset($_GET[$name])){
		$_GET[$name]=str_ireplace("select","",$_GET[$name]);
		$_GET[$name]=str_ireplace("join","",$_GET[$name]);
		$_GET[$name]=str_ireplace("where","",$_GET[$name]);
		$_GET[$name]=str_ireplace("insert","",$_GET[$name]);
		$_GET[$name]=str_ireplace("delete","",$_GET[$name]);
		$_GET[$name]=str_ireplace("update","",$_GET[$name]);
		$_GET[$name]=str_ireplace("drop","",$_GET[$name]);
		$_GET[$name]=str_ireplace("create","",$_GET[$name]);
		$_GET[$name]=str_ireplace("rename","",$_GET[$name]);
		$_GET[$name]=str_ireplace("fwrite","",$_GET[$name]);
		$_GET[$name]=str_ireplace("eval(","",$_GET[$name]);
		$_GET[$name]=str_replace("eval(","",$_GET[$name]);
		return $_GET[$name];
	}
	if(isset($_POST[$name])){
		$_POST[$name]=str_ireplace("select","",$_POST[$name]);
		$_POST[$name]=str_ireplace("join","",$_POST[$name]);
		$_POST[$name]=str_ireplace("where","",$_POST[$name]);
		$_POST[$name]=str_ireplace("insert","",$_POST[$name]);
		$_POST[$name]=str_ireplace("delete","",$_POST[$name]);
		$_POST[$name]=str_ireplace("update","",$_POST[$name]);
		$_POST[$name]=str_ireplace("drop","",$_POST[$name]);
		$_POST[$name]=str_ireplace("create","",$_POST[$name]);
		$_POST[$name]=str_ireplace("rename","",$_POST[$name]);
		$_POST[$name]=str_ireplace("fwrite","",$_POST[$name]);
		$_POST[$name]=str_ireplace("eval(","",$_POST[$name]);
		$_POST[$name]=str_replace("eval(","",$_POST[$name]);
		return $_POST[$name];
	}
	return null;
}
?>