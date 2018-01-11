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
	

		/* post 数据处理 *//* post 数据处理 */
		$post['title'] = short_check(get_args('title'));
		$post['title_cn'] = short_check(get_args('title_cn'));
		$post['content'] = get_args('content');
		$post['content_cn'] = get_args('content_cn');
		$post['cat_id'] = intval(get_args('cat_id'));
		$post['is_show'] = intval(get_args('is_show'));
		$thislistid=intval(get_args('thislistid'));

		//数据表定义区
		$t_pro = $tablePreStr."pro";

				/* 图片上传 */
				$upload = new upload('jpg|gif|png',5024,'imgurl');
				$upload->set_dir("./uploadfiles/pro/","{y}/{m}/{d}");
				$file = $upload->execute();
				/* 图片上传end */
				if ($file){
					if ($file[0]['flag'] == 1){
						$web_dir = $file[0]['dir'].$file[0]['name'];
						$post['thumb'] = $web_dir;
					}
				}

				/* 图片上传 */
				$upload = new upload('jpg|gif|png',5024,'imgurl1');
				$upload->set_dir("./uploadfiles/pro/","{y}/{m}/{d}");
				$file = $upload->execute();
				/* 图片上传end */
				if ($file){
					if ($file[0]['flag'] == 1){
						$web_dir = $file[0]['dir'].$file[0]['name'];
						$post['thumb1'] = $web_dir;
					}
				}
				
				/* 图片上传 */
				$upload = new upload('jpg|gif|png',5024,'imgurl2');
				$upload->set_dir("./uploadfiles/pro/","{y}/{m}/{d}");
				$file = $upload->execute();
				/* 图片上传end */
				if ($file){
					if ($file[0]['flag'] == 1){
						$web_dir = $file[0]['dir'].$file[0]['name'];
						$post['thumb2'] = $web_dir;
					}
				}
				
				/* 图片上传 */
				$upload = new upload('jpg|gif|png',5024,'imgurl3');
				$upload->set_dir("./uploadfiles/pro/","{y}/{m}/{d}");
				$file = $upload->execute();
				/* 图片上传end */
				if ($file){
					if ($file[0]['flag'] == 1){
						$web_dir = $file[0]['dir'].$file[0]['name'];
						$post['thumb3'] = $web_dir;
					}
				}
				
				/* 图片上传 */
				$upload = new upload('jpg|gif|png',5024,'imgurl4');
				$upload->set_dir("./uploadfiles/pro/","{y}/{m}/{d}");
				$file = $upload->execute();
				/* 图片上传end */
				if ($file){
					if ($file[0]['flag'] == 1){
						$web_dir = $file[0]['dir'].$file[0]['name'];
						$post['thumb4'] = $web_dir;
					}
				}



		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if(update_table_info($dbo,$t_pro,$post," pro_id=".$thislistid)) {
			echo "<script>parent.showalert(0,'修改成功！是否返回列表？<br /> <a href=\"javascript:;\" onclick=\"goback();\">返回</a>&nbsp; &nbsp;<a href=\"javascript:;\" onclick=\"hiddendiv();\">取消</a>');</script>";
			exit();
		} else {
			echo "<script>parent.showalert(1,'修改失败！');</script>";
			exit();
		}
		exit();
	}




	$id = intval($r[3]);

	if(!$id) {
		echo '<script>top.location.href="?r=404";</script>';
		exit();
	}

	//定义读操作
	dbtarget('r',$dbServs);
	$dbo=new dbex;

	//数据表定义区
	$t_pro = $tablePreStr."pro";
	$t_pro_cat = $tablePreStr."pro_cat";



	$sql = "select * from `$t_pro_cat`";
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
	$cat_list=get_sort_act_cat();

	$row=get_table_info($dbo,$t_pro,'pro_id',$id);


?>