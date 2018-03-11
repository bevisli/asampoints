<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}
include 'security.php';

//导航URL处理
function URL_NAV($nav){
	global $url_rewrite;
	if($nav!='/'){
		$str=explode('_',$nav);
		if($url_rewrite=='true') {
			$url = '/'.$str[0].'/';
			if($str[1]){
			$url = $url.$str[1].'/';
			}
			if($str[2]){
			$url = $url.$str[2].'/';
			}
			if($str[3]){
			$url = $url.$str[3].'/';
			}
			if($str[4]){
			$url = $url.$str[4].'/';
			}
		} else {
			$url = "?r=".$nav;
		}
	}else{
			$url = $nav;
	}

    $key = "ZxzkwqDplL8yo7b0xUF5Rg==";
    $value = get_sess_user_id();
    $loginUrl = "javascript:loginsend();";

    $javaPage = "/shipping/";
    if (substr($url, 0, strlen($javaPage)) == $javaPage) {
        if(!isset($value) || trim($value)==='')
            $url = $loginUrl;
        else
            $url = "//shipping.asamxpress.com/shipping?key=" . urlencode(Security::encrypt($value, $key));
    } else {
        $javaPage = "/tracking/";
        if (substr($url, 0, strlen($javaPage)) == $javaPage) {
            if(!isset($value) || trim($value)==='')
                $url = $loginUrl;
            else
                $url = "//shipping.asamxpress.com/order?key=" . urlencode(Security::encrypt($value, $key));
        }
    }

	return $url;
}

//新闻URL处理
function URL_NEWS($nav,$cat_id=0,$new_id=0){
	global $url_rewrite;
	if($nav!=''){
		if($url_rewrite=='true') {
			$url = '/'.$nav.'/';
			if($cat_id>0){
			$url = $url.$cat_id.'/';
			}
			if($new_id>0){
			$url = $url.$new_id.'/';
			}
		} else {
			$url = "?r=".$nav;
			if($cat_id>0){
			$url = $url.'_'.$cat_id;
			}
			if($new_id>0){
			$url = $url.'_'.$new_id;
			}
		}
	}else{
			$url = $nav;
	}
	return $url;
}

//产品URL处理
function URL_PRO($nav,$cat_id=0,$pro_id=0){
	global $url_rewrite;
	if($nav!=''){
		if($url_rewrite=='true') {
			$url = '/'.$nav.'/';
			if($cat_id>0){
			$url = $url.$cat_id.'/';
			}
			if($pro_id>0){
			$url = $url.$pro_id.'/';
			}
		} else {
			$url = "?r=".$nav;
			if($cat_id>0){
			$url = $url.'_'.$cat_id;
			}
			if($pro_id>0){
			$url = $url.'_'.$pro_id;
			}
		}
	}else{
			$url = $nav;
	}
	return $url;
}


//报名URL处理
function URL_APPLY($nav,$act_id=0){
	global $url_rewrite;
	if($nav!=''){
		if($url_rewrite=='true') {
			$url = '/'.$nav.'/';
			if($act_id>0){
			$url = $url.$act_id.'/';
			}
		} else {
			$url = "?r=".$nav;
			if($act_id>0){
			$url = $url.'_'.$act_id;
			}
		}
	}else{
			$url = $nav;
	}
	return $url;
}

//活动URL处理
function URL_ACT($nav,$cat_id=0,$act_id=0){
	global $url_rewrite;
	if($nav!=''){
		if($url_rewrite=='true') {
			$url = '/'.$nav.'/';
			if($cat_id>0){
			$url = $url.$cat_id.'/';
			}
			if($act_id>0){
			$url = $url.$act_id.'/';
			}
		} else {
			$url = "?r=".$nav;
			if($cat_id>0){
			$url = $url.'_'.$cat_id;
			}
			if($act_id>0){
			$url = $url.'_'.$act_id;
			}
		}
	}else{
			$url = $nav;
	}
	return $url;
}

function urlRewrite(){
	$script_name = basename($_SERVER['SCRIPT_NAME']);
	$request_str = strstr($_SERVER['REQUEST_URI'],'.php');
	$request_str=preg_replace("/\.(html|htm|php)$/",'',$request_str);
	$request_arr=explode('/',$request_str);
	array_shift($request_arr);
}

if($url_rewrite) {
	urlRewrite();
}
?>