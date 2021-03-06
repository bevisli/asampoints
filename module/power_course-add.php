<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}


	/**************************************/
	/**************************************/
	/************power提交区域*************/
	/**************************************/
	/**************************************/

	$act = get_args('act');
	if($act=='add'){
	
		require_once("./foundation/module_admin_logs.php");

		/* post 数据处理 */
		$post['cat_id'] = intval(get_args('cat_id'));
		$post['subject'] = short_check(get_args('subject'));
		$post['digg_group'] = short_check(get_args('digg_group'));
		$post['xingzhi_id'] = intval(get_args('xingzhi_id'));
		$post['shiduan_id'] = intval(get_args('shiduan_id'));
		$post['soft_id'] = intval(get_args('soft_id'));
		$post['fenlei'] = intval(get_args('fenlei'));
		$post['banji'] = short_check(get_args('banji'));
		$post['price'] = short_check(get_args('price'));
		$post['oprice'] = short_check(get_args('oprice'));
		$post['didian'] = short_check(get_args('didian'));
		$post['keshi'] = short_check(get_args('keshi'));
		$post['shijian'] = short_check(get_args('shijian'));
		$post['shiduan'] = short_check(get_args('shiduan'));
		$post['teacher_id'] = intval(get_args('teacher_id'));
		$post['classroom_id'] = intval(get_args('classroom_id'));
		$post['is_setup'] = intval(get_args('is_setup'));
		$post['is_show'] = intval(get_args('is_show'));
		$post['is_digg'] = intval(get_args('is_digg'));
		$post['nums'] = short_check(get_args('nums'));
		$post['stime'] = strtotime(get_args('stime'));
		$post['etime'] = strtotime(get_args('etime'));
		$post['status'] = intval(get_args('status'));
		$post['summary'] = get_args('summary');
		$post['content'] = get_args('content');
		$kf_rj_num = intval(get_args('kf_rj_num'));


		if($post['cat_id']&&$post['subject']){

			//数据表定义区
			$t_online_train = $tablePreStr."online_train";
			$t_admin_log = $tablePreStr."admin_log";

			//定义读操作
			dbtarget('r',$dbServs);
			$dbo=new dbex;
			//$check_info=get_table_info($dbo,$t_online_train,'banji',$post['banji']);
			//if(!$check_info){
			//}else{
			//	echo "<script>parent.showalert(1,'该YY编号已存在无法添加！');</script>";
			//	exit();
			//}
				$post['addtime'] = date('Y-m-d H:i:s',time());
				/* 图片上传 */
				$upload = new upload('jpg|gif|png',1024,'imgurl');
				$upload->set_dir("./uploadfiles/train/","{y}/{m}/{d}");
				$file = $upload->execute();
				/* 图片上传end */
				if ($file){
					if ($file[0]['flag'] == 1){
						$web_dir = $file[0]['dir'].$file[0]['name'];
						$web_dir = substr($web_dir,2);
						$post['imgurl'] = $web_dir;
					}
				}

				//定义写操作
				dbtarget('w',$dbServs);
				$dbo=new dbex;

				$new_id = insert_table_info($dbo,$t_online_train,$post);

		}else{
				echo "<script>parent.showalert(1,'请完善资料再提交！');</script>";
				exit();
		}


		if($new_id) {
			if($kf_rj_num>0) {
				$t_online_train_outline = $tablePreStr."online_train_outline";
					for($ii=1;$ii<=$kf_rj_num;$ii++){
						$pt2=array();
						$pt2['sort']=intval(get_args('sort_'.$ii));
						$pt2['sub1']=short_check(get_args('sub1_'.$ii));
						$pt2['sub2']=short_check(get_args('sub2_'.$ii));
						if($pt2['sub1']){
							$sql="select * from $t_online_train_outline where train_id=$new_id and sort='".$pt2['sort']."'";
							$row=$dbo->getRow($sql);
							if($row){
								update_table_info($dbo,$t_online_train_outline,$pt2," train_id=$new_id and sort='".$pt2['sort']."'");
							}else{
								$pt2['train_id']=$new_id;
								insert_table_info($dbo,$t_online_train_outline,$pt2);
							}
						}
					}

			}
			admin_log($dbo,$t_admin_log,"添加培训：$new_id");
			echo "<script>parent.showalert(0,'添加成功！是否继续添加？<br /> <a href=\"".URL_NAV(CUTURL('power_'.$r[2]))."\">返回</a>&nbsp; &nbsp;<a href=\"".URL_NAV('power_'.$r[2])."\">继续</a>');</script>";
			exit();
		} else {
			echo "<script>parent.showalert(1,'添加失败！');</script>";
			exit();
		}
	exit();
	}




	/**************************************/
	/**************************************/
	/************power访问区域*************/
	/**************************************/
	/**************************************/






	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//定义数据库表
	$t_course_train = $tablePreStr."course_train";
	$t_course_xingzhi = $tablePreStr."course_xingzhi";
	$t_course_shiduan = $tablePreStr."course_shiduan";
	$t_course_classroom = $tablePreStr."course_classroom";
	$t_course_school = $tablePreStr."course_school";
	$t_areas = $tablePreStr."areas";
	$t_users = $tablePreStr."users";
	$t_online_cat = $tablePreStr."online_cat";
	$t_online_soft = $tablePreStr."online_soft";
	

	//培训状态
	$showstatus=array('1'=>'招生','2'=>'培训','3'=>'满意度调查','4'=>'课程结束');
	$cat_info = get_news_cat_list($dbo,$t_online_cat);

	$sql = "select * from `$t_online_soft`";
	$soft_list = $dbo->getRs($sql);
	foreach($soft_list as $value) {
		$show_soft_info[$value[id]]=$value[subject];
	}

	$sql = "select * from `$t_online_cat`";
	$result = $dbo->getRs($sql);
	$cat_info = array();
	foreach($result as $value) {
		$cat_info[$value['parent_id']][] = $value;
		$allcat[$value[parent_id]][]=$value;
		$show_cat_info[$value[cat_id]]=$value[cat_name];
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



	$xingzhi_list=get_table_list($dbo,$t_course_xingzhi);
	$shiduan_list=get_table_list($dbo,$t_course_shiduan);
	$classroom_list=get_table_list($dbo,$t_course_classroom);
	$course_school_list=get_table_list($dbo,$t_course_school);
	$teacher_list=get_table_list($dbo,$t_users,'',' where rank_id=1');



	$has_city=$dbo->getRs("select * from $t_areas where area_code!='' and area_type=2");



?>