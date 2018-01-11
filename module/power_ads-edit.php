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
		$post['asd_name'] = short_check(get_args('asd_name'));
		$post['asd_name_cn'] = short_check(get_args('asd_name_cn'));
		$post['position_id'] = intval(get_args('position_id'));
		$post['asd_link'] = get_args('asd_link');
		$post['short_order'] = intval(get_args('short_order'));
		$thislistid=intval(get_args('thislistid'));

		//数据表定义区
		$t_asd_content = $tablePreStr."asd_content";

				/* 图片上传 */
				$upload = new upload('jpg|gif|png',5024,'imgurl');
				$upload->set_dir("./uploadfiles/ads/","{y}/{m}/{d}");
				$file = $upload->execute();
				/* 图片上传end */
				if ($file){
					if ($file[0]['flag'] == 1){
						$web_dir = $file[0]['dir'].$file[0]['name'];
						$post['asd_imgurl'] = $web_dir;
					}
				}


		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if(update_table_info($dbo,$t_asd_content,$post," asd_id=".$thislistid)) {
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
	$t_asd_content = $tablePreStr."asd_content";

	$train_info=get_table_info($dbo,$t_asd_content,'asd_id',$id);


?>