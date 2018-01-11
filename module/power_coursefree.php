<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//定义数据库表
	$t_course_classroom = $tablePreStr."course_classroom";
	$t_online_cat=$tablePreStr.'online_cat';
	$t_course_school = $tablePreStr."course_school";
	$t_course_shiduan=$tablePreStr.'course_shiduan';
	$t_online_train_free=$tablePreStr.'online_train_free';
	$t_course_sign=$tablePreStr.'course_sign';
	$t_power_nav=$tablePreStr.'power_nav';
	$t_users=$tablePreStr.'users';
	

	//培训状态
	$showstatus=array('1'=>'招生','2'=>'培训','3'=>'满意度调查','4'=>'课程结束');

	$sql = "SELECT * FROM $t_online_train_free WHERE 1=1 group by coursename";
	$cn_list = $dbo->getRs($sql);

	$KEYS1=@explode('~',$r[3]);
	if($KEYS1){
		foreach($KEYS1 as $k=>$v){
			$c=@explode('-',$v);
			$KEYS[$c[0]]=$c[1];
		}
	}

	if($KEYS[cn]){
	$KEYS[cn]=str_replace('	','$',$KEYS[cn]);
	$KEYS[cn]=str_replace(' ','$',$KEYS[cn]);
	$KEYScn=str_replace('$',' ',$KEYS[cn]);
	$OsAL .= "and coursename='".$KEYScn."' ";
	}


	$sql = "SELECT * FROM $t_online_train_free WHERE 1=1 and cat_id=0 $OsAL";
	$sql .= " ORDER BY stime DESC";
	$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);
	//p($result);
	if($result[result]){
		foreach($result[result] as $k=>$v){
				$alltrainid[]=$v[id];
		}
		if($alltrainid){
			$sign_info = get_table_list($dbo,$t_course_sign,'',' where sid in ('.implode(',',$alltrainid).') and type=1');
			if($sign_info){
				foreach($sign_info as $k=>$v){
						$showsigncount[$v['sid']]++;
				}
			}
		}
	}

	$cat_info = get_act_cat_list($dbo,$t_online_cat);
	if($cat_info){
		foreach($cat_info as $k=>$v){
			if($v[is_show]!=1){
				$allcat[$v[parent_id]][]=$v;
				$show_catinfo[$v[cat_id]]=$v;
				$show_cat_info[$v[cat_id]]=$v[cat_name];
			}
		}
	}
	$users_info = get_table_list($dbo,$t_users,'',' where rank_id=1');
	if($users_info){
		foreach($users_info as $k=>$v){
				$showteacher[$v[user_id]]=$v;
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
?>