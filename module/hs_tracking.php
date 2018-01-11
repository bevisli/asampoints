<?php
	/************about模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=3; //当前栏目ID
	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明

	//数据表定义区
	$t_pro=$tablePreStr.'pro';

	//读写分离定义方法
	$dbo = new dbex;
	dbtarget('r',$dbServs);

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
			$data=trim(str_replace("clear: right;  font-weight: bold; font-size: 14px;","display:none",$data));
			$data=trim(str_replace('width: 1000px;','',$data));
			$data=preg_replace('/(<br>|<p>\s*?<\/p>)+$/i','',$data);
		}elseif($name=='JJ'){
			$cha=''.$order.'&temp=0.'.time()*30;
		}
		return $data;
	}
	}
	$act=get_args('act');
	if($act=='ajaxget'){
		$dataid=get_args('dataid');
		$sql="SELECT * FROM $t_pro WHERE pro_newid='".$dataid."'";
		$exp = $dbo->getRow($sql);
		
		if($exp[pro_expressname]=='AAE全球'){
			$tva='AAE';
		}
		if($exp[pro_expressname]=='东方速递'){
			$tva='DF';
		}
		if($exp[pro_expressname]=='嘉吉快递'){
			$tva='JJ';
		}

		$tval=$tva;
		$tid=$exp[pro_expressid];

		$a = new Express();
		$expressinfo = $a->getorder($tval,$tid);
		if($expressinfo){
			echo $expressinfo;
		}else{
			echo "暂无物流信息！";
		}
		exit();
	}

	$post['keyword'] = lib_replace_end_tag(RemoveXSS(trim(get_args('keyword'))));
	/* post 数据处理 */
	if($post['keyword']){
		$str=trim($post['keyword']);
		$str=strtolower($str);
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
		$str=str_ireplace("concat","",$str);
		$str=str_ireplace("md5(","",$str);
		$str=str_ireplace("print(","",$str);
		$str=str_ireplace("eval(","",$str);
		$str=str_ireplace("sleep(","",$str);
		$str=str_ireplace("print(","",$str);
		$post['keyword']=$str;

		$sql = "SELECT * FROM $t_pro WHERE pro_usermobile = '".$post['keyword']."' or pro_newid = '".$post['keyword']."' order by add_time desc";
		$result = $dbo->fetch_page($sql,10);
		if($result[result]){
			foreach($result[result] as $k=>$v){
				$num[id]=count($v);
			}
		}
		
	}
?>