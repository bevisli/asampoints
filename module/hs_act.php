<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	$SYSTEM_NAV_SELECTED=5; //当前栏目ID
	$SYSTEM_TITLE=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['nav_name']; //标题
	$SYSTEM_KEYWORD=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['keywords']; //关键词
	$SYSTEM_DESCRIPTION=$SYSTEM_NAV[$SYSTEM_NAV_SELECTED]['description']; //描述说明


	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();
	//定义数据库表
	$t_act=$tablePreStr.'act';
	$t_act_cat=$tablePreStr.'act_cat';
	$t_asd_content = $tablePreStr."asd_content";
	//主题栏目
	$sql = "SELECT * FROM $t_act_cat ";
	$cat_list = $dbo->getRs($sql);
	foreach($cat_list as $k=>$v){
		$show_cat_list[$v[cat_id]]=$v;
	}

	//获取-中屏-右侧-第一
	$sql = "SELECT * FROM $t_asd_content WHERE position_id=14 ";
	$one_asd_63 = $dbo->getRow($sql);

	$sql = "SELECT * FROM $t_act WHERE is_show=1 ";

	if(!$r[2]&&!$r[3]){

		$sql .= " ORDER BY act_stime DESC";
		$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);
	}

	if($r[2]&&!$r[3]){
		check_numeric($r[2]);
		$IS_Act=0;

		$sql.=" and cat_id='".$r[2]."' ";

		$sql .= " ORDER BY act_stime DESC";
		$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);

		$SYSTEM_TITLE=$show_cat_list[$r[2]][cat_name]; //标题
		$SYSTEM_KEYWORD=$show_cat_list[$r[2]][cat_name]; //关键词
		$SYSTEM_DESCRIPTION=$show_cat_list[$r[2]][cat_name]; //描述说明

	}

	if($r[3]){
		check_numeric($r[3]);
		$IS_Act=1;

		$sql.=" and act_id='".$r[3]."' ";
		$Act_Info = $dbo->getRow($sql);

		$SYSTEM_TITLE=$Act_Info[title]; //标题
		$SYSTEM_KEYWORD=$Act_Info[title]; //关键词
		$SYSTEM_DESCRIPTION=$Act_Info[title]; //描述说明


		$actupdatekey=get_session('actupdatekey'.$r[3]);
		if(($actupdatekey+180)<time()){
		$dbo->exeUpdate("update ".$t_act." set click=click+1 where act_id='".$r[3]."'");
		set_session('actupdatekey'.$r[3],time());
		}
	}
?>