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
		$post['title'] = short_check(get_args('title'));
		$post['title_cn'] = short_check(get_args('title_cn'));
		$post['keyword'] = short_check(get_args('keyword'));
		$post['keyword_cn'] = short_check(get_args('keyword_cn'));
		$post['content'] = get_args('content');
		$post['content_cn'] = get_args('content_cn');
		$post['cat_id'] = intval(get_args('cat_id'));
		$post['is_show'] = intval(get_args('is_show'));
		$id = intval(get_args('id'));

		if(!$id) {
			echo "<script>parent.showalert(1,'参数错误！');</script>";
			exit();
		}

		//数据表定义区
		$t_article_cat=$tablePreStr.'article_cat';
		$t_article=$tablePreStr.'article';



		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if(update_table_info($dbo,$t_article,$post," article_id=".$id)) {
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
		$t_article_cat=$tablePreStr.'article_cat';
		$t_article=$tablePreStr.'article';

		$sql = "select * from `$t_article_cat`";
		$resultc = $dbo->getRs($sql);
		$cat_info = array();
		foreach($resultc as $value) {
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


		$row=get_table_info($dbo,$t_article,'article_id',$id);

?>