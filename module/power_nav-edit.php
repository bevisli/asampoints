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
		$post['nav_name'] = short_check(get_args('nav_name'));
		$post['nav_name_cn'] = short_check(get_args('nav_name_cn'));
		$post['url'] = short_check(get_args('url'));
		if(get_args('keywords')){
		$post['keywords'] = get_args('keywords');
		}
		if(get_args('description')){
		$post['description'] = get_args('description');
		}
		$post['is_hide'] = intval(get_args('is_hide'));
		$id = intval(get_args('id'));



		//数据表定义区
		$t_nav = $tablePreStr."nav";
		$t_admin_log = $tablePreStr."admin_log";

		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if(!$post['nav_name']){
			echo "<script>parent.showalert(1,'请填写栏目名！');</script>";
			exit();
		}


		//定义操作规则
		function update_news_cat(&$dbo,$table,$update_items,$id) {
			$item_sql = get_update_item($update_items);
			$sql = "update `$table` set $item_sql where id='$id'";
			return $dbo->exeUpdate($sql);
		}

		if(update_news_cat($dbo,$t_nav,$post,$id)) {

			echo "<script>parent.showalert(0,'修改成功！是否返回列表？<br /> <a href=\"javascript:;\" onclick=\"goback();\">返回</a>&nbsp; &nbsp;<a href=\"javascript:;\" onclick=\"hiddendiv();\">取消</a>');</script>";

		}else{

			echo "<script>parent.showalert(1,'参数错误！');</script>";
			exit();

		}





	exit();
	}



		if(!$r[3]) { exit('错误请求！');}


		$t_nav = $tablePreStr."nav";

		//读写分离定义方法
		$dbo = new dbex;
		dbtarget('r',$dbServs);

		$sql="select * from $t_nav where id=".$r[3]."";

		$row=$dbo->getRow($sql);


?>