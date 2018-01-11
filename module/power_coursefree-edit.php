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
	if($act=='edit'){
	
		require_once("./foundation/module_admin_logs.php");

		/* post 数据处理 */
		$post['cat_id'] = intval(get_args('cat_id'));
		$post['coursename'] = short_check(get_args('coursename'));
		$post['subject'] = get_args('subject');
		$post['xingzhi_id'] = intval(get_args('xingzhi_id'));
		$post['shiduan_id'] = intval(get_args('shiduan_id'));
		$post['banji'] = short_check(get_args('banji'));
		$post['keshi'] = short_check(get_args('keshi'));
		$post['didian'] = short_check(get_args('didian'));
		$post['shijian'] = short_check(get_args('shijian'));
		$post['jiangjin'] = short_check(get_args('jiangjin'));
		$post['shiduan'] = short_check(get_args('shiduan'));
		$post['teacher_id'] = intval(get_args('teacher_id'));
		$post['classroom_id'] = intval(get_args('classroom_id'));
		$post['is_setup'] = intval(get_args('is_setup'));
		$post['is_digg'] = intval(get_args('is_digg'));
		$post['nums'] = short_check(get_args('nums'));
		$post['stime'] = strtotime(get_args('stime'));
		$post['etime'] = strtotime(get_args('etime'));
		$post['status'] = intval(get_args('status'));
		$post['content'] = get_args('content');


		$id = intval(get_args('id'));

		if(!$id) {
			echo "<script>parent.showalert(1,'参数错误！');</script>";
			exit();
		}

		//数据表定义区
		$t_online_train_free = $tablePreStr."online_train_free";
		$t_power_bpm_item = $tablePreStr."power_bpm_item";
		$t_admin_log = $tablePreStr."admin_log";

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

		if(update_table_info($dbo,$t_online_train_free,$post," id=".$id)) {
			admin_log($dbo,$t_admin_log,"修改直播：$id");
			
			$iteminfo=$dbo->getRow("select * from $t_power_bpm_item where type=1 and lid=".$id);
			if($iteminfo){
				$post2=array();
				$post2[subject]=$post['subject'];
				$post2[context]=$post['content'];
				$post2[tasktime]=$post['stime'];
				$post2[taskendtime]=$post['etime'];
				$post2[jiangjin]=$post['jiangjin'];
				update_table_info($dbo,$t_power_bpm_item,$post2," type=1 and lid=".$id);
			}else{
				$post2=array();
				$post2[type]=1;
				$post2[lid]=$id;
				$post2[subject]=$post['subject'];
				$post2[context]=$post['content'];
				$post2[tasktime]=$post['stime'];
				$post2[taskendtime]=$post['etime'];
				$post2[jiangjin]=$post['jiangjin'];
				$post2[addtime]=time();
				insert_table_info($dbo,$t_power_bpm_item,$post2);
			}
			echo "<script>parent.showalert(0,'修改成功！是否返回列表？<br /> <a href=\"javascript:;\" onclick=\"goback();\">返回</a>&nbsp; &nbsp;<a href=\"javascript:;\" onclick=\"hiddendiv();\">取消</a>');</script>";
			exit();
		} else {
			echo "<script>parent.showalert(1,'修改失败！');</script>";
			exit();
		}
		exit();
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
		$t_online_train_free = $tablePreStr."online_train_free";
		$t_course_xingzhi = $tablePreStr."course_xingzhi";
		$t_course_shiduan = $tablePreStr."course_shiduan";
		$t_course_classroom = $tablePreStr."course_classroom";
		$t_course_school = $tablePreStr."course_school";
		$t_areas = $tablePreStr."areas";
		$t_users = $tablePreStr."users";
		$t_online_cat = $tablePreStr."online_cat";

		$showstatus=array('1'=>'招生','2'=>'培训','3'=>'满意度调查','4'=>'课程结束');
		$cat_info = get_news_cat_list($dbo,$t_online_cat);

		$train_info = array(
			'cat_id'		=> 0,
			'title'			=> '',
			'content'		=> '',
			'is_link'		=> '',
			'link_url'		=> 'http://',
			'is_show'		=> 1
		);



		$sql = "select * from `$t_online_cat`";
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


		$train_info=get_table_info($dbo,$t_online_train_free,'id',$id);
		$train_date_list=$dbo->getRs("select * from $t_online_train_free where cat_id='".$id."' or id='".$id."' order by stime asc");

		$xingzhi_list=get_table_list($dbo,$t_course_xingzhi);
		$shiduan_list=get_table_list($dbo,$t_course_shiduan);
		$course_school_list=get_table_list($dbo,$t_course_school);
		$classroom_list=get_table_list($dbo,$t_course_classroom,''," where cs_id='".$train_info[didian]."'");
		$teacher_list=get_table_list($dbo,$t_users,'',' where rank_id=1');



		$has_city=$dbo->getRs("select * from $t_areas where area_code!='' and area_type=2");
?>