<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}




		$id = $r[3];

		if(!$id) {
			echo '<script>top.location.href="?r=404";</script>';
			exit();
		}

		//定义读操作
		dbtarget('r',$dbServs);
		$dbo=new dbex;

		//数据表定义区
		$t_course_train = $tablePreStr."course_train";
		$t_course_xingzhi = $tablePreStr."course_xingzhi";
		$t_course_shiduan = $tablePreStr."course_shiduan";
		$t_course_classroom = $tablePreStr."course_classroom";
		$t_course_school = $tablePreStr."course_school";
		$t_areas = $tablePreStr."areas";
		$t_users = $tablePreStr."users";
		$t_course_cat_train = $tablePreStr."course_cat_train";

		$showstatus=array('1'=>'招生','2'=>'培训','3'=>'满意度调查','4'=>'课程结束');
		$cat_info = get_news_cat_list($dbo,$t_course_cat_train);

		$train_info = array(
			'cat_id'		=> 0,
			'title'			=> '',
			'content'		=> '',
			'is_link'		=> '',
			'link_url'		=> 'http://',
			'is_show'		=> 1
		);



		$sql = "select * from `$t_course_cat_train`";
		$result = $dbo->getRs($sql);
		$cat_info = array();
		foreach($result as $value) {
			$cat_info[$value['parent_id']][] = $value;
			$allcat[$value[parent_id]][]=$value;
			$show_cat_info[$value[cat_id]]=$value[cat_name];
			$show_cat_info_code[$value[cat_id]]=$value[cat_code];
		}


		function get_sort_act_cat($sort_cat=array(),$cat_id='0',$sort=0){
		global $allcat,$sort_cat;
		$sort++;
		if($allcat[$cat_id]){
			foreach($allcat[$cat_id] as $k=>$v){
				if($sort==1){
					$v[keyword]="━";
				}else{
					$typesx="";
					for($i=1;$i<$sort;$i++){
						$typesx.="　";
					}
					$v[keyword]=$typesx."┗";
				}

				$sort_cat[]=$v;
				get_sort_act_cat($sort_cat,$v[cat_id],$sort);
			}
		}
		return $sort_cat;
		}
		$sort_cat=get_sort_act_cat();


		$train_info=get_table_info($dbo,$t_course_train,'id',$id);

		$xingzhi_list=get_table_list($dbo,$t_course_xingzhi);
		if($xingzhi_list){
			foreach($xingzhi_list as $k=>$v){
				$showxingzhi[$v[id]]=$v[subject];
			}
		}
		$shiduan_list=get_table_list($dbo,$t_course_shiduan);
		if($shiduan_list){
			foreach($shiduan_list as $k=>$v){
				$showshiduan[$v[id]]=$v[subject];
			}
		}
		$course_school_list=get_table_list($dbo,$t_course_school);
		if($course_school_list){
			foreach($course_school_list as $k=>$v){
				$showschool[$v[id]]=$v[subject];
			}
		}
		$classroom_list=get_table_list($dbo,$t_course_classroom,''," where cs_id='".$train_info[didian]."'");
		if($classroom_list){
			foreach($classroom_list as $k=>$v){
				$showclassroom[$v[id]]=$v[subject];
			}
		}
		$teacher_list=get_table_list($dbo,$t_users,'',' where rank_id=1');
		if($teacher_list){
			foreach($teacher_list as $k=>$v){
				$showteacher[$v[user_id]]=$v[user_name];
			}
		}



		$has_city=$dbo->getRs("select * from $t_areas where area_code!='' and area_type=2");
?>