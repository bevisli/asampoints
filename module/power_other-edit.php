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
	

		/* post 数据处理 */
		$post['title'] = short_check(get_args('title'));
		$post['title_cn'] = short_check(get_args('title_cn'));
		$post['content'] = get_args('content');
		$post['content_cn'] = get_args('content_cn');
		$post['short_order'] = intval(get_args('short_order'));
		$post['add_time'] = date('Y-m-d H:i:s',time());
		$thislistid=intval(get_args('thislistid'));

		if(!$thislistid) {
			echo "<script>parent.showalert(1,'参数错误！');</script>";
			exit();
		}

		//数据表定义区
		$t_other = $tablePreStr."other";



		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if(update_table_info($dbo,$t_other,$post," other_id=".$thislistid)) {
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
		$t_other = $tablePreStr."other";
		$train_info=get_table_info($dbo,$t_other,'other_id',$id);

?>