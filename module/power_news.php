<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//定义数据库表
	$t_article_cat=$tablePreStr.'article_cat';
	$t_article=$tablePreStr.'article';
	
	$KEYS1=@explode('~',$r[3]);
	if($KEYS1){
		foreach($KEYS1 as $k=>$v){
			$c=@explode('-',$v);
			$KEYS[$c[0]]=$c[1];
		}
	}

	if($r[3]>0){
		check_numeric($r[3]);
		$OsAL.= " and cat_id='".$r[3]."'";
	}


	if($KEYS[catid]>0){
		$OsAL .= "and cat_id='".$KEYS[catid]."' ";
	}

	$sql = "SELECT * FROM $t_article WHERE 1=1 $OsAL";
	$sql .= " ORDER BY add_time DESC";
	$result = $dbo->fetch_page($sql,15);

	

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
?>