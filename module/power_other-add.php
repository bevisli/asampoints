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
		$post['short_order'] = intval(get_args('short_order'));
		$post['add_time'] = date('Y-m-d H:i:s',time());


		if($post['title']){

			//数据表定义区
			$t_other = $tablePreStr."other";
			$t_admin_log = $tablePreStr."admin_log";


				//定义写操作
				dbtarget('w',$dbServs);
				$dbo=new dbex;

				$new_id = insert_table_info($dbo,$t_other,$post);

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