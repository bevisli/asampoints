<?php
/*--HuiShiSoft.Com|Kimy 2013--*/
header("content-type:text/html;charset=utf-8");
$HUISHI_SOFT_IN = true;
//是否开启后台系统内容缓存
$OPEN_SYSSESSION = false;
//模块地址
$HUISHI_MODULE = 'bW9kdWxlL2hz';
//核心组件加载
require("../includes.php");
/************AJAX模块**********/


$POWER[power_id]=get_session('power_id');
$POWER[power_nice]=get_session('power_nice');
$act=short_check(get_args('act'));
$sid=get_args('sid');


//物流查询
if($act=='getexpress'&&get_args('tval')){
	$tval=get_args('tval');
	$tid=get_args('tid');

	class Express {
	private $expressname =array(); //封装了快递名称
	function __construct(){
	$this->expressname = $this->expressname();
	}

	/*
	* 采集网页内容的方法
	*/
	private function getcontent($url){
	if(function_exists("file_get_contents")){
	$file_contents = file_get_contents($url);
	}else{
	$ch = curl_init();
	$timeout = 5;
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
	$file_contents = curl_exec($ch);
	curl_close($ch);
	}
	return $file_contents;
	}
	/*
	* 获取对应名称和对应传值的方法
	*/
	private function expressname(){
	$result = $this->getcontent("http://www.kuaidi100.com/");
	preg_match_all("/data\-code\=\"(?P\w+)\"\>\(?P.*)\< \/span>/iU",$result,$data);
	$name = array();
	foreach($data['title'] as $k=>$v){
	$name[$v] =$data['name'][$k];
	}
	return $name;
	}

	/*
	* 解析object成数组的方法
	* @param $json 输入的object数组
	* return $data 数组
	*/
	private function json_array($json){
	if($json){
	foreach ((array)$json as $k=>$v){
	$data[$k] = !is_string($v)?$this->json_array($v):$v;
	}
	return $data;
	}
	}

	/*
	* 返回$data array      快递数组
	* @param $name         快递名称
	* 
	* 能达速递-如风达-瑞典邮政-全一快递-全峰快递-全日通-申通快递-顺丰快递-速尔快递-TNT快递-天天快递
	* 天地华宇-UPS快递-新邦物流-新蛋物流-香港邮政-圆通快递-韵达快递-邮政包裹-优速快递-中通快递)
	* 中铁快运-宅急送-中邮物流
	* @param $order        快递的单号
	* $data['ischeck'] ==1   已经签收
	* $data['data']        快递实时查询的状态 array
	*/
	public function getorder($name,$order){
		if($name=='AAE'){
			$cha='http://dhxc.aaeweb.com/WaybillTracks.aspx?lge=cn&danhao='.$order.'&temp=0.'.time()*30;
		}elseif($name=='DF'){
			$cha='http://www.dfkdusa.com/TrackList.aspx?TrackingNOList='.$order.'&temp=0.'.time()*30;
		}elseif($name=='JJ'){
			$cha=''.$order.'&temp=0.'.time()*30;
		}
		$data = $this->getcontent($cha);

		if($name=='AAE'){
			$preg2="/<span style=\"color: red;\"><\/span>(.*)<\/form>/isU";//正则
			preg_match_all($preg2,$data,$arr2);
			$data=$arr2[1][0];
			$data=str_replace("\r\n","",$data);
			$data=trim(str_replace("width: 600px;","",$data));
			$data=trim(str_replace("#a9a9a9","#ececec",$data));
			$data=preg_replace('/(<br>|<p>\s*?<\/p>)+$/i','',$data);

		}elseif($name=='DF'){
			$preg2="/<div style=\"min-height: 600px; padding: 20px; line-height: 22px; border: 0px solid #ccc; clear: both; float: left; width: 100%;\">(.*)<\/table>/isU";//正则
			preg_match_all($preg2,$data,$arr2);
			$data=$arr2[1][0]."</table></div>";
			$data=str_replace("\r\n","",$data);
			$data=trim(str_replace("clear: both;","",$data));
			$data=trim(str_replace("float: left;","",$data));
			$data=trim(str_replace('width: 1000px;','',$data));
			$data=preg_replace('/(<br>|<p>\s*?<\/p>)+$/i','',$data);
		}elseif($name=='JJ'){
			$cha=''.$order.'&temp=0.'.time()*30;
		}
		return $data;
	}
	}
	$a = new Express();
	$result = $a->getorder($tval,$tid);
	if($result){
		echo "<h4>运单号 ".$tid." 物流信息</h4>";
		echo $result;
	}else{
		echo "暂无物流信息！";
	}
	exit();
}


//操作订单状态更改
if($act=='sureudso'&&intval($sid)){

	$t_pro = $tablePreStr."pro";

	$vid=intval(get_args('vid'));
	if($vid==1){//发货判断
		$express=get_args('expname');
		$express_id=get_args('expid');
		if(!$express){
			die('请选择物流快递公司！');
		}
		if(!$express_id){
			die('请输入物流单号！');
		}
		$sql="update $t_pro set status='".$vid."',pro_expressname='".$express."',pro_expressid='".$express_id."' where pro_id='".$sid."'";
		if($dbo->exeUpdate($sql)){
			echo '1';
		}
	}else{
		$sql="update $t_pro set status='".$vid."' where pro_id='".$sid."'";
		if($dbo->exeUpdate($sql)){
			echo '1';
		}
	}
	exit();
}



//登录注册忘记密码
if($act=='login'){ 
	$backurl = $_SERVER['HTTP_REFERER'];
	echo '<form class="form-horizontal" role="form" method="post" action="'.URL_NAV('login').'"  id="contactform" target="i_frame" ><input name="backurl" type="hidden" value="'.$backurl.'"><div class="modal-body"><input type="hidden" name="act" value="login"><div class="form-group"><label for="required_id" class="col-sm-3 control-label">手机号</label><div class="col-sm-6"><input type="text" name="required_id" id="required_id" class="form-control" placeholder="手机号"></div></div><div class="form-group"><label for="required_pw" class="col-sm-3 control-label">密码</label><div class="col-sm-6"><input type="password" name="required_pw" id="required_pw" class="form-control"  placeholder="密码"></div></div><div class="form-group"><div class="col-sm-offset-3 col-sm-6"><small class="help-block"><span class="glyphicon glyphicon-search"></span>忘记密码？<a onclick="forget()" href="/forget/" data-toggle="modal" data-target=".forget">(找回密码)</a></small></div></div></div><div class="modal-footer"><a onclick="registration()" href="/reg/" data-toggle="modal" data-target=".registration">没有账号,我要注册一个！</a><button type="button" class="btn btn-gray" data-dismiss="modal">关闭</button><button type="submit" class="btn btn-orange">登录</button></div></form><IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>';
	exit();
}
if($act=='forget'){
	$_SESSION['send_code'] = random(6,1);
	echo'<form class="form-horizontal" role="form" method="post" action="'.URL_NAV('reg').'"  id="contactform" target="i_frame" ><input name="backurl" type="hidden" value="'.$backurl.'"><div class="modal-body"><input type="hidden" name="act" value="forget"><div class="form-group"><label for="edit-name" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">手机号</label><div class="col-sm-6"><div class="col-md-2  input-group" style="position: absolute;height: 34px;"><span class="input-group-addon" style="height: 34px;">+</span><select name="u_mobilecode" id="u_mobilecode" data-rel="chosen" style="height: 34px;border: solid 1px #cccccc;"><option value="0086" selected="">0086</option><option value="001">001</option></select></div><div class="col-md-8 col-md-offset-2 phone-col"><input type="text" name="u_phone" id="u_phone" class="form-control" onblur="checkphone()" placeholder="请输入手机号" autocomplete="off"></div></div><div class="col-sm-3"><p class="form-control-static text-danger" id="textu_phone"></p></div></div></div><div class="form-group"><label for="checkCode" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">短信验证码</label><div class="col-sm-6 registration_phone_code"><input type="text" class="form-control " name="checkCode" id="checkCode" maxlength="4" placeholder="短信验证码(必须填写)" value="" autocomplete="off"><input type="button" id="js_get_phone" class="btn btn-info" onclick="getmobilecode();" style="margin-top:5px;" value="免费获取验证码"></div><div class="col-sm-3"></div></div></div><div class="modal-footer"><button type="button" class="btn btn-gray" data-dismiss="modal">关闭</button><a class="btn btn-orange" href="javascript:;" onclick="getforget2()">下一步</a></div></form><script>var secode="'.$_SESSION['send_code'].'";</script><script src="/js/forget.js"></script><IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>';
	exit();
}
if($act=='registration'){
	$_SESSION['send_code'] = random(6,1);
	echo '<form class="form-horizontal" role="form" action="'.URL_NAV('reg').'" method="post" name="regtable" target="i_frame"><div class="modal-body"><div class="reg"><div class="reg-content"><input name="act" type="hidden" value="reg"><div class="form-group"><label for="edit-name" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">手机号</label><div class="col-sm-6"><div class="col-md-2  input-group" style="position: absolute;height: 34px;"><span class="input-group-addon" style="height: 34px;border: solid 1px #cccccc;">+</span><select name="u_mobilecode" id="u_mobilecode" data-rel="chosen" style="height: 34px;"><option value="0086" selected="">0086</option><option value="001">001</option></select></div><div class="col-md-8 col-md-offset-2 phone-col"><input type="text" name="u_phone" id="u_phone" class="form-control" onblur="checkphone()" placeholder="请输入手机号" autocomplete="off"></div></div><div class="col-sm-3"><p class="form-control-static text-danger" id="textu_phone"></p></div></div><div class="form-group"><label for="edit-pass-pass1" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">密码</label><div class="col-sm-6"><input type="password" name="u_pass1" id="u_pass1" class="form-control" placeholder="" onblur="checkuserpassword()" autocomplete="off"></div><div class="col-sm-3"><p id="textu_pass1" style="font-size:14px;">密码不能为空!</p></div></div><div class="form-group"><label for="edit-ture-name" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">姓名</label><div class="col-sm-6"><input type="text" class="form-control" name="u_name" id="u_name" placeholder="" onblur="checkname()"></div><div class="col-sm-3"><p class="form-control-static text-danger" id="textu_name"></p></div></div><div class="form-group"><label for="edit-name" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">地址</label><div class="col-sm-6"><input type="text" name="u_address" id="u_address" class="form-control" placeholder="" onblur="checkaddress()"></div><div class="col-sm-3"><p class="form-control-static text-danger" id="textu_address"></p></div></div><div class="form-group"><label for="checkCode" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">短信验证码</label><div class="col-sm-6 registration_phone_code"><input type="text" class="form-control " name="checkCode" id="checkCode" maxlength="4" placeholder="短信验证码(必须填写)" value="" autocomplete="off"><input type="button" id="js_get_phone" class="btn btn-info" onclick="getmobilecode();" style="margin-top:5px;" value="免费获取验证码"></div><div class="col-sm-3"></div></div></div></div><div class="col-md-12 col-xs-12 input-group"><div class="col-sm-3"></div><label><input type="checkbox" checked="" name="LoginForm[rememberMe]" value="1" class="gh-logbox-inp" style="margin: 0;"><span class="gh-logbox-get">我已阅读并同意</span><a href="javascript:;" onclick="showagreement()" class="privacy"><small>《会员协议》</small></a></label></div></div><div class="modal-footer"><button type="button" class="btn btn-gray" data-dismiss="modal">关闭</button><button type="button" class="btn btn-orange" onclick="checkall()">提交注册</button></div></form><script>var secode="'.$_SESSION['send_code'].'";</script><script src="/js/registration.js"></script><IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>';
	exit();
}
//发注册手机验证码
if($act=='sentmobliecode'){
	$mobilecode = short_check(get_args('mobilecode'));
	$mobile = short_check(get_args('mobile'));
	$send_code = short_check(get_args('send_code'));

	$t_users = $tablePreStr."users";

	if(empty($mobile)){
		die('手机号码不能为空');
	}

	
	is_numeric($mobile) or die('手机号码错误！');

	//判断是否已被注册
	$sql = "SELECT * FROM $t_users WHERE user_mobile='".$mobile."' and mobile_check=1 limit 0,1";
	$check_info = $dbo->getRow($sql);
	if($check_info){
		die('该手机已被注册');
	}

	//缓存IP时间防止恶意攻击
	$ip_rewrite=str_replace('.','_',get_real_ip());
	$MC_KEY = new cache();
	if(!$MC_KEY->getcache('Phone_Post_'.$ip_rewrite)){
		$MC_KEY->setcache('Phone_Post_'.$ip_rewrite,1);
		$MC_KEY->setcache('Phone_Post_Time_'.$ip_rewrite,0);
	}
	if($MC_KEY->getcache('Phone_Post_'.$ip_rewrite)>10&&$MC_KEY->getcache('Phone_Post_Time_'.$ip_rewrite)+23*3600>time()){
		die('一天一个IP最多发10条');
	}


	if($mobilecode=='0086'){

		if(strlen($mobile)!=11){
			die('手机号码位数错误！');
		}

		$mobile_code = random(4,1);

		if(empty($_SESSION['send_code']) or $send_code!=$_SESSION['send_code']){
			die('请求超时，请刷新页面后重试');
		}

		$target = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
		$post_data = "account=cf_suyuntong&password=Hphxnykimy8&mobile=".$mobile."&content=".rawurlencode("您的验证码是：".$mobile_code."。请不要把验证码泄露给其他人。");
		//密码可以使用明文密码或使用32位MD5加密
		$gets =  xml_to_array(Post($post_data, $target));
		if($gets['SubmitResult']['code']==2){
			$_SESSION['mobile'] = $mobile;
			$_SESSION['mobile_code'] = $mobile_code;
		}
		if($gets['SubmitResult']['msg']=='提交成功'){
			echo 1;
		}elseif(strstr($gets['SubmitResult']['msg'],"用户名或密码不正确")){
			echo "配置参数错误，请联系管理员！";
		}else{
			echo $gets['SubmitResult']['msg'];
		}
		die();
	}else if($mobilecode=='001'){

		$mobile_code = random(4,1);
		
		$_SESSION['mobile'] = $mobile;

		$_SESSION['mobile_code'] = $mobile_code;

		$content = "your verification code is:'".$mobile_code."'";

		$zh="I3132851";
		$mm="fturxg6pAna514";
		$InternationalPOST= new ChuanglanSMS($zh,$mm);
		$request=$InternationalPOST->sendInternational($mobilecode.$mobile,$content);

		echo '1';
		exit();
	}else{
		die('请选择手机区号');
	}
}
//忘记密码的手机验证码
if($act=='forgetmobliecode'){
	$mobilecode = short_check(get_args('mobilecode'));
	$mobile = short_check(get_args('mobile'));
	$send_code = short_check(get_args('send_code'));

	$t_users = $tablePreStr."users";

	if(empty($mobile)){
		die('手机号码不能为空');
	}

	
	is_numeric($mobile) or die('手机号码错误！');

	//判断是否已被注册
	$sql = "SELECT * FROM $t_users WHERE user_mobile='".$mobile."' and mobile_check=1 limit 0,1";
	$check_info = $dbo->getRow($sql);
	if(!$check_info){
		die('该手机未被注册，可以前往注册。');
	}

	//缓存IP时间防止恶意攻击
	$ip_rewrite=str_replace('.','_',get_real_ip());
	$MC_KEY = new cache();
	if(!$MC_KEY->getcache('Phone_Post_'.$ip_rewrite)){
		$MC_KEY->setcache('Phone_Post_'.$ip_rewrite,1);
		$MC_KEY->setcache('Phone_Post_Time_'.$ip_rewrite,0);
	}
	if($MC_KEY->getcache('Phone_Post_'.$ip_rewrite)>10&&$MC_KEY->getcache('Phone_Post_Time_'.$ip_rewrite)+23*3600>time()){
		die('一天一个IP最多发10条');
	}


	if($mobilecode=='0086'){

		if(strlen($mobile)!=11){
			die('手机号码位数错误！');
		}

		$mobile_code = random(4,1);

		if(empty($_SESSION['send_code']) or $send_code!=$_SESSION['send_code']){
			die('请求超时，请刷新页面后重试');
		}

		$target = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
		$post_data = "account=cf_suyuntong&password=Hphxnykimy8&mobile=".$mobile."&content=".rawurlencode("您的验证码是：".$mobile_code."。请不要把验证码泄露给其他人。");
		//密码可以使用明文密码或使用32位MD5加密
		$gets =  xml_to_array(Post($post_data, $target));
		if($gets['SubmitResult']['code']==2){
			$_SESSION['mobile'] = $mobile;
			$_SESSION['mobilecheckCode'] = $mobile_code;
		}
		if($gets['SubmitResult']['msg']=='提交成功'){
			echo 1;
		}elseif(strstr($gets['SubmitResult']['msg'],"用户名或密码不正确")){
			echo "配置参数错误，请联系管理员！";
		}else{
			echo $gets['SubmitResult']['msg'];
		}
		die();
	}else if($mobilecode=='001'){

		$mobile_code = random(4,1);
		
		$_SESSION['mobile'] = $mobile;

		$_SESSION['mobilecheckCode'] = $mobile_code;

		$content = "your verification code is:'".$mobile_code."'";

		$zh="I3132851";
		$mm="fturxg6pAna514";
		$InternationalPOST= new ChuanglanSMS($zh,$mm);
		$request=$InternationalPOST->sendInternational($mobilecode.$mobile,$content);

		echo '1';
		exit();
	}else{
		die('请选择手机区号！');
	}
}
//忘记密码
if($act=='getforget2'){
	$mobilecode = short_check(get_args('mobilecode'));
	$mobile = short_check(get_args('mobile'));
	$mobilecheckCode = short_check(get_args('mobilecheckCode'));

	$t_users = $tablePreStr."users";
	$sql = "SELECT * FROM $t_users WHERE user_mobile='".$mobile."' and mobile_check=1 limit 0,1";
	$check_mobile_info = $dbo->getRow($sql);

	if($check_mobile_info[user_mobile_code]==$mobilecode){
		if($mobilecheckCode==$_SESSION['mobilecheckCode']){
			//设置开启可以修改密码
			echo'<form class="form-horizontal" role="form" method="post" action="'.URL_NAV('reg').'"  id="contactform" target="ii_frame" ><div class="modal-body"><input type="hidden" name="act" value="forget"><div class="form-group"><label for="edit-pass-pass1" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">密码</label><div class="col-sm-6"><input type="password" name="u_pass1" id="u_pass1" class="form-control" placeholder="" autocomplete="off"></div><div class="col-sm-3"><p id="textu_pass1" style="font-size:14px;">密码不能为空!</p></div></div><div class="form-group"><label for="edit-pass-pass1" class="col-sm-3 control-label"><img src="../images/imp.png" style="padding-right:5px;">确认密码</label><div class="col-sm-6"><input type="password" name="u_pass2" id="u_pass2" class="form-control" placeholder="" autocomplete="off"></div><div class="col-sm-3"><p id="textu_pass1" style="font-size:14px;">请再次输入密码!</p></div></div></div><div class="modal-footer"><button type="button" class="btn btn-gray" data-dismiss="modal">关闭</button><button type="submit" class="btn btn-orange">下一步</button></div></form><script>var secode="'.$_SESSION['send_code'].'";</script><script src="/js/forget.js"></script><IFrame id="ii_frame" name="ii_frame" width="0px" height="0px" style="display:none"></IFrame>';
			exit();
		}else{
			echo "验证码错误！";
			exit();
		}
	}else{
		echo "您的区号错误！";
		exit();
	}
}

//搜索框获取相关内容
	if($act=='getautoCompletelist'){
		$keyword=lib_replace_end_tag(RemoveXSS(strtolower(get_args('keyword'))));
		if(strlen($keyword)<1){
			exit();
		}
		//数据表定义区
		$t_article=$tablePreStr.'article';
		$t_pro_cat=$tablePreStr.'pro_cat';
		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;
		if($keyword){
			$sql="select * from $t_article where title like '%".$keyword."%' and is_show=1 order by add_time desc";
			$row=$dbo->getRs($sql);
			if($row){
				foreach($row as $k=>$v){
					$subject_name=str_replace($keyword, "<font color=red>".$keyword."</font>", strtolower($v[title]));
					echo '<li><a href="'.URL_NAV("news_").''.$v[cat_id].'/'.$v[article_id].'/" class="moreseala"><b>资讯：</b>'.$subject_name.'</a><li>';
				}
			}
			$sql="select * from $t_pro_cat where cat_more_cn like '%".$keyword."%' order by sort desc";
			$row=$dbo->getRs($sql);
			if($row){
				foreach($row as $k=>$v){
					$subject_name=str_replace($keyword, "<font color=red>".$keyword."</font>", strtolower($v[cat_name_cn]));
					echo '<li><a href="'.URL_NAV('partner').'" class="moreseala"><b>网点：</b>'.$subject_name.'</a><li>';
				}
			}
		}
		exit();
	}
//清除用户
if($act=='clear_self'&&$USER_INFO[user_id]){
	$t_users = $tablePreStr."users";
	$dbo->exeUpdate("update ".$t_users." set isdel=1 where user_id='".$USER_INFO[user_id]."' ");
	set_session('user_id','');
	echo '您已成功清除用户信息！<hr /><a href="'.URL_NAV('logout').'" class="btn btn-success" >确定</a>';
	exit();	
}

//管理员区
if(!$POWER[power_id])exit;

//视频汇币锁定
if($act=='lockmoneyvideo'&&$sid){
	$sid=intval($sid);
	//数据表定义区
	$t_online_user=$tablePreStr.'online_user';
	$t_power_user=$tablePreStr.'power_user';
	$t_online_train_video=$tablePreStr.'online_train_video';
	$t_online_train_video_check=$tablePreStr.'online_train_video_check';

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	//获得视频交易id的数据
	$sql="SELECT * FROM $t_online_train_video_check WHERE id='".$sid."' limit 0,1 ";
	$check_Info = $dbo->getRow($sql);
	//获得视频数据
	$sql="select * from $t_online_train_video where id='".$check_Info[video_id]."' limit 0,1";
	$video_info = $dbo->getRow($sql);
	//获取讲师平台账户
	$sql="SELECT * FROM $t_power_user WHERE user_id='".$video_info[teacher_id]."' limit 0,1 ";
	$tuser_Info = $dbo->getRow($sql);
	if($tuser_Info['user_uid']&&$check_Info[lock_money]!=1){
		//获取讲师会员账户
		$sql="SELECT * FROM $t_online_user WHERE user_id='".$tuser_Info[user_uid]."' limit 0,1 ";
		$U_Info = $dbo->getRow($sql);
		if($U_Info){
			$sqlcc="update ".$t_online_user." set money=money-".intval($check_Info[money]/2).",money_lock=money_lock+".intval($check_Info[money]/2)." where user_id='".$U_Info['user_id']."' and money>=".intval($check_Info[money]/2)."";
			if($dbo->exeUpdate($sqlcc)){
				$dbo->exeUpdate("update ".$t_online_train_video_check." set lock_money=1 where id='".$sid."'");
				echo "1";
			}
		}
	}
	exit();
}

//视频汇币解锁
if($act=='unlockmoneyvideo'&&$sid){
	$sid=intval($sid);
	//数据表定义区
	$t_online_user=$tablePreStr.'online_user';
	$t_power_user=$tablePreStr.'power_user';
	$t_online_train_video=$tablePreStr.'online_train_video';
	$t_online_train_video_check=$tablePreStr.'online_train_video_check';

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	//获得视频交易id的数据
	$sql="SELECT * FROM $t_online_train_video_check WHERE id='".$sid."' limit 0,1 ";
	$check_Info = $dbo->getRow($sql);
	//获得视频数据
	$sql="select * from $t_online_train_video where id='".$check_Info[video_id]."' limit 0,1";
	$video_info = $dbo->getRow($sql);
	//获取讲师平台账户
	$sql="SELECT * FROM $t_power_user WHERE user_id='".$video_info[teacher_id]."' limit 0,1 ";
	$tuser_Info = $dbo->getRow($sql);
	if($tuser_Info['user_uid']&&$check_Info[lock_money]==1){
		//获取讲师会员账户
		$sql="SELECT * FROM $t_online_user WHERE user_id='".$tuser_Info[user_uid]."' limit 0,1 ";
		$U_Info = $dbo->getRow($sql);
		if($U_Info){
			$sqlcc="update ".$t_online_user." set money=money+".intval($check_Info[money]/2).",money_lock=money_lock-".intval($check_Info[money]/2)." where user_id='".$U_Info['user_id']."' and money_lock>=".intval($check_Info[money]/2)."";
			if($dbo->exeUpdate($sqlcc)){
				$dbo->exeUpdate("update ".$t_online_train_video_check." set lock_money=0 where id='".$sid."'");
				echo "1";
			}
		}
	}
	exit();
}

//处理提现申请
if($act=='withdrawsuccess'&&$sid){
	$paymsg=intval(get_args('paymsg'));
	//数据表定义区
	$t_online_user=$tablePreStr.'online_user';
	$t_online_user_withdraw=$tablePreStr.'online_user_withdraw';
	$t_admin_log = $tablePreStr."admin_log";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	$sql="select * from $t_online_user_withdraw where id='".$sid."' limit 0,1";
	$withdrawinfo = $dbo->getRow($sql);
	if($withdrawinfo[status]>0){
		exit();
	}

	//查询语句
	$post=array();
	$post[status]='1';
	$post[beizhu]="已支付";
	if(update_table_info($dbo,$t_online_user_withdraw,$post,' id='.$sid.' and status=0 ')){
		//通知站内消息
		UPDATE_NOTICE('<span>'.date('Y-m-d H:i').'</span> 您的一条提现申请已处理，进入 <a href="'.URL_NAV("usercenter_withdraw").'">提现记录</a> 查看。',$withdrawinfo[uid]);
		//定义数据库表
		$t_online_recharge = $tablePreStr."online_recharge";
		$out_trade_no = 'HSATC-'.date('YmdHis',time()).rand(1000,9999);
		$post2=array();
		$post2[order_id]=$out_trade_no;
		$post2[uid]=$withdrawinfo[uid];
		$post2[price]=$withdrawinfo[withdraw_rmb];
		$post2[addtime]=time();
		$post2[beizhu]='汇币提现申请 金额:'.$withdrawinfo[withdraw_rmb];
		$post2[type]=4;
		$post2[status]=1;
		insert_table_info($dbo,$t_online_recharge,$post2);

		//是否手机通知
		if($paymsg==1){
			$sql="select * from $t_online_user where user_id='".$withdrawinfo[uid]."' limit 0,1";
			$userinfoshow = $dbo->getRow($sql);
			if($userinfoshow[user_nice]){
				$userinfoshow[user_name]=$userinfoshow[user_nice];
			}
			Send_Phone_MSG(3,'提现提醒通知',"尊敬的".$userinfoshow[user_name].":您的一条提现申请已处理。",$withdrawinfo[uid],'');
		}
		echo "ok";
	}
	exit();
}

//学员转移
if($act=='changetodicountiddo'){
	$discountid=get_args('discountid');
	$discountidold=get_args('discountidold');
	$stime=strtotime(get_args('stime'));

	//数据表定义区
	$t_online_user_discountid=$tablePreStr.'online_user_discountid';

	//语句
	$post=array();
	$post[discountid]=$discountid;
	$post[discountidold]=$discountidold;
	$post[stime]=$stime;
	$new_sign_id = insert_table_info($dbo,$t_online_user_discountid,$post);
	if($new_sign_id){
		echo "1";
	}
	exit();
}

//开具发票
if($act=='doisreceipt'&&$sid){
	$type=get_args('type');
	$beizhu=get_args('beizhu');

	//数据表定义区
	$t_online_order=$tablePreStr.'online_order';
	$t_online_train_video_check=$tablePreStr.'online_train_video_check';

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	if($type=='video'){
		//语句
		$post=array();
		$post[receipt]=$beizhu;
		if(update_table_info($dbo,$t_online_train_video_check,$post,' id='.$sid.' ')){
			echo "1";
		}
	}else if($type=='order'){
		//语句
		$post=array();
		$post[receipt]=$beizhu;
		if(update_table_info($dbo,$t_online_order,$post,' id='.$sid.' ')){
			echo "1";
		}
	}
	exit();
}


//退回提现申请
if($act=='getbackwithdraw'&&$sid){
	$beizhu=get_args('beizhu');
	if(!$beizhu){
		exit();
	}
	//数据表定义区
	$t_online_user=$tablePreStr.'online_user';
	$t_online_user_withdraw=$tablePreStr.'online_user_withdraw';
	$t_admin_log = $tablePreStr."admin_log";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	$sql="select * from $t_online_user_withdraw where id='".$sid."' limit 0,1";
	$withdrawinfo = $dbo->getRow($sql);

	//查询语句
	$post=array();
	$post[status]='2';
	$post[beizhu]=$beizhu;
	if(update_table_info($dbo,$t_online_user_withdraw,$post,' id='.$sid.' and status=0 ')){
		$sql="update $t_online_user set money=money+".$withdrawinfo[withdraw_hb]." where user_id='".$withdrawinfo[uid]."'";
		$dbo->exeUpdate($sql);
		echo "ok";
	}
	exit();
}

//审核三维模型
if($act=='passusermodel'&&$sid){
	//数据表定义区
	$t_threemodel_list = $tablePreStr."threemodel_list";
	$t_threemodel_list_check = $tablePreStr."threemodel_list_check";
	$t_admin_log = $tablePreStr."admin_log";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	//查询语句
	$post[status]='1';
	update_table_info($dbo,$t_threemodel_list,$post,' id='.$sid.' and status=0 ');
	echo "ok";
	exit();
}

//上架三维模型
if($act=='runusermodel'&&$sid){
	//数据表定义区
	$t_threemodel_list = $tablePreStr."threemodel_list";
	$t_threemodel_list_check = $tablePreStr."threemodel_list_check";
	$t_admin_log = $tablePreStr."admin_log";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	

	//查询语句
	$post[status]='0';
	update_table_info($dbo,$t_threemodel_list,$post,' id='.$sid.' '.$newssql.' and status=2 ');
	echo "ok";
	exit();
}

//推荐三维模型
if($act=='diggusermodel'&&$sid){
	//数据表定义区
	$t_threemodel_list = $tablePreStr."threemodel_list";
	$t_admin_log = $tablePreStr."admin_log";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	

	//查询语句
	$post[diggtime]=time();
	update_table_info($dbo,$t_threemodel_list,$post,' id='.$sid.'');
	echo "ok";
	exit();
}

//取消推荐三维模型
if($act=='removediggusermodel'&&$sid){
	//数据表定义区
	$t_threemodel_list = $tablePreStr."threemodel_list";
	$t_admin_log = $tablePreStr."admin_log";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	//查询语句
	$post[diggtime]='0';
	update_table_info($dbo,$t_threemodel_list,$post,' id='.$sid.'');
	echo "ok";
	exit();
}

//下架三维模型
if($act=='stopusermodel'&&$sid){
	//数据表定义区
	$t_threemodel_list = $tablePreStr."threemodel_list";
	$t_threemodel_list_check = $tablePreStr."threemodel_list_check";
	$t_admin_log = $tablePreStr."admin_log";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	
	//查询语句
	$post[status]='2';
	update_table_info($dbo,$t_threemodel_list,$post,' id='.$sid.' '.$newssql.' and status=1 ');
	echo "ok";
	exit();
}



if($act=='delcal'&&intval($sid)){
	if($POWER[power_id]!=1){
		echo "删除失败";
		exit();
	}
	$t_online_power_calendar=$tablePreStr.'online_power_calendar';
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	$sql = "delete from `$t_online_power_calendar` where id in ($sid)";
	if($dbo->exeUpdate($sql)) {
		echo "删除成功";
		exit();
	}
}

if($act=='addcal'&&$sid){
	if($sid){
		$post['cal_date']=get_args('cal_date');
		$post['cal_type']=$sid;
		$post['cal_step']=get_args('cal_step');
		$post['cal_content']=get_args('cal_content');

		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_online_power_calendar=$tablePreStr.'online_power_calendar';
		$t_online_power_calendar_type=$tablePreStr.'online_power_calendar_type';
		$t_online_power_calendar_lxtype=$tablePreStr.'online_power_calendar_lxtype';

		//安排类型
		$sql="select * from $t_online_power_calendar_lxtype order by id desc";
		$hs_c_xd_type = $dbo->getRs($sql);
		foreach($hs_c_xd_type as $k=>$v){
			$SHOW_WAHT[$v[id]]= $v[subject];
		}

		//安排时间阶段
		$sql="select * from $t_online_power_calendar_type order by id desc";
		$hs_c_xd_jd = $dbo->getRs($sql);
		foreach($hs_c_xd_jd as $k=>$v){
			$SHOW_xd_jd[$v[id]] = $v[subject];
		}

		$check_key=array();
		$is_ok=0;
		$post['cal_date']=strtotime($post['cal_date']);

		$sql="SELECT * FROM $t_online_power_calendar WHERE uid='".$POWER[power_id]."' and cal_date='".$post['cal_date']."'";
		$strkey = $dbo->getRow($sql);
		foreach($strkey as $k=>$v){
			$check_key[$v[cal_step]]=1;
		}
		
		if($check_key[$post['cal_step']]){
			$is_ok=$is_ok+1;
			echo '该天的 '.$SHOW_xd_jd[$post['cal_step']].' 行程已设置过！';
			exit();
		}
		if($check_key[4]){
			$is_ok=$is_ok+1;
			echo '该天的行程已满！';
			exit();
		}
		if($post['cal_step']==4&&$check_key[1]&&$check_key[2]&&$check_key[3]){
			$is_ok=$is_ok+1;
			echo '该天的 '.$SHOW_xd_jd[$post['cal_step']].' 行程已满！';
			exit();
		}
		if($post['cal_step']==4&&($check_key[1]||$check_key[2]||$check_key[3])){
			$is_ok=$is_ok+1;
			echo '无法设置该天的 '.$SHOW_xd_jd[$post['cal_step']].' 行程，因已设置上午，下午或晚上！';
			exit();
		}
		if($is_ok<1){
				$post['uid']=$POWER[power_id];
				$new_sign_id = insert_table_info($dbo,$t_online_power_calendar,$post);
				if($new_sign_id){
					echo "添加成功！|<p>".$POWER[power_nice]."-".$SHOW_xd_jd[$post['cal_step']]."-".$SHOW_WAHT[$post['cal_type']]."</p>";
				}else{
					echo "";
				}
		}
	}
	exit();
}

if($act=='showbanji'&&$sid){
	check_numeric($sid);
	if($sid){
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_course_cat_train=$tablePreStr.'course_cat_train';

		$sql="SELECT * FROM $t_course_cat_train WHERE cat_id='".$sid."' ";
		$Count_Info = $dbo->getRow($sql);
		if($Count_Info){
			if($Count_Info[parent_id]>2){
				//echo $Count_Info[cat_code].'_'.date('Ymd',time());
				echo $Count_Info[cat_code];
			}
		}
	}
	exit();
}


//获取考核待遇模板具体工资
if($act=="get_wages_num"){
	$t_power_bpm_user_appraisal=$tablePreStr.'power_bpm_user_appraisal';
	if($sid){
	$total=0;
	//工资考核待遇模板
	$this_appraisal = $dbo->getRow("select * from $t_power_bpm_user_appraisal where id='".$sid."'");
	if($this_appraisal)
		$total=$this_appraisal[jbgz]+$this_appraisal[gwbt];
	}
	echo $total.'[+]'.$this_appraisal[yzb].'[+]'.$this_appraisal[jdjx].'[+]'.$this_appraisal[jdjx_yx];
	exit;
}

//获取员工工龄工资
if($act=="get_entry_info"&&$sid){
	$t_power_user=$tablePreStr.'power_user';
	$uid=$sid;
	if($uid){
	$total=0;
	//工资考核待遇模板
	$this_userinfo = $dbo->getRow("select * from $t_power_user where power_id='".$uid."'");
	if($this_userinfo[power_entry])
		$tts=time()-$this_userinfo[power_entry];
		$tyear=intval($tts/365/3600/24);
		$tmoney=$tyear*200;
		$total=$tmoney;
	}
	echo $total;
	exit;
}

//工资考核待遇模板
if($act=='get_wages_info'&&$sid){
	
	if($sid){
	//MC缓存
	$MC_KEY = new cache();
	$SHOW_DEP_LIST=unserialize($MC_KEY->getcache('SHOW_DEP_LIST'));
	$SHOW_DEP_INFO=unserialize($MC_KEY->getcache('SHOW_DEP_INFO'));

	$t_power_bpm_user_appraisal=$tablePreStr.'power_bpm_user_appraisal';
	$t_power_user=$tablePreStr.'power_user';
	//工资考核待遇模板
	$user = $dbo->getRow("select * from $t_power_user where power_id='".$sid."' limit 0,1");
	$hs_appraisal = $dbo->getRs("select * from $t_power_bpm_user_appraisal order by id desc");
	foreach($hs_appraisal as $k=>$v){
		$showappraisal[$v[id]]=$v[subject];
		$showdeptappraisal[$v[depid]][]=$v;
	}
	if($showdeptappraisal[$user[depid]]){
		$showselect='<select name="appraisal_id" onchange="showwagesnum(this.value)">';
		$showselect.='<option value="">请选择</option>';
		foreach($showdeptappraisal[$user[depid]] as $k=>$v){
		$showselect.='<option value="'.$v[id].'">'.$v[subject].'</option>';
		}
		$showselect.='</select>';
	}
	}
	echo $SHOW_DEP_INFO[$user[depid]]."[+]".$showselect;
	exit;
}


//修改支付状态
if($act=='changgerecords'&&$sid){
	$payno=get_args('payno');
	if(!$payno)exit();
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_online_recharge=$tablePreStr.'online_recharge';
	$t_online_user=$tablePreStr.'online_user';

	//获取信息
	$thisinfo = $dbo->getRow("select * from $t_online_recharge where id='".$sid."'");

	$post[payno]=$payno;
	$post[status]=1;
	if(update_table_info($dbo,$t_online_recharge,$post,' id='.$sid.' ')){
		if($thisinfo[price]>0){
		$sql="update $t_online_user set money=money+".$thisinfo[price].",total_recharge_amount=total_recharge_amount+".$thisinfo[price]." where user_id='".$thisinfo[uid]."'";
		$dbo->exeUpdate($sql);
		}
		echo '操作成功';
		exit();
	}else{
		exit();
	}
}

//活动发放汇币
if($act=='payactive'&&$sid){
	$money=get_args('money');
	
	if($money<1){
		exit();
	}

	if($sid<1){
		exit();
	}

	if($money>500){
		exit();
	}
	

	//数据表定义区
	$t_online_recharge = $tablePreStr."online_recharge";
	$t_online_user = $tablePreStr."online_user";
	$t_power_bpm_active_list = $tablePreStr."power_bpm_active_list";
	$t_threemodel_list = $tablePreStr."threemodel_list";

	$post['active_id'] = 1;
	$post['model_id'] = $sid;
	$post['money'] = intval($money);
	$post['pid'] = $POWER['power_id'];
	$post['addtime'] = time();
	
	$newid = insert_table_info($dbo,$t_power_bpm_active_list,$post);

	if($newid){
			//获取信息
			$thisinfo = $dbo->getRow("select * from $t_threemodel_list where id='".$sid."'");

			//加精汇币
			$sql="update $t_online_user set money=money+".$money." where user_id='".$thisinfo[uid]."'";
			$dbo->exeUpdate($sql);
			UPDATE_NOTICE('<span>'.date('Y-m-d H:i').'</span> 您的账号 +'.$money.'汇币 来自 模型 <a href="'.URL_NAV("threemodel_mod-show~lid-".$sid).'" target="_blank">'.$thisinfo[subject].'</a> [<a href="'.URL_NAV("bbs_tid-920").'" target="_blank">发布模型送现金活动</a>]。',$thisinfo[uid]);
			
			//定义数据库表
			$t_online_recharge = $tablePreStr."online_recharge";
			$out_trade_no = 'HSATC-'.date('YmdHis',time());
			$post2=array();
			$post2[order_id]=$out_trade_no;
			$post2[uid]=$thisinfo[uid];
			$post2[price]=intval($money);
			$post2[addtime]=time();
			$post2[beizhu]='发布模型送现金活动 派发金额:'.intval($money);
			$post2[type]=5;
			$post2[status]=1;
			insert_table_info($dbo,$t_online_recharge,$post2);

			echo '操作成功';
			exit();
	}else{
			exit();
	}
}


//操作积分与汇币
if($act=='sendbpmscoreto'&&$sid){
	$typeas=get_args('typeas');
	$typezz=get_args('typezz');
	$keyas=get_args('keyas');
	$grade_score=get_args('grade_score');
	$grade_beizhu=get_args('grade_beizhu');

	if($typeas!='+'&&$typeas!='-'){
		exit();
	}
	
	if($keyas!='score'&&$keyas!='money'){
		exit();
	}else{
		if($keyas=='money'){
			$keyastitle="汇币";
		}else{
			$keyastitle="积分";
		}
	}

	if($sid<1){
		exit();
	}

	if($grade_score>5000){
		exit();
	}
	
	if(!$grade_beizhu){
		exit();
	}

	//数据表定义区
	$t_power_bpm_grade = $tablePreStr."power_bpm_grade";

	$post['grade_uid'] = $POWER['power_id'];
	$post['grade_type'] = $typeas;
	$post['grade_keyas'] = $keyas;
	$post['grade_score'] = $grade_score;
	$post['grade_touid'] = $sid;
	$post['grade_beizhu'] = $grade_beizhu;
	$post['grade_addtime'] = time();
	
	$newid = insert_table_info($dbo,$t_power_bpm_grade,$post);

	if($newid){
			//加精增加积分、经验
			UPDATE_USER_SCORE_EXP($post['grade_keyas'],$post['grade_type'],intval($post['grade_score']),$post['grade_touid']);
			UPDATE_NOTICE('<span>'.date('Y-m-d H:i').'</span> 您的账号 '.$post['grade_type'].$keyastitle.' 来自:'.$post['grade_beizhu'].'。',$post['grade_touid']);
			
			if($keyas=='money'){
				//定义数据库表
				$t_online_recharge = $tablePreStr."online_recharge";
				$out_trade_no = 'HSATC-'.date('YmdHis',time());
				$post2=array();
				$post2[order_id]=$out_trade_no;
				$post2[uid]=$post['grade_touid'];
				$post2[price]=intval($post['grade_score']);
				$post2[addtime]=time();
				$post2[beizhu]=$post['grade_beizhu'].' 金额:'.intval($post['grade_score']);
				$post2[type]=$typezz;
				$post2[status]=1;
				insert_table_info($dbo,$t_online_recharge,$post2);
			}

			echo '操作成功';
			exit();
	}else{
			exit();
	}
}

if($act=='delappraisal'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_user_appraisal = $tablePreStr."power_bpm_user_appraisal";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_user_appraisal` where id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='getlt2'&&$sid){
	check_numeric($sid);
	$tid = get_args('tid');
	$ost = get_args('ost');
	$tpy = get_args('tpy');

	//读写分离定义方法
	$dbo = new dbex;
	dbtarget('r',$dbServs);

	$t_online_train=$tablePreStr.'online_train';
	$get_list = get_table_list($dbo,$t_online_train,'',' where cat_id='.$sid);

	if($get_list){
		if($tpy==1){
		echo '<select name="cat_id" id="cat_id" class="form-control">';
		}else{
		echo '<select name="lcate2" id="lcate2" class="form-control" onchange="location.href=\'?r=index_order_'.$ost.'-'.$sid.'-\'+this.value+\'\'">';
		}
		echo '<option value="0">请选择</option>';
		foreach($get_list as $k=>$v){
			if($tid==$v['id']){
				$selected="selected";
			}else{
				$selected="";
			}
			echo '<option value="'.$v['id'].'" '.$selected.'>'.$v['subject'].'</option>';
		}
		echo '</select>';
	}else{
		echo '该分类无课程！';
	}
}

if($act=='show_city'&&$sid){
		//读写分离定义方法
	$dbo = new dbex;
	dbtarget('r',$dbServs);

	$val = get_args('val');
	$tid = get_args('tid');
	$city=get_city_array($dbo,2,0,$sid);

	if($city){
		echo '<select class="form-control" name="city" id="city">';
		foreach($city as $k=>$v){
			if($tid==$v['area_name']){
				$selected="selected";
			}else{
				$selected="";
			}
			echo '<option value="'.$v['area_name'].'" '.$selected.'>'.$v['area_name'].'</option>';
		}
		echo '</select>';
	}
}

if($act=='showclassrooms'&&$sid){
	check_numeric($sid);
	if($sid){
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_course_classroom=$tablePreStr.'course_classroom';

		$sql="SELECT * FROM $t_course_classroom WHERE cs_id='".$sid."' ";
		$Count_Info = $dbo->getRs($sql);
			echo '<select name="classroom_id" data-rel="chosen" onchange="shownums(this.value);">';
			echo '<option value="0">选择教室</option>';
			if($Count_Info){
				foreach($Count_Info as $k=>$v) { 
					echo '<option value="'.$v[id].'">'.$v[subject].'</option>';
				}
			}
			echo '</select>';
	}
	exit();
}
if($act=='showclassroomnums'&&$sid){
	check_numeric($sid);
	if($sid){
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_course_classroom=$tablePreStr.'course_classroom';

		$sql="SELECT * FROM $t_course_classroom WHERE id='".$sid."' ";
		$Count_Info = $dbo->getRow($sql);
			if($Count_Info){
					echo $Count_Info[num];
			}
	}
	exit();
}
if($act=='addcourse'&&$sid){
	check_numeric($sid);
	if($USER_INFO[rank_id]==1){
		echo "只有学员才可以报名！";
	}else{
		
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_course_cat_train=$tablePreStr.'course_cat_train';
		$t_course_train=$tablePreStr.'course_train';
		$t_course_sign=$tablePreStr.'course_sign';

		$sql="SELECT * FROM $t_course_sign WHERE type='1' and uid='".$USER_INFO[user_id]."' and sid='".$sid."' ";
		$Count_Info = $dbo->getRow($sql);
		if($Count_Info){
			echo "您已报名！请等待通知！";
		}else{
			$post['uid'] = $USER_INFO[user_id];
			$post['sid'] = $sid;
			$post['type'] = 1;
			$post['addtime']=time();
			$new_sign_id = insert_table_info($dbo,$t_course_sign,$post);
			if($new_sign_id){
				echo "报名成功！请等待通知！";
			}else{
				echo "报名失败！请联系管理员！";
			}
		}
	}
	exit();
}
if($act=='addexam'&&$sid){
	check_numeric($sid);
	if($USER_INFO[rank_id]==1){
		echo "只有学员才可以报名！";
	}else{
		
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_course_cat_exam=$tablePreStr.'course_cat_exam';
		$t_course_exam=$tablePreStr.'course_exam';
		$t_course_sign=$tablePreStr.'course_sign';

		$sql="SELECT * FROM $t_course_sign WHERE type='2' and uid='".$USER_INFO[user_id]."' and sid='".$sid."' ";
		$Count_Info = $dbo->getRow($sql);
		if($Count_Info){
			echo "您已报名！请等待通知！";
		}else{
			$post['uid'] = $USER_INFO[user_id];
			$post['sid'] = $sid;
			$post['type'] = 2;
			$post['addtime']=time();
			$new_sign_id = insert_table_info($dbo,$t_course_sign,$post);
			if($new_sign_id){
				echo "报名成功！请等待通知！";
			}else{
				echo "报名失败！请联系管理员！";
			}
		}
	}
	exit();
}


if($act=='getpersnol'&&$sid){
	check_numeric($sid);
	$showpadd=array('0'=>'未付款','1'=>'已付款');
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_course_cat_train=$tablePreStr.'course_cat_train';
	$t_course_train=$tablePreStr.'course_train';
	$t_course_sign=$tablePreStr.'course_sign';
	$t_users=$tablePreStr.'users';

	$sql="SELECT a.*,b.user_name as user_name,b.user_tel as user_tel FROM $t_course_sign as a,$t_users as b WHERE a.type='1' and a.sid='".$sid."' and a.uid=b.user_id ";
	$sign_list = $dbo->getRs($sql);
	echo'<table border="0" width="100%" cellpadding="0" cellspacing="0" style="line-height:32px;">
				<tr style="height:20px;line-height:24px;">
					<th class="table-header-repeat"><a href="#">序号</a> </th>
					<th class="table-header-repeat line-left minwidth-1"><a href="#">学员</a>	</th>
					<th class="table-header-repeat line-left minwidth-1"><a href="#">电话</a></th>
					<th class="table-header-repeat line-left"><a href="#">是否付款</a></th>
					<th class="table-header-repeat line-left"><a href="#">-</a></th>
					<th class="table-header-repeat line-left"><a href="#">操作</a></th>
				</tr>';
				
					
				
	foreach($sign_list as $k=>$v){
		echo '	<tr class="alternate-row">
				<td align="center">'.($k+1).'</td>
				<td>'.$v[user_name].'</td>
				<td>'.$v[user_tel].'</td>
				<td>'.$showpadd[$v[pass]].'</td>
				<td>-</td>
				<td>
				<a href="" title="编辑" class="icon-1 info-tooltip"></a>
				<a href="" title="删除" class="icon-2 info-tooltip"></a>
				<a href="" title="确定" class="icon-5 info-tooltip"></a>
				</td>
				</tr>';
	}
	echo '</table>';
	exit();
}

if($act=='showbaoming'&&$sid){
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_course_classroom = $tablePreStr."course_classroom";
	$t_course_cat_train=$tablePreStr.'course_cat_train';
	$t_course_shiduan=$tablePreStr.'course_shiduan';
	$t_course_train=$tablePreStr.'course_train';
	$t_course_sign=$tablePreStr.'course_sign';
	$t_course_school = $tablePreStr."course_school";
	$t_users=$tablePreStr.'users';
	if(!$sid)$sid='0';
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	$cat_info = get_act_cat_list($dbo,$t_course_cat_train);
	if($cat_info){
		foreach($cat_info as $k=>$v){
			if($v[is_show]!=1){
				$allcat[$v[parent_id]][]=$v;
				$show_catinfo[$v[cat_id]]=$v;
				$show_cat_info[$v[cat_id]]=$v[cat_name];
			}
		}
	}
	$clm_info = get_table_list($dbo,$t_course_classroom);
	if($clm_info){
		foreach($clm_info as $k=>$v){
				$show_clm_info[$v[id]]=$v[subject];
		}
	}
	$ksd_info = get_table_list($dbo,$t_course_shiduan);
	if($ksd_info){
		foreach($ksd_info as $k=>$v){
				$show_ksd_info[$v[id]]=$v[subject];
		}
	}

	$course_school_list=get_table_list($dbo,$t_course_school);
	if($course_school_list){
		foreach($course_school_list as $k=>$v){
				$showschools[$v[id]]=$v[subject];
		}
	}
	$sql="SELECT * FROM $t_course_sign WHERE uid in (".$sid.") and type=1";
	$ut_list = $dbo->getRs($sql);
	$all_userscat[]=0;
	if($ut_list){
		foreach($ut_list as $k=>$v){
				$all_userscat[]=$v['sid'];
		}
	}

	$sql="SELECT * FROM $t_course_train WHERE id not in (".implode(',',$all_userscat).") and status=1 ";

	$info_list = $dbo->getRs($sql);
	if($info_list){
	echo'<table class="custom-table"><tr><td width="80px">报名课程：</td><td><select name="act_id" id="act_id">';
					foreach($info_list as $k=>$v){
						echo '<option value="'.$v[id].'">'.$v[banji].'</option>';
					}
	echo '</select></td></tr><tr><td>报名费用：</td><td><input type="text" name="price" id="price" onkeyup="this.value=this.value.replace(/\D/g,\'\')" onafterpaste="this.value=this.value.replace(/\D/g,\'\')" width="80px" maxlength="6" id="price" value=""></td></tr><tr><tr><td>报名日期：</td><td><input type="text" name="add_time" width="80px" id="add_time" value=""></td></tr><tr><td colspan="2"><input type="button" class="button_mini orange bcolor" onclick="baomingdo();" value="确定"></td></tr></table>';
	}
	exit();
}


if($act=='show_search_train'&&$sid){
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_course_classroom = $tablePreStr."course_classroom";
	$t_course_cat_train=$tablePreStr.'course_cat_train';
	$t_course_shiduan=$tablePreStr.'course_shiduan';
	$t_course_train=$tablePreStr.'course_train';
	$t_course_school = $tablePreStr."course_school";
	$t_users=$tablePreStr.'users';
	if(!$sid)$sid='0';
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	$cat_info = get_act_cat_list($dbo,$t_course_cat_train);
	if($cat_info){
		foreach($cat_info as $k=>$v){
			if($v[is_show]!=1){
				$allcat[$v[parent_id]][]=$v;
				$show_catinfo[$v[cat_id]]=$v;
				$show_cat_info[$v[cat_id]]=$v[cat_name];
			}
		}
	}
	$clm_info = get_table_list($dbo,$t_course_classroom);
	if($clm_info){
		foreach($clm_info as $k=>$v){
				$show_clm_info[$v[id]]=$v[subject];
		}
	}
	$ksd_info = get_table_list($dbo,$t_course_shiduan);
	if($ksd_info){
		foreach($ksd_info as $k=>$v){
				$show_ksd_info[$v[id]]=$v[subject];
		}
	}

	$course_school_list=get_table_list($dbo,$t_course_school);
	if($course_school_list){
		foreach($course_school_list as $k=>$v){
				$showschools[$v[id]]=$v[subject];
		}
	}
	$sql="SELECT * FROM $t_course_train WHERE cat_id in (".$sid.") order by stime desc";

	$info_list = $dbo->getRs($sql);
	echo'<table class="custom-table">
					<thead>
						<tr>
							<th>课程名称</th>
							<th>开课日期</th>
							<th>上课时段</th>
							<th>上课时间</th>
							<th>地点</th>
							<th>课时</th>
							<th>操作</th>
						</tr>
					</thead><tbody>';
				if($info_list){
					foreach($info_list as $k=>$v){
						echo '	<tr class="alternate-row">
								<td align="center"><a href="'.URL_NAV('course-persnol_'.$show_catinfo[$v[cat_id]][parent_id].'_'.$v[cat_id]).'" target="_blank">'.$show_cat_info[$v[cat_id]].'</a></td>
								<td align="center">'.date('Y年m月d日',$v[stime]).'</td>
								<td align="center">'.$v[shiduan].'</td>
								<td align="center">'.$v[shijian].'</td>
								<td>'.$showschools[$v[didian]].'</td>
								<td>'.$v[keshi].'H</td>
								<td align="center">
								<a href="'.URL_NAV('apply_1_'.$v[id]).'" title="报名"  class="button_mini orange bcolor" target="_blank">立刻报名</a>
								</td>
								</tr>';
					}
				}
	echo '<tbody></table>';
	exit();
}


if($act=='shestatus'&&$sid){
	$status=get_args('status');
	check_numeric($sid);
	check_numeric($status);
	$showstatus=array('0'=>'报名中','1'=>'培训中','2'=>'已结束');
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_course_train=$tablePreStr.'course_train';
	$post[status]=$status;
	update_table_info($dbo,$t_course_train,$post,' id='.$sid.' ');
	echo '<a href="javascript:;" onclick="changestatus('.$sid.','.$status.');">'.$showstatus[$status].'</a>';
	exit();
}

//修改订单优惠
if($act=='dochangepriceorder'&&$sid){
	$POWER[power_id]=get_session('power_id');
	if($POWER[power_id]){
		$salemoney=get_args('salemoney');
		$beizhu=get_args('beizhu');
		check_numeric($sid);
		check_numeric($salemoney);
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_online_order=$tablePreStr.'online_order';
		
		$sql = "select * from `$t_online_order` where id ='".$sid."'";
		$info=$dbo->getRow($sql);


		$post[price]=$info[price]-$salemoney;
		$post[salemoney]=$salemoney;
		$post[beizhu]=$beizhu;
		update_table_info($dbo,$t_online_order,$post,' id='.$sid.' ');
		echo '1';
	}
	exit();
}

if($act=='changeorder'&&$sid){
	$POWER[power_id]=get_session('power_id');
	if($POWER[power_id]){
		$key=get_args('key');
		check_numeric($sid);
		check_numeric($key);
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_online_order=$tablePreStr.'online_order';
		$post[status]=$key-1;
		update_table_info($dbo,$t_online_order,$post,' id='.$sid.' ');
		echo '1';
	}
	exit();
}

if($act=='setuserid'&&$sid){
	check_numeric($sid);
	$post[user_name]=get_args('uname');
	$post[user_email]=get_args('umail');
	$passw=get_args('passw');
	if($passw){
		$post[user_passwd]=md5($passw);
	}
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_table=$tablePreStr.'users';
	update_table_info($dbo,$t_table,$post,' user_id='.$sid.' ');
	echo '设置成功！';
	exit();
}

if($act=='showclasscat'&&$sid){
	//定义数据库表
	$t_course_cat_train=$tablePreStr.'course_cat_train';
	$t_course_train=$tablePreStr.'course_train';
	$t_course_classroom = $tablePreStr."course_classroom";
	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	$cat_info = get_act_cat_list($dbo,$t_course_cat_train);
	if($cat_info){
		foreach($cat_info as $k=>$v){
			if($v[is_show]!=1){
				$allcat[$v[parent_id]][]=$v;
				$show_cat_info[$v[cat_id]]=$v[cat_name];
			}
		}
	}
	if($allcat[$sid]){
		foreach($allcat[$sid] as $k=>$v){
			echo '<input name="c_cats" id="check'.$v[cat_id].'" type="checkbox" value="'.$v[cat_id].'"><label for="check'.$v[cat_id].'">'.$v[cat_name].'</label>&nbsp;&nbsp;';
		}
	}
}


if($act=='delexpense'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_expense = $tablePreStr."power_bpm_expense";
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	$sql = "delete from `$t_power_bpm_expense` where id in ($id)";
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delaitem'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_item=$tablePreStr.'power_bpm_item';
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	$sql = "delete from `$t_power_bpm_item` where id in ($id)";
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}


if($act=='delpsalecode'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_online_train_salecode_card = $tablePreStr."online_train_salecode_card";
	$t_online_train_salecode = $tablePreStr."online_train_salecode";
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;
	$sql = "delete from `$t_online_train_salecode_card` where salecode_id in ($id)";
	$dbo->exeUpdate($sql);
	$sql = "delete from `$t_online_train_salecode` where id in ($id)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delbpmwages'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_user_wages = $tablePreStr."power_bpm_user_wages";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_user_wages` where id in ($id) ";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delwages'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_user_wages = $tablePreStr."power_bpm_user_wages";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_user_wages` where id in ($id) ";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delhistory'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_online_recharge = $tablePreStr."online_recharge";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_online_recharge` where id in ($id) ";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delhistoryad'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_online_user_records = $tablePreStr."online_user_records";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_online_user_records` where id in ($id)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delptrain'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_online_train = $tablePreStr."online_train";
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_online_train` where id in ($id)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

//删除班级课程表
if($act=='delclassroomschedule'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_online_classroom_schedule=$tablePreStr.'online_classroom_schedule';
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_online_classroom_schedule` where id in ($id)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delptrainnews'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_article = $tablePreStr."article";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_article` where article_id in ($id)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='removeclassroom'&&$sid){
	if($sid){
		check_numeric($sid);
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_online_order=$tablePreStr.'online_order';
		$t_online_classroom_schedule_attendance=$tablePreStr.'online_classroom_schedule_attendance';

		$sql = "select * from `$t_online_order` where id ='".$sid."'";
		$info=$dbo->getRow($sql);

		if($post[classroom_id]>0){
			$sql = "delete from `$t_online_classroom_schedule_attendance` where classroom_id ='".$info[classroom_id]."' and uid ='".$info[uid]."'";
			$dbo->exeUpdate($sql);
		}

		$post[classroom_id]='0';
		update_table_info($dbo,$t_online_order,$post,' id='.$sid.' ');
		echo '1';
	}
	exit();
}

if($act=='delpusers'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_table = $tablePreStr."users";
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_table` where user_id in ($id)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='dellinkman'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_linkman = $tablePreStr."power_bpm_linkman";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_linkman` where linkman_id in ($sid) ";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}


if($act=='delorder'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_online_order = $tablePreStr."online_order";
	$t_online_order_train = $tablePreStr."online_order_train";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_online_order_train` where oid in ($sid)";
	$dbo->exeUpdate($sql);
	$sql = "delete from `$t_online_order` where id in ($sid) and uid='".$USER_INFO[user_id]."'";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}


if($act=='delptrainproduct'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_pro = $tablePreStr."pro";

	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "select * from `$t_pro` where pro_id ='".$sid."'";
	$info=$dbo->getRow($sql);
	if($info[thumb]){
		@unlink($info[thumb]);
	}
	if($info[thumb1]){
		@unlink($info[thumb1]);
	}
	if($info[thumb2]){
		@unlink($info[thumb2]);
	}
	if($info[thumb3]){
		@unlink($info[thumb3]);
	}
	if($info[thumb4]){
		@unlink($info[thumb4]);
	}

	$sql = "delete from `$t_pro` where pro_id ='".$sid."'";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}


if($act=='clarthishead'&&$sid){
	$sid=intval($sid);
	//数据表定义区
	$t_online_user = $tablePreStr."online_user";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "select * from `$t_online_user` where user_id ='".$sid."' limit 0,1";
	$info=$dbo->getRow($sql);
	if($info[user_ico]){
		@unlink($info[user_ico]);
	}

	$sql = "update $t_online_user set user_ico='' where user_id='".$sid."'";
	if($dbo->exeUpdate($sql)) {
		echo "清除成功！";
		exit();
	}
	exit();
}

if($act=='delpbaoming'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_course_sign=$tablePreStr.'course_sign';
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_course_sign` where id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delbpmcompanyaccount'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_account = $tablePreStr."power_bpm_account";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_account` where account_id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delcustomerdo'&&$sid){
	$id=$sid;
	//定义数据库表
	$t_power_bpm_customer = $tablePreStr."power_bpm_customer";
	$t_power_bpm_customer_action = $tablePreStr."power_bpm_customer_action";
	$t_power_bpm_customer_person = $tablePreStr."power_bpm_customer_person";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_customer_person` where customer_id in ($sid)";
	$dbo->exeUpdate($sql);

	$sql = "delete from `$t_power_bpm_customer_action` where customer_id in ($sid)";
	$dbo->exeUpdate($sql);

	$sql = "delete from `$t_power_bpm_customer` where customer_id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delcustomerpersondo'&&$sid){
	$id=$sid;
	//定义数据库表
	$t_power_bpm_customer_person = $tablePreStr."power_bpm_customer_person";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_customer_person` where person_id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}


if($act=='delcustomeraction'&&$sid){
	$id=$sid;
	//定义数据库表
	$t_power_bpm_customer_action = $tablePreStr."power_bpm_customer_action";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_customer_action` where action_id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='delvideokeyvippw'&&$sid){
	$id=intval($sid);
	//定义数据库表
	$t_online_train_videovip_passwordkey = $tablePreStr."online_train_videovip_passwordkey";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_online_train_videovip_passwordkey` where id in ($sid)";

	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}


if($act=='delvideokeypw'&&$sid){
	$id=intval($sid);
	//定义数据库表
	$t_online_train_video_passwordkey = $tablePreStr."online_train_video_passwordkey";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_online_train_video_passwordkey` where id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}


if($act=='delbpmnews'&&$sid){
	$id=$sid;
	//数据表定义区
	$t_power_bpm_news=$tablePreStr.'power_bpm_news';
	$t_admin_log = $tablePreStr."admin_log";
	//定义写操作
	dbtarget('w',$dbServs);
	$dbo=new dbex;

	$sql = "delete from `$t_power_bpm_news` where id in ($sid)";
	
	if($dbo->exeUpdate($sql)) {
		echo "删除成功！";
		exit();
	}
}

if($act=='baomingdo'&&$sid){
	check_numeric($sid);
	$act_id=get_args('act_id');
	$price=get_args('price');
	$add_time=get_args('add_time');
	if(!$price){
		echo "请填写报名费用！";
		exit();
	}
	if(!$add_time){
		echo "请填写报名时间！";
		exit();
	}
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_course_sign=$tablePreStr.'course_sign';

		$sql="SELECT * FROM $t_course_sign WHERE type='1' and uid='".$sid."' and sid='".$act_id."' ";
		$Count_Info = $dbo->getRow($sql);
		if($Count_Info){
			echo "该学员已报名过该课程！";
		}else{
			$post['uid'] = $sid;
			$post['sid'] = $act_id;
			$post['type'] = 1;
			$post['price'] = $price;
			$post['addtime']=strtotime($add_time." 00:00:00");
			$new_sign_id = insert_table_info($dbo,$t_course_sign,$post);
			if($new_sign_id){
				echo "报名成功！";
			}else{
				echo "报名失败！请联系管理员！";
			}
		}
	exit();
}




if($act=='sureaddclassroomschedule'&&$sid){
	//MC缓存
	$MC_KEY = new cache();
	$SHOW_UID_INFO=unserialize($MC_KEY->getcache('SHOW_UID_INFO'));

	check_numeric($sid);
	$post[classroom_id]=$sid;
	$post[starttime]=strtotime(get_args('starttime'));
	$post[subject]=get_args('subject');
	$post[shijianduan]=get_args('shijianduan');
	$post[teacher_id]=get_args('teacher_id');
	$post[beizhu]=get_args('beizhu');

	if(!$post[classroom_id]||!$post[starttime]||!$post[subject]||!$post[teacher_id]||!$post[shijianduan]){
		exit();
	}
	

	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_online_classroom_schedule=$tablePreStr.'online_classroom_schedule';
	$new_sign_id = insert_table_info($dbo,$t_online_classroom_schedule,$post);
	if($new_sign_id){
		echo "
					<tr>
					<td>".get_args('starttime')." ".$post[shijianduan]."</td>
					<td>".$post[subject]."</td>
					<td>".$SHOW_UID_INFO[$post[teacher_id]]."</td>
					<td>".$post[beizhu]."</td>
					</tr>
			";
	}
	exit();
}


if($act=='sureupdteclassroomschedule'&&$sid){

	check_numeric($sid);
	$cid=$sid;
	$keyword=str_replace($cid,"",get_args('keyword'));
	$keyword=str_replace('edit',"",$keyword);
	$post[$keyword]=get_args('value');

	if($keyword=='subject'||$keyword=='shijianduan'||$keyword=='starttime'||$keyword=='teacher_id'){
		if($keyword=='starttime'){
			$post[$keyword]=strtotime($post[$keyword]);
		}
		if($keyword=='teacher_id'){
			$t_power_user=$tablePreStr.'power_user';
			//通用用户组及用户
			$sql = "SELECT * FROM $t_power_user WHERE 1=1 and power_nice='".$post[$keyword]."' ";
			$showthis = $dbo->getRow($sql);
			if(!$showthis)exit();
			$post[$keyword]=$showthis['power_id'];
		}
		/*****数据调用开始******/
		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$dbo=new dbex();
		//定义数据库表
		$t_online_classroom_schedule=$tablePreStr.'online_classroom_schedule';
		if(update_table_info($dbo,$t_online_classroom_schedule,$post,' id='.$cid.' ')){
			echo "1";
		}
	}
	exit();
}



//签到缺席
if($act=='checkhereclassroomdo'&&$sid){
	check_numeric($sid);
	$post['uid']=$sid;
	$post['classroom_id']=get_args('classroom_id');
	$post['schedule_id']=get_args('schedule_id');
	$post['status']=intval(get_args('status'));
	$post['power_id']=$POWER[power_id];

	$t_online_classroom_schedule_attendance=$tablePreStr.'online_classroom_schedule_attendance';

	$sql = "SELECT * FROM $t_online_classroom_schedule_attendance WHERE 1=1 and classroom_id='".$post['classroom_id']."' and schedule_id='".$post['schedule_id']."' and uid='".$post['uid']."'";
	$showthis = $dbo->getRow($sql);
	if($showthis){
		if(update_table_info($dbo,$t_online_classroom_schedule_attendance,$post," classroom_id='".$post['classroom_id']."' and schedule_id='".$post['schedule_id']."' and uid='".$post['uid']."' ")){
			echo "1";
		}
	}else{
		$post['addtime']=time();
		if(insert_table_info($dbo,$t_online_classroom_schedule_attendance,$post)){
			echo "1";
		}
	}
	exit();
}



//实时记录提示
if($act=='savenotebook'&&$sid){
	check_numeric($sid);
	$post['uid']=$POWER[power_id];
	$post['beizhu']=get_args('beizhu');
	$post['beizhu']=str_replace("\\","&#92;",$post['beizhu']);
	$post['beizhu']=str_replace("'","&apos;",$post['beizhu']);
	$post['beizhu']=str_replace('"','&quot;',$post['beizhu']);

	$t_power_bpm_notebook = $tablePreStr."power_bpm_notebook";

	$sql = "SELECT * FROM $t_power_bpm_notebook WHERE 1=1 and uid='".$post['uid']."'";
	$showthis = $dbo->getRow($sql);
	if($showthis){
		if(update_table_info($dbo,$t_power_bpm_notebook,$post," uid='".$post['uid']."'")){
			echo "1";
		}
	}else{
		if(insert_table_info($dbo,$t_power_bpm_notebook,$post)){
			echo "1";
		}
	}
	exit();
}
?>