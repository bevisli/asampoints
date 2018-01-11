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
		$post['cat_name'] = short_check(get_args('cat_name'));
		$post['cat_name_cn'] = short_check(get_args('cat_name_cn'));
		$post['parent_id'] = intval(get_args('parent_id'));
		$post['sort_order'] = get_args('sort_order');
		$cat_id = intval(get_args('cat_id'));



		//数据表定义区
		$t_article_cat = $tablePreStr."article_cat";
		$t_admin_log = $tablePreStr."admin_log";

		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if($post['cat_name']){

		}

		//定义操作规则
		function update_news_cat(&$dbo,$table,$update_items,$cat_id) {
			$item_sql = get_update_item($update_items);
			$sql = "update `$table` set $item_sql where cat_id='$cat_id'";
			return $dbo->exeUpdate($sql);
		}

		if(update_news_cat($dbo,$t_article_cat,$post,$cat_id)) {

			echo "<script>parent.showalert(0,'修改成功！是否返回列表？<br /> <a href=\"javascript:;\" onclick=\"goback();\">返回</a>&nbsp; &nbsp;<a href=\"javascript:;\" onclick=\"hiddendiv();\">取消</a>');</script>";

		}else{

			echo "<script>parent.showalert(1,'参数错误！');</script>";
			exit();

		}





	exit();
	}

	if($act=='add'){



		/* post 数据处理 */
		$post['cat_name'] = short_check(get_args('cat_name'));
		$post['cat_name_cn'] = short_check(get_args('cat_name_cn'));
		$post['parent_id'] = intval(get_args('parent_id'));
		$post['sort_order'] = get_args('sort_order');



		//数据表定义区
		$t_article_cat = $tablePreStr."article_cat";
		$t_admin_log = $tablePreStr."admin_log";

		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if($post['cat_name']){

		}else{
			echo "<script>parent.showalert(1,'请填写名称！');</script>";
			exit();
		}

		$item_sql = get_insert_item($post);
		$sql = "insert into `$t_article_cat` $item_sql ";
		$dbo->exeUpdate($sql);
		$cate_id=mysql_insert_id();
		if($cate_id) {

			echo "<script>parent.showalert(0,'添加成功！是否返回列表？<br /> <a href=\"javascript:;\" onclick=\"goback();\">返回</a>&nbsp; &nbsp;<a href=\"javascript:;\" onclick=\"hiddendiv();\">取消</a>');</script>";

		}else{

			echo "<script>parent.showalert(1,'参数错误！');</script>";
			exit();

		}





	exit();
	}




		if(!$r[3]) { exit('错误请求！');}



		//数据表定义区
		$t_article_cat = $tablePreStr."article_cat";

		//读写分离定义方法
		$dbo = new dbex;
		dbtarget('r',$dbServs);

		$sql="select * from $t_article_cat where parent_id=0";
		$topcatlist=$dbo->getRs($sql);

		$sql="select * from $t_article_cat where cat_id=".$r[3]."";
		$row=$dbo->getRow($sql);
?>