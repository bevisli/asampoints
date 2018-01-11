<?php
	/************myspace模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//定义数据库表
	$t_online_cat=$tablePreStr.'online_cat';
	$t_course_outline = $tablePreStr."course_outline";
	$t_online_train_free=$tablePreStr.'online_train_free';
	$t_course_sign=$tablePreStr.'course_sign';
	$t_article=$tablePreStr.'article';
	$t_users=$tablePreStr.'users';
	
	$teacher_list=get_table_list($dbo,$t_users,'',' where rank_id=1');
	foreach($teacher_list as $value) {
		$showteacher[$value[user_id]]=$value[user_name];
	}
	$sql = "SELECT * FROM $t_online_cat ";
	$train_catlist = $dbo->getRs($sql);
	foreach($train_catlist as $k=>$v){
		$showtraincat[$v[cat_id]]=$v[cat_name];
	}
	//直播时间获取
	$get_show_week=get_show_week();

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

	//多条查询
	$cat_list = get_table_list($dbo,$t_online_cat,'order by sort_order asc',' where is_show!=1');
	foreach($cat_list as $k=>$v){
		$showcat[$v[cat_id]]=$v[cat_name];
	}

	$sql = "SELECT * FROM $t_online_train_free WHERE 1=1 ";
	if($r[2]){
		check_numeric($r[2]);
		$sql .= " and stime>='".strtotime($showtimes[$showtimek[$r[2]]]." 00:00:00")."'";
		$sql .= " and etime<='".strtotime($showtimes[$showtimek[$r[2]]]." 23:59:59")."'";
	}else{
		$r[2]=0;
		$sql .= " and stime>='".strtotime(date('Y-m-d')." 00:00:00")."'";
		$sql .= " and etime<='".strtotime(date('Y-m-d')." 23:59:59")."'";
	}
	$sql .= " ORDER BY etime ASC";
	$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);



	$SYSTEM_NAV_SELECTED=1; //当前栏目ID
	$SYSTEM_TITLE="免费直播"; //标题
	$SYSTEM_KEYWORD="免费直播,在线直播,免费直播培训视频"; //关键词
	$SYSTEM_DESCRIPTION="在线直播,免费直播培训视频"; //描述说明
?>