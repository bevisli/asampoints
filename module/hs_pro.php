<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}


	$SYSTEM_NAV_SELECTED=2; //当前栏目ID
	$SYSTEM_TITLE=get_cookie('this_lg')=='cn'?$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name_cn']:$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_pro=$tablePreStr.'pro';
	$t_pro_cat=$tablePreStr.'pro_cat';
	$t_act=$tablePreStr.'act';
	//栏目
	$sql = "SELECT * FROM $t_pro_cat ";
	$cat_list = $dbo->getRs($sql);
	foreach($cat_list as $k=>$v){
		$show_top[$v[parent_id]][]=$v;
		$show_cat_list[$v[cat_id]]=$v;
	}
	if(!$r[2])$r[2]="";

	if($r[3]){
		$r[3]=intval($r[3]);
		check_numeric($r[3]);
		
		$sql = "SELECT * FROM $t_pro WHERE pro_foruid='".$r[3]."'";
		$sql .= " ORDER BY add_time ASC";
		$result = $dbo->fetch_page($sql,12);

	}else{

		$r[2]=intval($r[2]);
		check_numeric($r[2]);

		if($r[2]){
			$showarr[]=$r[2];
			$sql = "SELECT * FROM $t_pro_cat where parent_id='".$r[2]."'";
			$catlist = $dbo->getRs($sql);
			if($catlist){
				foreach($catlist as $k=>$v){
					$showarr[]=$v[cat_id];
				}
			}
			$sqqwql=" and cat_id in (".implode(",",$showarr).")";
		}

		$sql = "SELECT * FROM $t_pro WHERE is_show=1 $sqqwql";
		$sql .= " ORDER BY add_time ASC";
		$result = $dbo->fetch_page($sql,12);

	}

?>