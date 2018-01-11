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
	if($act=='updsort'){
		$t_online_train_video_outline = $tablePreStr."online_train_video_outline";
		$oldorder = trim(get_args('order'));
		$neworder = trim(get_args('id'));
		$tid = intval(get_args('tid'));
		if($neworder) {
			if($oldorder!=$neworder) {
				$oldorderarr=@explode(',',$oldorder);
				$neworderarr=@explode(',',$neworder);
				if($neworderarr){
					foreach($neworderarr as $k=>$v){
						$thenewsort[$v]=$k+1;
					}
				}
				if($oldorderarr){
					for($k=0;$k<=count($oldorderarr);$k++){
						$sql="update $t_online_train_video_outline set sort='9999".$oldorderarr[$k]."' where video_id='".$tid."' and sort='".$oldorderarr[$k]."' ";
						$dbo->exeUpdate($sql);
					}
					foreach($thenewsort as $k=>$v){
						$sql="update $t_online_train_video_outline set sort='".$v."' where video_id='".$tid."' and sort='9999".$k."' ";
						$dbo->exeUpdate($sql);
					}
					exit();
				}
			}
		}
		exit();
	}

	if($act=='edit'){
	

		/* post 数据处理 */
		$post['subject'] = short_check(get_args('subject'));
		$post['url'] = short_check(get_args('url'));
		$post['content'] = get_args('content');
		$post['summary'] = get_args('summary');
		$post['shichang'] = get_args('shichang');
		$post['price'] = get_args('price');
		$post['soft_id'] = get_args('soft_id');
		$post['downloadurl'] = get_args('downloadurl');
		$post['pancode'] = get_args('pancode');
		$post['laiyuan'] = get_args('laiyuan');
		$post['divide'] = get_args('divide');
		$post['groupqq'] = get_args('groupqq');
		$post['is_player'] = intval(get_args('is_player'));
		$post['specialty_id'] = intval(get_args('specialty_id'));
		$post['is_score'] = intval(get_args('is_score'));
		$post['is_digg'] = intval(get_args('is_digg'));
		$post['is_show'] = intval(get_args('is_show'))=='2'?intval(get_args('is_show')):'1';
		$post['status'] = intval(get_args('status'));
		if(get_args('updatetime')){
		$post['updatetime'] = strtotime(get_args('updatetime'));
		}
		$post['teacher_id'] = intval(get_args('teacher_id'));
		$kf_rj_num = intval(get_args('kf_rj_num'));

		$thislistid=intval(get_args('thislistid'));

		if(!$thislistid) {
			echo "<script>parent.showalert(1,'参数错误！');</script>";
			exit();
		}

		//数据表定义区
		$t_online_train_video = $tablePreStr."online_train_video";

		/* 图片上传 */
		$upload = new upload('jpg|gif|png',1024,'imgurl');
		$upload->set_dir("./uploadfiles/train/","{y}/{m}/{d}");
		$file = $upload->execute();
		/* 图片上传end */

		if ($file){
			if ($file[0]['flag'] == 1){
				$web_dir = $file[0]['dir'].$file[0]['name'];
				$web_dir = substr($web_dir,2);
				$post['imgurl'] = $web_dir;
			}
		}



		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		if(update_table_info($dbo,$t_online_train_video,$post," id=".$thislistid)) {
				if($kf_rj_num>0) {
					$t_online_train_video_outline = $tablePreStr."online_train_video_outline";
					if($kf_rj_num<100){
						for($ii=1;$ii<=$kf_rj_num;$ii++){
							$pt2=array();
							$pt2['sort']=intval(get_args('sort_'.$ii));
							if(intval(get_args('sortnew_'.$ii))){
							$pt2['sort']=intval(get_args('sortnew_'.$ii));
							}
							$pt2['sub1']=short_check(get_args('sub1_'.$ii));
							$pt2['sub2']=short_check(get_args('sub2_'.$ii));
							$pt2['sub3']=short_check(get_args('sub3_'.$ii));
							$pt2['sub4']=short_check(get_args('sub4_'.$ii));
							$pt2['sub5']=short_check(get_args('sub5_'.$ii));
							if($pt2['sub1']){
								$sql="select * from $t_online_train_video_outline where video_id='".$thislistid."' and sort='".$pt2['sort']."'";
								$row=$dbo->getRow($sql);
								if($row){
									update_table_info($dbo,$t_online_train_video_outline,$pt2," video_id=$id and sort='".$pt2['sort']."'");
								}else{
									$pt2['video_id']=$thislistid;
									insert_table_info($dbo,$t_online_train_video_outline,$pt2);
								}
							}
						}
					}else{
						for($ii=100;$ii<=$kf_rj_num;$ii++){
							$pt2=array();
							$pt2['sort']=intval(get_args('sort_'.$ii));
							if(intval(get_args('sortnew_'.$ii))){
							$pt2['sort']=intval(get_args('sortnew_'.$ii));
							}
							$pt2['sub1']=short_check(get_args('sub1_'.$ii));
							$pt2['sub2']=short_check(get_args('sub2_'.$ii));
							$pt2['sub3']=short_check(get_args('sub3_'.$ii));
							$pt2['sub4']=short_check(get_args('sub4_'.$ii));
							$pt2['sub5']=short_check(get_args('sub5_'.$ii));
							if($pt2['sub1']){
								$sql="select * from $t_online_train_video_outline where video_id='".$thislistid."' and sort='".$pt2['sort']."'";
								$row=$dbo->getRow($sql);
								if($row){
									update_table_info($dbo,$t_online_train_video_outline,$pt2," video_id=$id and sort='".$pt2['sort']."'");
								}else{
									$pt2['video_id']=$thislistid;
									insert_table_info($dbo,$t_online_train_video_outline,$pt2);
								}
							}
						}
					}
				}
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
		$t_online_train_video = $tablePreStr."online_train_video";
		$t_online_train_video_outline = $tablePreStr."online_train_video_outline";
		$t_course_xingzhi = $tablePreStr."course_xingzhi";
		$t_course_shiduan = $tablePreStr."course_shiduan";
		$t_course_classroom = $tablePreStr."course_classroom";
		$t_course_school = $tablePreStr."course_school";
		$t_areas = $tablePreStr."areas";
		$t_users = $tablePreStr."users";
		$t_online_cat = $tablePreStr."online_cat";

		$showstatus=array('1'=>'连载中','2'=>'已完结');
		$cat_info = get_news_cat_list($dbo,$t_online_cat);

		$train_info = array(
			'cat_id'		=> 0,
			'title'			=> '',
			'content'		=> '',
			'is_link'		=> '',
			'link_url'		=> 'http://',
			'is_show'		=> 1
		);



		$sql = "select * from `$t_online_cat`";
		$result = $dbo->getRs($sql);
		$cat_info = array();
		foreach($result as $value) {
			$cat_info[$value['parent_id']][] = $value;
			$allcat[$value[parent_id]][]=$value;
			$show_cat_info[$value[cat_id]]=$value[cat_name];
			$show_cat_info_code[$value[cat_id]]=$value[cat_code];
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
		$sort_cat=get_sort_act_cat();


		$train_info=get_table_info($dbo,$t_online_train_video,'id',$id);

		$sql1="select * from $t_online_train_video_outline where video_id=$id order by sort desc limit 0,1";
		$topnum=$dbo->getRow($sql1);

		$sql2="select * from $t_online_train_video_outline where video_id=$id order by sort asc";
		$row2=$dbo->getRs($sql2);
		if($row2){
			foreach($row2 as $k=>$v){
				if($k==0){
				$allkey=$v['sort'];
				}else{
				$allkey=$allkey.','.$v['sort'];
				}
			}
		}

		$teacher_list=get_table_list($dbo,$t_users,'',' where rank_id=1');

?>