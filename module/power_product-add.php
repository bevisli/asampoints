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
		$post['title'] = short_check(get_args('title'));
		$post['title_cn'] = short_check(get_args('title_cn'));
		$post['content'] = get_args('content');
		$post['content_cn'] = get_args('content_cn');
		$post['cat_id'] = intval(get_args('cat_id'));
		$post['is_show'] = intval(get_args('is_show'));
		$post['add_time'] = date('Y-m-d H:i:s',time());

		if($post['title']&&$post['cat_id']){

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

				$new_id = insert_table_info($dbo,$t_pro,$post);

		}else{
				echo "<script>parent.showalert(1,'请完善资料再提交！');</script>";
				exit();
		}


		if($new_id) {
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



?>