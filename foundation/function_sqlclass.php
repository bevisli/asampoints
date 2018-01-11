<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}

//通用获取信息
function get_table_info(&$dbo,$table,$type,$id) {
	$sql = "select * from `$table` where ".$type."='$id'";
	return $dbo->getRow($sql);
}

//通用获取列表
function get_table_list(&$dbo,$table,$order='',$sqlm='') {
	$sql = "select * from `$table` ".$sqlm." ".$order."";
	return $dbo->getRs($sql);
}

//通用修改信息
function update_table_info(&$dbo,$table,$update_items,$sqlcodes) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where ".$sqlcodes."";
	return $dbo->exeUpdate($sql);
}
//获取推荐培训
function get_digg_train(&$dbo,$table,$num='3'){
	$sql = "select * from `$table` where is_digg=1 limit 0,".$num."";
	return $dbo->getRs($sql);
}

//通用添加信息
function insert_table_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}


function get_show_week(){
	$weekarray=array("日","一","二","三","四","五","六");
	$showweek[0]=date("w");
	$showdays[0]=date("m月d日",time());
	$showtimes[0]=date("Y-m-d",time());
	for($i=1;$i<=8;$i++){
		$showweek[$i]=date("w",strtotime(date("Y-m-d H:i:s",strtotime('+'.$i.' day'))));
		$showdays[$i]=date("m月d日",strtotime('+'.$i.' day'));
		$showtimes[$i]=date("Y-m-d",strtotime('+'.$i.' day'));
		$showtimess[$i]=date("Ymd",strtotime('+'.$i.' day'));
	}
	foreach($showtimes as $k=>$v){
		$showtimek[str_replace('-','',$v)]=$k;
	}
	$result[showweek]=$showweek;
	$result[showdays]=$showdays;
	$result[showtimes]=$showtimes;
	$result[showtimess]=$showtimess;
	return $result;
}

//获取地区城市
function get_city_array(&$dbo,$area_type,$selectid='0',$parentid='0'){
	global $tablePreStr;
	$table = $tablePreStr."areas";
	$sql = "select * from `$table` where area_type='$area_type'";
	if($parentid>0){
		$sql.=" and parent_id='".$parentid."'";
	}
	$result = $dbo->getRs($sql);
	return $result;
}

//获取管理导航权限
function get_table_admin_list(&$dbo,$table,$type,$id) {
	$sql = "select * from `$table` where ".$type."='$id'";
	$result = $dbo->getRs($sql);
	$array = array();
	foreach($result as $value) {
		$array[$value['nav_id']] = $value;
	}
	return $array;
}


//获取产品分类
function get_pro_cat_list(&$dbo,$table) {
	$sql = "select * from `$table`";
	$result = $dbo->getRs($sql);
	$array = array();
	foreach($result as $value) {
		$array[$value['cat_id']] = $value;
	}
	return $array;
}

//添加一条产品
function insert_pro_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}

//获取一条产品资料
function get_pro_info(&$dbo,$table,$pro_id) {
	$sql = "select * from `$table` where pro_id='$pro_id'";
	return $dbo->getRow($sql);
}


//修改一条产品
function update_pro_info(&$dbo,$table,$update_items,$pro_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where pro_id='$pro_id'";
	return $dbo->exeUpdate($sql);
}

//获取用户类别
function get_userrank_list(&$dbo,$table) {
	$sql = "select * from `$table` order by rank_id asc";
	$user_rank = $dbo->getRs($sql);
	foreach($user_rank as $value) {
		$userrank[$value['rank_id']] = $value;
	}
	return $userrank;
}


function update_user_info(&$dbo,$table,$update_items,$user_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where user_id='$user_id'";
	return $dbo->exeUpdate($sql);
}

//获取市场活动分类
function get_act_cat_list(&$dbo,$table) {
	$sql = "select * from `$table` order by sort_order asc";
	$result = $dbo->getRs($sql);
	$array = array();
	foreach($result as $value) {
		$array[$value['cat_id']] = $value;
	}
	return $array;
}

//添加一条市场活动
function insert_act_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}

//添加一条报名信息
function insert_sign_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}

//获取一条市场活动资料
function get_act_info(&$dbo,$table,$act_id) {
	$sql = "select * from `$table` where act_id='$act_id'";
	return $dbo->getRow($sql);
}


//修改一条市场活动
function update_act_info(&$dbo,$table,$update_items,$act_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where act_id='$act_id'";
	return $dbo->exeUpdate($sql);
}


//获取新闻分类
function get_news_cat_list(&$dbo,$table) {
	$sql = "select * from `$table`";
	$result = $dbo->getRs($sql);
	$array = array();
	foreach($result as $value) {
		$array[$value['cat_id']] = $value;
	}
	return $array;
}

//添加一条新闻
function insert_news_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}

//获取一条新闻资料
function get_news_info(&$dbo,$table,$article_id) {
	$sql = "select * from `$table` where article_id='$article_id'";
	return $dbo->getRow($sql);
}


//修改一条新闻
function update_news_info(&$dbo,$table,$update_items,$article_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where article_id='$article_id'";
	return $dbo->exeUpdate($sql);
}


//获取广告类别数据
function get_asd_position_all(&$dbo,$table) {
	$sql = "select * from `$table`";
	$result = $dbo->getRs($sql);
	$array = array();
	foreach($result as $value) {
		$array[$value['position_id']] = $value;
	}
	return $array;
}

///添加一条广告类别
function insert_asd_position_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}

//修改一条广告类别
function update_asd_position_info(&$dbo,$table,$update_items,$position_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where position_id='$position_id'";
	return $dbo->exeUpdate($sql);
}

//获取一条广告类别资料
function get_asd_position_info(&$dbo,$table,$position_id) {
	$sql = "select * from `$table` where position_id='$position_id'";
	return $dbo->getRow($sql);
}

//更新对应广告类别广告详细资料
function put_asd_position_file($asd_id,$link,$content,$type,$w,$h,$asd_name='') {
	global $baseUrl;
	$html = '';
	if($type==3) {
		$html = '<a href="'.$link.'" title="'.$asd_name.'">'.$content.'</a>';
	} elseif ($type==2) {
		$html = '<embed src="'.$baseUrl.$content.'" menu="false" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="'.$w.'" height="'.$h.'"></embed>';
	} elseif ($type==1) {
		$html = '<a href="'.$link.'"><img src="'.$baseUrl.$content.'" width="'.$w.'" height="'.$h.'" alt="'.$asd_name.'"></a>';
	}

	$htmls = "document.write('$html');";

	$file = "../uploadfiles/asd/$asd_id.js";

	return @file_put_contents($file,$htmls);
}

//更新对应广告类别广告
function update_asd_position_file(&$dbo,$asd_content,$asd_position,$asd_id=0) {
	$sql = "SELECT a.*,b.asd_height,b.asd_width FROM $asd_content AS a, $asd_position AS b WHERE a.position_id=b.position_id ";
	if($asd_id) {
		$sql .= " AND a.asd_id='$asd_id' ";
	}
	$sql .= "order by a.last_update_time desc";

	$result = $dbo->getRow($sql);
	return put_asd_position_file($result['asd_id'],$result['asd_link'],$result['asd_content'],$result['media_type'],$result['asd_width'],$result['asd_height'],$result['asd_name']);
}


//获取广告信息
function get_asd_info(&$dbo,$table,$asd_id) {
	$sql = "select * from `$table` where asd_id='$asd_id'";
	return $dbo->getRow($sql);
}

//插入一条新广告
function insert_asd_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}

//修改一条新广告
function update_asd_info(&$dbo,$table,$update_items,$asd_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where asd_id='$asd_id'";
	return $dbo->exeUpdate($sql);
}



//添加一条新闻
function insert_other_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}

//获取一条单页资料
function get_other_info(&$dbo,$table,$other_id) {
	$sql = "select * from `$table` where other_id='$other_id'";
	return $dbo->getRow($sql);
}

//修改一条单页
function update_other_info(&$dbo,$table,$update_items,$other_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where other_id='$other_id'";
	return $dbo->exeUpdate($sql);
}

//添加一条服务
function insert_server_info(&$dbo,$table,$insert_items) {
	$item_sql = get_insert_item($insert_items);
	$sql = "insert into `$table` $item_sql ";
	$dbo->exeUpdate($sql);
	return mysql_insert_id();
}
//获取一条服务资料
function get_server_info(&$dbo,$table,$server_id) {
	$sql = "select * from `$table` where server_id='$server_id'";
	return $dbo->getRow($sql);
}

//修改一条服务
function update_server_info(&$dbo,$table,$update_items,$server_id) {
	$item_sql = get_update_item($update_items);
	$sql = "update `$table` set $item_sql where server_id='$server_id'";
	return $dbo->exeUpdate($sql);
}
?>
