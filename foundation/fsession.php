<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}
// 设置session
function set_session($k,$v) {
	global $session_prefix,$HOSTURL;
	if(!isset($_SESSION[$session_prefix.$k])){
		//session_regenerate_id(true);
		setcookie("huishi_session_id",session_id(),time()+3600*24*365*10,"/",".".$HOSTURL);
		//session_regenerate_id(true);
		$_SESSION[$session_prefix.$k] = $v;
	}else{
		$_SESSION[$session_prefix.$k] = $v;
	}
}

// 获取session
function get_session($k) {
	global $session_prefix;
	//p($_SESSION,0);
	if(isset($_SESSION[$session_prefix.$k])){
		 return $_SESSION[$session_prefix.$k];
	}else{
		if($_COOKIE[$session_prefix.$k]){
		 //reset_session($_COOKIE[$session_prefix.$k],$k);
		 return $_COOKIE[$session_prefix.$k];
		}else{
		 return null;
		}
	}
}

//USER_ID
function set_sess_user_id($v) {
	set_session('user_id',$v);
}
function get_sess_user_id() {
	return get_session('user_id');
}
//USER_NAME
function set_sess_user_name($v) {
	set_session('user_name',$v);
}
function get_sess_user_name() {
	return get_session('user_name');
}
//USER_ICO
function set_sess_user_ico($v) {
	set_session('user_ico',$v);
}
function get_sess_user_ico() {
	return get_session('user_ico');
}
//SHOP_ID
function set_sess_shop_id($v) {
	set_session('shop_id',$v);
}
function get_sess_shop_id() {
	return get_session('shop_id');
}
function set_sess_login_id($v) {
	set_session('login_id',$v);
}
function get_sess_login_id() {
	return get_session('login_id');
}
//USER_EMAIL
function set_sess_user_email($v) {
	set_session('user_email',$v);
}
function get_sess_user_email() {
	return get_session('user_email');
}
//EMAIL_CHECK
function set_sess_email_check($v) {
	set_session('email_check',$v);
}
function get_sess_email_check() {
	return get_session('email_check');
}
//privilege
function set_sess_privilege($v){
	set_session('privilege',$v);
}
function get_sess_privilege() {
	return get_session('privilege');
}
//rank_id
function set_sess_rank_id($v){
	set_session('rank_id',$v);
}
function get_sess_rank_id() {
	return get_session('rank_id');
}
//rank_name
function set_sess_rank_name($v){
	set_session('rank_name',$v);
}
function get_sess_rank_name() {
	return get_session('rank_name');
}
//error message
function set_sess_err_msg($v){
	set_session('err_msg',$v);
}
function get_sess_err_msg() {
	return get_session('err_msg');
}
function get_sess_admin()
{
	return get_session('admin_name');
}
?>