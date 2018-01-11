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
		$post['asd_name'] = short_check(get_args('asd_name'));
		$post['asd_name_cn'] = short_check(get_args('asd_name_cn'));
		$post['position_id'] = intval(get_args('position_id'));
		$post['asd_link'] = get_args('asd_link');
		$post['short_order'] = intval(get_args('short_order'));
		$post['last_update_time'] = date('Y-m-d H:i:s',time());

		if($post['asd_name']&&$post['position_id']){

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

				$new_id = insert_table_info($dbo,$t_asd_content,$post);

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






?>