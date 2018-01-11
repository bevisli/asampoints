<?php
	/************index模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=1; //当前栏目ID
	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//定义数据库表
	$t_asd_content = $tablePreStr."asd_content";
	$t_pro = $tablePreStr."pro";
	$t_pro_cat=$tablePreStr.'pro_cat';
	$t_article=$tablePreStr.'article';
	
	//获取新闻
	$sql = "SELECT * FROM $t_article WHERE is_show=1 order by article_id desc limit 0,3";
	$news_list = $dbo->getRs($sql);
	if($news_list){
		foreach($news_list as $k=>$v){
				preg_match("/<img.+src=\"?(.+\.(jpg|jpeg|gif|bmp|bnp|png))\"?.+\/>/i",$v[content],$match);
				preg_match("/<img.+src=\"?(.+\.(jpg|jpeg|gif|bmp|bnp|png))\"?.+>/i",$v[content],$matchc);
				if(!$match[1])$match[1]=$matchc[1];
				$v[imgurl]=$match[1]?$match[1]:"/images/pic3.png";
				$news_list[$k]=$v;
		}
	}

	//获取轮播广告
	$sql = "SELECT * FROM $t_asd_content WHERE position_id=1 ";
	$sql .= " ORDER BY last_update_time DESC limit 0,5";
	$flashlight_list = $dbo->getRs($sql);

	//获取友情
	$sql = "SELECT * FROM $t_asd_content WHERE position_id=2 ";
	$sql .= " ORDER BY last_update_time ASC";
	$friends_list = $dbo->getRs($sql);

	//网点查询
	$sql = "SELECT * FROM $t_pro_cat order by sort asc limit 0,6";
	$partner_list = $dbo->getRs($sql);
?>