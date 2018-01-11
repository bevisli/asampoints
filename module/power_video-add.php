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
		$post['subject'] = short_check(get_args('subject'));
		$post['url'] = short_check(get_args('url'));
		$post['content'] = get_args('content');
		$post['summary'] = get_args('summary');
		$post['shichang'] = get_args('shichang');
		$post['divide'] = get_args('divide');
		$post['price'] = get_args('price');
		$post['soft_id'] = get_args('soft_id');
		$post['downloadurl'] = get_args('downloadurl');
		$post['pancode'] = get_args('pancode');
		$post['laiyuan'] = get_args('laiyuan');
		$post['groupqq'] = get_args('groupqq');
		$post['is_player'] = intval(get_args('is_player'));
		$post['teacher_id'] = intval(get_args('teacher_id'));
		$post['specialty_id'] = intval(get_args('specialty_id'));
		$post['is_score'] = intval(get_args('is_score'));
		$post['is_digg'] = intval(get_args('is_digg'));
		$post['status'] = intval(get_args('status'));
		$kf_rj_num = intval(get_args('kf_rj_num'));


		if($post['subject']){

			//数据表定义区
			$t_online_train_video = $tablePreStr."online_train_video";
			$t_admin_log = $tablePreStr."admin_log";

				$post['addtime'] = date('Y-m-d H:i:s',time());
				$post['updatetime'] = strtotime($post['addtime']);
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

				$new_id = insert_table_info($dbo,$t_online_train_video,$post);

		}else{
				echo "<script>parent.showalert(1,'请完善资料再提交！');</script>";
				exit();
		}


		if($new_id) {
				if($kf_rj_num>0) {
					$t_online_train_video_outline = $tablePreStr."online_train_video_outline";

						for($ii=1;$ii<=$kf_rj_num;$ii++){
							$pt2=array();
							$pt2['sort']=intval(get_args('sort_'.$ii));
							$pt2['sub1']=short_check(get_args('sub1_'.$ii));
							$pt2['sub2']=short_check(get_args('sub2_'.$ii));
							$pt2['sub3']=short_check(get_args('sub3_'.$ii));
							$pt2['sub4']=short_check(get_args('sub4_'.$ii));
							$pt2['sub5']=short_check(get_args('sub5_'.$ii));
							if($pt2['sub1']){
								$sql="select * from $t_online_train_video_outline where video_id=$new_id and sort='".$pt2['sort']."'";
								$row=$dbo->getRow($sql);
								if($row){
									update_table_info($dbo,$t_online_train_video_outline,$pt2," video_id=$new_id and sort='".$pt2['sort']."'");
								}else{
									$pt2['video_id']=$new_id;
									insert_table_info($dbo,$t_online_train_video_outline,$pt2);
								}
							}
						}

				}
			admin_log($dbo,$t_admin_log,"添加视频：$new_id");
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
	

	//视频状态
	$showstatus=array('1'=>'连载中','2'=>'已完结');
	$cat_info = get_news_cat_list($dbo,$t_online_cat);


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