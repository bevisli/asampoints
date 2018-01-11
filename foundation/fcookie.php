<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}

function set_cookie($k,$v,$t=2592000) {
	global $session_prefix;
	setcookie($session_prefix.$k, $v, time()+$t);
}

function get_cookie($k) {
	global $session_prefix;
	if(isset($_COOKIE[$session_prefix.$k])) return $_COOKIE[$session_prefix.$k];
	return null;
}

function unset_cookie($k) {
	global $session_prefix;
	setcookie($session_prefix.$k, '', time()-3600);
}

?>