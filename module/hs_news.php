<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}


	$SYSTEM_NAV_SELECTED=5; //当前栏目ID
	$SYSTEM_TITLE=$this_lg=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_pro=$tablePreStr.'pro';
	$t_article=$tablePreStr.'article';
	$t_article_cat=$tablePreStr.'article_cat';
	//新闻栏目
	$sql = "SELECT * FROM $t_article_cat ";
	$cat_list = $dbo->getRs($sql);
	foreach($cat_list as $k=>$v){
		$show_cat_list[$v[cat_id]]=$v;
	}

   if($this_lg=='cn'){
	$sql = "SELECT * FROM $t_article WHERE is_show=1 and title_cn!='' ";
   }else{
	$sql = "SELECT * FROM $t_article WHERE is_show=1 and title!='' ";
   }

	if(!$r[2]&&!$r[3]){

		$sql .= " ORDER BY add_time DESC";
		$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);
		if($result[result]){
			foreach($result[result] as $k=>$v){
					$v[content]=$this_lg=='cn'?$v[content_cn]:$v[content];
					preg_match("/<img.+src=\"?(.+\.(jpg|jpeg|gif|bmp|bnp|png))\"?.+\/>/i",$v[content],$match);
					preg_match("/<img.+src=\"?(.+\.(jpg|jpeg|gif|bmp|bnp|png))\"?.+>/i",$v[content],$matchc);
					if(!$match[1])$match[1]=$matchc[1];
					$v[imgurl]=$match[1]?$match[1]:"/images/noimg.jpg";
					$v[content]=lib_replace_end_tag(RemoveXSS(removeTag($v[content])));
					$result[result][$k]=$v;
			}
		}
	}

	if($r[2]&&!$r[3]){
		check_numeric($r[2]);
		$IS_Article=0;
		$sql.=" and cat_id='".$r[2]."' ";

		$sql .= " ORDER BY add_time DESC";

		$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);
		if($result[result]){
			foreach($result[result] as $k=>$v){
					$v[content]=$this_lg=='cn'?$v[content_cn]:$v[content];
					preg_match("/<img.+src=\"?(.+\.(jpg|jpeg|gif|bmp|bnp|png))\"?.+\/>/i",$v[content],$match);
					preg_match("/<img.+src=\"?(.+\.(jpg|jpeg|gif|bmp|bnp|png))\"?.+>/i",$v[content],$matchc);
					if(!$match[1])$match[1]=$matchc[1];
					$v[imgurl]=$match[1]?$match[1]:"/images/noimg.jpg";
					$v[content]=lib_replace_end_tag(RemoveXSS(removeTag($v[content])));
					$result[result][$k]=$v;
			}
		}
		$SYSTEM_TITLE=$show_cat_list[$r[2]][cat_name]; //标题
		$SYSTEM_KEYWORD=$show_cat_list[$r[2]][cat_name]; //关键词
		$SYSTEM_DESCRIPTION=$show_cat_list[$r[2]][cat_name]; //描述说明

	}

	if($r[3]){
		check_numeric($r[3]);
		$IS_Article=1;
		$sql.=" and article_id='".$r[3]."' ";
		$Article_Info = $dbo->getRow($sql);

		$SYSTEM_TITLE=$this_lg=='cn'?$Article_Info[title_cn]:$Article_Info[title]; //标题
		$SYSTEM_KEYWORD=$this_lg=='cn'?$Article_Info[keyword_cn]:$Article_Info[keyword]; //标题
		$SYSTEM_DESCRIPTION=$Article_Info[title]; //描述说明
		
		$newupdatekey=get_session('newupdatekey'.$r[3]);
		if(($newupdatekey+180)<time()){
		$dbo->exeUpdate("update ".$t_article." set click=click+1 where article_id='".$r[3]."'");
		set_session('newupdatekey'.$r[3],time());
		}
	}

?>