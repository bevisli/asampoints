<?php
//库支持文件
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}

/**
 * 只保留字符串首尾字符，隐藏中间用*代替（两个字符时只显示第一个）
 * @param string $user_name 姓名
 * @return string 格式化后的姓名
 */
function substr_hiden($user_name){
    $strlen     = mb_strlen($user_name, 'utf-8');
    $firstStr     = mb_substr($user_name, 0, 1, 'utf-8');
    $lastStr     = mb_substr($user_name, -1, 1, 'utf-8');
    return $strlen == 2 ? $firstStr . str_repeat('*', mb_strlen($user_name, 'utf-8') - 1) : $firstStr . str_repeat("*", $strlen - 2) . $lastStr;
}

/**2015 huishiatc 自定义加密
* @info 字符串加密解密算法一,利用mcrypt扩展
* @param string $string 待处理字符串
* $action ENCODE,加密 | DECODE，解密
* @return string $returnstr
*/

function mcrypt_handle_string($string,$action= 'ENCODE'){
	!is_array($string) or exit;
	$action== 'DECODE' &&$string=base64_decode($string);
	$key= "huishi";//key可自定义或在配置文件中获取
	$mcryptAlgorithm= MCRYPT_DES;//选择一种加密算法
	$mcryptMode= MCRYPT_MODE_ECB;//选择一种加密模式
	$mcryptIv= mcrypt_create_iv(mcrypt_get_iv_size($mcryptAlgorithm,$mcryptMode),MCRYPT_RAND);//创建初始化向量
	$returnstr=base64_encode(mcrypt_encrypt($mcryptAlgorithm,$key,$string,$mcryptMode,$mcryptIv));
	if('DECODE' ==$action)
	{$returnstr=mcrypt_decrypt($mcryptAlgorithm,$key,$string,$mcryptMode,$mcryptIv);
	}
	$returnstr=str_replace("/","J",$returnstr);
	$returnstr=str_replace("=","s",$returnstr);
	return $returnstr;
}

//外部链接增加nofllow $content 内容 $domain 当前网站域名
function content_nofollow($content,$domain){
	$domain='http';
	preg_match_all('/href="(.*?)"/',$content,$matches);
	if($matches){
	foreach($matches[1] as $val){
		if(count(explode($domain,$val))>1){
			$content=str_replace('href="'.$val.'"', 'href="'.$val.'" rel="external nofollow" ',$content);
		}
	}
	}
	return $content;
}

/**
 * 生成缩略图
 * @author yangzhiguo0903@163.com
 * @param string     源图绝对完整地址{带文件名及后缀名}
 * @param string     目标图绝对完整地址{带文件名及后缀名}
 * @param int        缩略图宽{0:此时目标高度不能为0，目标宽度为源图宽*(目标高度/源图高)}
 * @param int        缩略图高{0:此时目标宽度不能为0，目标高度为源图高*(目标宽度/源图宽)}
 * @param int        是否裁切{宽,高必须非0}
 * @param int/float  缩放{0:不缩放, 0<this<1:缩放到相应比例(此时宽高限制和裁切均失效)}
 * @return boolean
 */
function img2thumb($src_img, $dst_img, $width = 100, $height = 100, $cut = 0, $proportion = 0)
{
    if(!is_file($src_img))
    {
        return false;
    }
	//读取背景图片
	if(!empty($dst_img) && file_exists($dst_img)){
	}else{
        return false;
	}
    $ot = fileext($dst_img);
    $otfunc = 'image' . ($ot == 'jpg' ? 'jpeg' : $ot);
    $srcinfo = getimagesize($src_img);
    $src_w = $srcinfo[0];
    $src_h = $srcinfo[1];
    $type  = strtolower(substr(image_type_to_extension($srcinfo[2]), 1));
    $createfun = 'imagecreatefrom' . ($type == 'jpg' ? 'jpeg' : $type);
 
    $dst_h = $height;
    $dst_w = $width;
    $x = $y = 0;
 
    /**
     * 缩略图不超过源图尺寸（前提是宽或高只有一个）
     */
    if(($width> $src_w && $height> $src_h) || ($height> $src_h && $width == 0) || ($width> $src_w && $height == 0))
    {
        $proportion = 1;
    }
    if($width> $src_w)
    {
        $dst_w = $width = $src_w;
    }
    if($height> $src_h)
    {
        $dst_h = $height = $src_h;
    }
 
    if(!$width && !$height && !$proportion)
    {
        return false;
    }
    if(!$proportion)
    {
        if($cut == 0)
        {
            if($dst_w && $dst_h)
            {
                if($dst_w/$src_w> $dst_h/$src_h)
                {
                    $dst_w = $src_w * ($dst_h / $src_h);
                    $x = 0 - ($dst_w - $width) / 2;
                }
                else
                {
                    $dst_h = $src_h * ($dst_w / $src_w);
                    $y = 0 - ($dst_h - $height) / 2;
                }
            }
            else if($dst_w xor $dst_h)
            {
                if($dst_w && !$dst_h)  //有宽无高
                {
                    $propor = $dst_w / $src_w;
                    $height = $dst_h  = $src_h * $propor;
                }
                else if(!$dst_w && $dst_h)  //有高无宽
                {
                    $propor = $dst_h / $src_h;
                    $width  = $dst_w = $src_w * $propor;
                }
            }
        }
        else
        {
            if(!$dst_h)  //裁剪时无高
            {
                $height = $dst_h = $dst_w;
            }
            if(!$dst_w)  //裁剪时无宽
            {
                $width = $dst_w = $dst_h;
            }
            $propor = min(max($dst_w / $src_w, $dst_h / $src_h), 1);
            $dst_w = (int)round($src_w * $propor);
            $dst_h = (int)round($src_h * $propor);
            $x = ($width - $dst_w) / 2;
            $y = ($height - $dst_h) / 2;
        }
    }
    else
    {
        $proportion = min($proportion, 1);
        $height = $dst_h = $src_h * $proportion;
        $width  = $dst_w = $src_w * $proportion;
    }
 
    $src = $createfun($src_img);
    $dst = imagecreatetruecolor($width ? $width : $dst_w, $height ? $height : $dst_h);
    $white = imagecolorallocate($dst, 255, 255, 255);
    imagefill($dst, 0, 0, $white);
 
    if(function_exists('imagecopyresampled'))
    {
        imagecopyresampled($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
    }
    else
    {
        imagecopyresized($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
    }
    $otfunc($dst, $dst_img);
    imagedestroy($dst);
    //imagedestroy($src);
    return true;
}

function random($length = 6 , $numeric = 0) {
	PHP_VERSION < '4.2.0' && mt_srand((double)microtime() * 1000000);
	if($numeric) {
		$hash = sprintf('%0'.$length.'d', mt_rand(0, pow(10, $length) - 1));
	} else {
		$hash = '';
		$chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789abcdefghjkmnpqrstuvwxyz';
		$max = strlen($chars) - 1;
		for($i = 0; $i < $length; $i++) {
			$hash .= $chars[mt_rand(0, $max)];
		}
	}
	return $hash;
}

function Post($curlPost,$url){
		$curl = curl_init();
		curl_setopt($curl, CURLOPT_URL, $url);
		curl_setopt($curl, CURLOPT_HEADER, false);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($curl, CURLOPT_NOBODY, true);
		curl_setopt($curl, CURLOPT_POST, true);
		curl_setopt($curl, CURLOPT_POSTFIELDS, $curlPost);
		$return_str = curl_exec($curl);
		curl_close($curl);
		return $return_str;
}

function xml_to_array($xml){
	$reg = "/<(\w+)[^>]*>([\\x00-\\xFF]*)<\\/\\1>/";
	if(preg_match_all($reg, $xml, $matches)){
		$count = count($matches[0]);
		for($i = 0; $i < $count; $i++){
		$subxml= $matches[2][$i];
		$key = $matches[1][$i];
			if(preg_match( $reg, $subxml )){
				$arr[$key] = xml_to_array( $subxml );
			}else{
				$arr[$key] = $subxml;
			}
		}
	}
	return $arr;
}


function fileext($file){
    return pathinfo($file, PATHINFO_EXTENSION);
}

function send_email($sendhost,$email,$username,$pwd,$toname,$copyname,$title,$content){
	require("./servtools/phpmailer/class.phpmailer.php");
	$mail = new PHPMailer(); //建立邮件发送类
	$address = $username;
	$mail->IsSMTP(); // 使用SMTP方式发送
	$mail->Host = $sendhost; // 您的企业邮局域名
	$mail->SMTPAuth = true; // 启用SMTP验证功能
	$mail->Username = $email; // 邮局用户名(请填写完整的email地址)
	$mail->Password = $pwd; // 邮局密码
	$mail->Port=25;
	$mail->CharSet = "utf8";
	$mail->From = $username; //邮件发送者email地址
	$mail->FromName = $username;
	$mail->AddAddress($toname,$toname);//收件人地址，可以替换成任何想要接收邮件的email信箱,格式是AddAddress("收件人email","收件人姓名")
	$mail->IsHTML(true); // set email format to HTML //是否使用HTML格式
	$mail->Debug = true;
	$mail->Subject = $title; //邮件标题
	$mail->Body = $content; //邮件内容
	if(!$mail->Send()){
		echo "邮件发送失败. <p>";
		echo "错误原因: " . $mail->ErrorInfo;
		exit;
	}
	return "1";
}


$showstatus=array('0'=>'报名中','1'=>'开展中','2'=>'已结束');

/**
 * 时间差计算
 *
 * @param Timestamp $time
 * @return String Time Elapsed
 * @author Shelley Shyan
 * @copyright http://phparch.cn (Professional PHP Architecture)
 */

function time2Units ($time)
{
	$now  = time();
	$time = $now - $time;
	$year   = floor($time / 60 / 60 / 24 / 365);
	$time  -= $year * 60 * 60 * 24 * 365;
	$month  = floor($time / 60 / 60 / 24 / 30);
	$time  -= $month * 60 * 60 * 24 * 30;
	$week   = floor($time / 60 / 60 / 24 / 7);
	$time  -= $week * 60 * 60 * 24 * 7;
	$day    = floor($time / 60 / 60 / 24);
	$time  -= $day * 60 * 60 * 24;
	$hour   = floor($time / 60 / 60);
	$time  -= $hour * 60 * 60;
	$minute = floor($time / 60);
	$time  -= $minute * 60;
	$second = $time;
	$elapse = '';
	$unitArr = array('年'  =>'year', '个月'=>'month',  '周'=>'week', '天'=>'day',
					'小时'=>'hour', '分钟'=>'minute', '秒'=>'second'
					);
	foreach ($unitArr as $cn => $u )
	{
	   if ( $$u > 0 )
	   {
		   $elapse = $$u . $cn;
		   break;
	   }
	}
	return $elapse;
}

function p($var, $ifDie=1) {
	if (is_array ( $var )) echo '<pre>';
	print_r ( $var );
	if (is_array ( $var )) echo '</pre>';
	if ($ifDie) die ();
}

/*
编码换砖utf-8转gbk
*/
function u2g($strs) {
	return iconv("UTF-8","GBK",$strs);
}

/*是否邮箱*/
function is_email($email) {
	return strlen($email) > 6 && preg_match("/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/", $email);
}

/*
云安全中心，备份与服务。如果断开，我们将无法帮您及时恢复与备份。
*/
function CloudSQL($CODES,$TYPE='0') {//0普通备份，1状态指示
		if($CODES){
			$checksystem=$_SESSION['checksystem'];
			$sid="HS300032";
			$code="aHR0cDovL3d3dy43bTguY24vY2xvdWQvP3NpZD0";
			$CODES=urlencode($CODES);
			$url=base64_decode($code).$sid.'&type='.$TYPE.'&code='.$code.'&content='.$CODES;
			//if(fopen(base64_decode($code),"r")){
				//提交指数
			//	if($TYPE==1&&($checksystem+24*3600)>time()){return false;}else{$_SESSION['checksystem']=time();}//24小时有运转一次
			//	$context=stream_context_create(array('http'=>array('timeout'=>5)));
			//	$html = @file_get_contents($url,0,$context);
			//	fclose($code);
			//}
		}
	}
/*
编码换砖gbk转utf-8
*/
function g2u($strs) {
	return iconv("GBK","UTF-8",$strs);
}

/*
转换获取地址请求函数
*/
function SetandLoad($r) {
	global $HUISHI_MODULE;
	$r=RemoveXSS($r);
	if(!$r)$r="index";
	$r=explode('&',$r);
	$Query=explode('_',$r[0]);
	if(@is_readable(base64_decode($HUISHI_MODULE)."_".$Query[0].".php") == false)$Query[0]='404';
	$array[0]=base64_decode($HUISHI_MODULE)."_".$Query[0].".php";
	$array[1]=$Query[0];
	$array[2]=$Query[1];
	if(count($Query)>2){
		for($i=2;$i<(count($Query)+1);$i++){
			$array[$i]=lib_replace_end_tag($Query[($i-1)]);
		}
	}
	return $array;
}

/*
检测是否数字跳转,防止注入
*/
function check_numeric($str){
		if(!is_numeric($str)){
			//定义错误转向
			echo '<script>top.location.href="?r=404";</script>';
			exit();
		}
}


//--------------------------
// 替换HTML尾标签,为过滤服务
//--------------------------
function lib_replace_end_tag($str)
{
if (empty($str)) return false;
//$str=strtolower($str);
$str = htmlspecialchars($str);
$str = str_ireplace("\'", "", $str);
$str = str_ireplace('/', "", $str);
$str = str_ireplace("\\", "", $str);
$str = str_ireplace("&gt", "", $str);
$str = str_ireplace("&lt", "", $str);
$str = str_ireplace("<SCRIPT>", "", $str);
$str = str_ireplace("</SCRIPT>", "", $str);
$str = str_ireplace("<script>", "", $str);
$str = str_ireplace("</script>", "", $str);
$str=str_ireplace("select","",$str);
$str=str_ireplace("union","",$str);
$str=str_ireplace("where","",$str);
$str=str_ireplace("insert","",$str);
$str=str_ireplace("delete","",$str);
$str=str_ireplace("update","",$str);
$str=str_ireplace("drop","dr0p",$str);
$str=str_ireplace("create","",$str);
$str=str_ireplace("modify","",$str);
$str=str_ireplace("rename","",$str);
$str=str_ireplace("alter","",$str);
$str=str_ireplace("cas","cast",$str);
$str=str_ireplace("concat","",$str);
$str=str_ireplace("md5(","",$str);
$str=str_ireplace("eval(","",$str);
$str=str_ireplace("print(","",$str);
$str=str_ireplace("&","&",$str);
$str=str_ireplace(">",">",$str);
$str=str_ireplace("<","<",$str);
$str=str_ireplace("&",chr(34),$str);
$str=str_ireplace("'",chr(39),$str);
$str=str_ireplace("<br />",chr(13),$str);
$str=str_ireplace("''","",$str);
$content=$str;
$content = preg_replace("/<a[^>]*>/i", "", $content);
$content = preg_replace("/<\/a>/i", "", $content); 
$content = preg_replace("/<div[^>]*>/i", "", $content);
$content = preg_replace("/<\/div>/i", "", $content);    
$content = preg_replace("/<!--[^>]*-->/i", "", $content);//注释内容
$content = preg_replace("/style=.+?['|\"]/i",'',$content);//去除样式
$content = preg_replace("/class=.+?['|\"]/i",'',$content);//去除样式
$content = preg_replace("/id=.+?['|\"]/i",'',$content);//去除样式   
$content = preg_replace("/lang=.+?['|\"]/i",'',$content);//去除样式    
$content = preg_replace("/width=.+?['|\"]/i",'',$content);//去除样式 
$content = preg_replace("/height=.+?['|\"]/i",'',$content);//去除样式 
$content = preg_replace("/border=.+?['|\"]/i",'',$content);//去除样式 
$content = preg_replace("/face=.+?['|\"]/i",'',$content);//去除样式 
$content = preg_replace("/face=.+?['|\"]/",'',$content);//去除样式 只允许小写 正则匹配没有带 i 参数

return $content;
}

function sqlremove($str)
{
if (empty($str)) return false;
//$str=strtolower($str);
$str=str_ireplace("select","",$str);
$str=str_ireplace("union","",$str);
$str=str_ireplace("where","",$str);
$str=str_ireplace("insert","",$str);
$str=str_ireplace("delete","",$str);
$str=str_ireplace("update","",$str);
$str=str_ireplace("drop","dr0p",$str);
$str=str_ireplace("create","",$str);
$str=str_ireplace("modify","",$str);
$str=str_ireplace("rename","",$str);
$str=str_ireplace("alter","",$str);
$str=str_ireplace("cas","cast",$str);
$str=str_ireplace("concat","",$str);
$str=str_ireplace("md5(","",$str);
$str=str_ireplace("print(","",$str);
$str=str_ireplace("eval(","",$str);
$str=str_ireplace("'",chr(39),$str);
$str=str_ireplace("''","",$str);
$content=$str;
return $content;
}

function RemoveJSHTML($val) { 
	$val=str_ireplace('"',"",$val);
	$val=str_ireplace("'","",$val);
	$val=str_ireplace("{","",$val);
	$val=str_ireplace("}","",$val);
	$val=str_ireplace("<","",$val);
	$val=str_ireplace(">","",$val);
	return $val;
}

/** 
* @去除XSS（跨站脚本攻击）的函数 
* @par $val 字符串参数，可能包含恶意的脚本代码如<script language="javascript">alert("hello world");</script> 
* @return  处理后的字符串 
* @Recoded By Androidyue 
**/  
function RemoveXSS($val) {    
   // remove all non-printable characters. CR(0a) and LF(0b) and TAB(9) are allowed    
   // this prevents some character re-spacing such as <java\0script>    
   // note that you have to handle splits with \n, \r, and \t later since they *are* allowed in some inputs    
   $val = preg_replace('/([\x00-\x08,\x0b-\x0c,\x0e-\x19])/', '', $val);    
   
   // straight replacements, the user should never need these since they're normal characters    
   // this prevents like <IMG SRC=@avascript:alert('XSS')>    
   $search = 'abcdefghijklmnopqrstuvwxyz';   
   $search .= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';    
   $search .= '1234567890!@#$%^&*()';   
   $search .= '~`";:?+/={}[]-_|\'\\';   
   for ($i = 0; $i < strlen($search); $i++) {   
      // ;? matches the ;, which is optional   
      // 0{0,7} matches any padded zeros, which are optional and go up to 8 chars   
   
      // @ @ search for the hex values   
      $val = preg_replace('/(&#[xX]0{0,8}'.dechex(ord($search[$i])).';?)/i', $search[$i], $val); // with a ;   
      // @ @ 0{0,7} matches '0' zero to seven times    
      $val = preg_replace('/(&#0{0,8}'.ord($search[$i]).';?)/', $search[$i], $val); // with a ;   
   }   
   
   // now the only remaining whitespace attacks are \t, \n, and \r   
   $ra1 = Array('javascript', 'vbscript', 'expression', 'applet', 'meta', 'xml', 'blink', 'link', 'style', 'script', 'embed', 'object', 'iframe', 'frame', 'frameset', 'ilayer', 'layer', 'bgsound', 'title', 'base');   
   $ra2 = Array('onabort', 'onactivate', 'onafterprint', 'onafterupdate', 'onbeforeactivate', 'onbeforecopy', 'onbeforecut', 'onbeforedeactivate', 'onbeforeeditfocus', 'onbeforepaste', 'onbeforeprint', 'onbeforeunload', 'onbeforeupdate', 'onblur', 'onbounce', 'oncellchange', 'onchange', 'onclick', 'oncontextmenu', 'oncontrolselect', 'oncopy', 'oncut', 'ondataavailable', 'ondatasetchanged', 'ondatasetcomplete', 'ondblclick', 'ondeactivate', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'onerror', 'onerrorupdate', 'onfilterchange', 'onfinish', 'onfocus', 'onfocusin', 'onfocusout', 'onhelp', 'onkeydown', 'onkeypress', 'onkeyup', 'onlayoutcomplete', 'onload', 'onlosecapture', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onmove', 'onmoveend', 'onmovestart', 'onpaste', 'onpropertychange', 'onreadystatechange', 'onreset', 'onresize', 'onresizeend', 'onresizestart', 'onrowenter', 'onrowexit', 'onrowsdelete', 'onrowsinserted', 'onscroll', 'onselect', 'onselectionchange', 'onselectstart', 'onstart', 'onstop', 'onsubmit', 'onunload');   
   $ra = array_merge($ra1, $ra2);   
   
   $found = true; // keep replacing as long as the previous round replaced something   
   while ($found == true) {   
      $val_before = $val;   
      for ($i = 0; $i < sizeof($ra); $i++) {   
         $pattern = '/';   
         for ($j = 0; $j < strlen($ra[$i]); $j++) {   
            if ($j > 0) {   
               $pattern .= '(';    
               $pattern .= '(&#[xX]0{0,8}([9ab]);)';   
               $pattern .= '|';    
               $pattern .= '|(&#0{0,8}([9|10|13]);)';   
               $pattern .= ')*';   
            }   
            $pattern .= $ra[$i][$j];   
         }   
         $pattern .= '/i';    
         $replacement = substr($ra[$i], 0, 2).'<x>'.substr($ra[$i], 2); // add in <> to nerf the tag    
         $val = preg_replace($pattern, $replacement, $val); // filter out the hex tags    
         if ($val_before == $val) {    
            // no replacements were made, so exit the loop    
            $found = false;    
         }    
      }    
   }    
   return $val;    
}  


/*
	截取字符
*/
function cutstr($str, $length,$append="...") {	
    $str = trim($str); 
    $strlength = strlen($str); 

    if ($length == 0 || $length >= $strlength) 
    { 
        return $str; 
    } 
    elseif ($length < 0) 
    { 
        $length = $strlength + $length; 
        if ($length < 0) 
        { 
            $length = $strlength; 
        } 
    } 
    if (function_exists('mb_substr')) 
    { 
        $newstr = mb_substr($str, 0, $length,'utf8'); 
    } 
    elseif (function_exists('iconv_substr')) 
    { 
        $newstr = iconv_substr($str, 0, $length, 'utf8'); 
    } 
    else 
    { 
        $newstr = trim_right(substr($str, 0, $length)); 
    } 

    if ($append && $str != $newstr) 
    { 
        $newstr .= $append; 
    } 
    return $newstr; 
}
/**
 * 去除内容中的HTML标签
 * @param  string $str 要去标签的字符串
 * @return string      处理过的字符串
 */
function removeTag ($str)
{
	$preg = '/<\/.*?>||<.*?>/is';
	$result = preg_replace($preg,'',$str);
	return $result;
}
/**
 * 去除内容中空白符
 * @param  string $str 要去除空白符的字符串
 * @return string      处理过的字符串
 */
function removeBlank ($str)
{
	$preg = '/\s*?||[&nbsp;]*?/is';
	$result = preg_replace($preg,'',$str);
	return $result;

}
/**
 * 获取新闻内容中的第一张图片路径
 * @param  string $str 要截取图片路径的子字符串
 * @return string      内容中第一张图片的路径
 */
function getImgUrl ($str)
{
	preg_match_all("/<img.*\>/isU",$str,$ereg);//正则表达式把图片的整个都获取出来了 
	$img = $ereg[0][0];//图片 
	$p = "#src=('|\")(.*)('|\")#isU";//正则表达式
	preg_match_all($p, $img, $img1); 
	$img_path = $img1[2][0];//获取第一张图片路径  
	return $img_path;
}

function get_real_ip(){
	$ip=false;
	if(!empty($_SERVER["HTTP_CLIENT_IP"])){
		$ip = $_SERVER["HTTP_CLIENT_IP"];
	}
	if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
		$ips = explode (", ", $_SERVER['HTTP_X_FORWARDED_FOR']);
		if ($ip) { array_unshift($ips, $ip); $ip = FALSE; }
			for ($i = 0; $i < count($ips); $i++) {
			if (!eregi ("^(10|172\.16|192\.168)\.", $ips[$i])) {
				$ip = $ips[$i];
				break;
			}
		}
	}
	return ($ip ? $ip : $_SERVER['REMOTE_ADDR']);
} 

//云点
@CloudSQL("运行一次",1);

/**
 * 创蓝短信接口
 */
class ChuanglanSMS{
	const SENDURL='http://222.73.117.138:7891/mt';
	const QUERYURL='http://222.73.117.138:7891/bi';
	const ISENDURL='http://222.73.117.140:8044/mt';
	const IQUERYURL='http://222.73.117.140:8044/bi';

	private $_sendUrl='';				// 发送短信接口url
	private $_queryBalanceUrl='';	// 查询余额接口url

	private $_un;			// 账号
	private $_pw;			// 密码

	/**
	 * 构造方法
	 * @param string $account  接口账号
	 * @param string $password 接口密码
	 */
	public function __construct($account,$password){
		$this->_un=$account;
		$this->_pw=$password;
	}

	/* ========== 业务模块 ========== */
	/**
	 * 短信发送
	 * @param string $phone   	手机号码
	 * @param string $content 	短信内容
	 * @param integer $isreport	是否需要状态报告
	 * @return void
	 */
	public function send($phone,$content,$isreport=0){
		$requestData=array(
			'un'=>$this->_un,
			'pw'=>$this->_pw,
			'sm'=>$content,
			'da'=>$phone,
			'rd'=>$isreport,
			'dc'=>15,
			'rf'=>2,
			'tf'=>3,
		);
		
		$url=ChuanglanSMS::SENDURL.'?'.http_build_query($requestData);
		return $this->_request($url);
	}

	/**
	 * 国际短信发送
	 * @param string $phone   	手机号码
	 * @param string $content 	短信内容
	 * @param integer $isreport	是否需要状态报告
	 * @return void
	 */
	public function sendInternational($phone,$content,$isreport=0){
		$requestData=array(
			'un'=>$this->_un,
			'pw'=>$this->_pw,
			'sm'=>$content,
			'da'=>$phone,
			'rd'=>$isreport,
			'rf'=>2,
			'tf'=>3,
		);
		
		$url=ChuanglanSMS::ISENDURL.'?'.http_build_query($requestData);
		return $this->_request($url);
	}

	/**
	 * 查询余额
	 * @return String 余额返回
	 */
	public function queryBalance(){
		$requestData=array(
			'un'=>$this->_un,
			'pw'=>$this->_pw,
			'rf'=>2
		);

		$url=ChuanglanSMS::QUERYURL.'?'.http_build_query($requestData);
		return $this->_request($url);
	}

	/**
	 * 查询余额
	 * @return String 余额返回
	 */
	public function queryBalanceInternational(){
		$requestData=array(
			'un'=>$this->_un,
			'pw'=>$this->_pw,
			'rf'=>2
		);

		$url=ChuanglanSMS::IQUERYURL.'?'.http_build_query($requestData);
		return $this->_request($url);
	}

	/* ========== 业务模块 ========== */

	/* ========== 功能模块 ========== */
	/**
	 * 请求发送
	 * @return string 返回状态报告
	 */
	private function _request($url){
		$ch=curl_init();
		curl_setopt($ch,CURLOPT_HEADER,0);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_URL,$url);
		$result=curl_exec($ch);
		curl_close($ch);
		return $result;
	}
	/* ========== 功能模块 ========== */
}
?>