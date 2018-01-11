<?php
	/************myspace模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	/*****数据调用开始******/
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();

	//请求typelist
	$typelist=array('my','add');

	//定义数据库表
	$t_online_train_news=$tablePreStr.'online_train_news';
	
	if(!$KEYS[t])$KEYS[t]='0';
	if(!$KEYS[c])$KEYS[c]='0';

		if(count(explode("c",$r[2])) > 1&&intval(str_replace('c','',$r[2]))>0){
			$KEYS1=@explode('~',$r[2]);
			if($KEYS1){
				foreach($KEYS1 as $k=>$v){
					$c=@explode('-',$v);
					$KEYS[$c[0]]=$c[1];
				}
			}
			if(!$KEYS[t])$KEYS[t]='0';
			if(!$KEYS[c])$KEYS[c]='0';

			$qqq=" and soft_id='".intval($KEYS[c])."'";
		}
		$sql = "SELECT * FROM $t_online_train_news WHERE type=1 $qqq limit 0,10";
		$NEWINFO1 = $dbo->getRs($sql);

		$sql = "SELECT * FROM $t_online_train_news WHERE type=2 $qqq order by look desc limit 0,10";
		$NEWINFO2 = $dbo->getRs($sql);

		if(!$r[2]){
			$sql = "SELECT * FROM $t_online_train_news WHERE 1=1 and id<75";
			$sql .= " ORDER BY addtime DESC";
			$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);
			$show=0;
			$SYSTEM_NAV_SELECTED=''; //当前栏目ID
			$SYSTEM_TITLE="汇识学院-技术分享"; //标题
			$SYSTEM_KEYWORD="技术分享,免费技术培训"; //关键词
			$SYSTEM_DESCRIPTION="技术分享,免费技术培训"; //描述说明
		}else{
			if($r[2]&&in_array(trim($r[2]),$typelist)){
				@include("article_".$r[2].".php");
			}else{
				if(count(explode("c",$r[2])) > 1){

					$KEYS1=@explode('~',$r[2]);
					if($KEYS1){
						foreach($KEYS1 as $k=>$v){
							$c=@explode('-',$v);
							$KEYS[$c[0]]=$c[1];
						}
					}

					if(!$KEYS[t])$KEYS[t]='0';
					if(!$KEYS[c])$KEYS[c]='0';


					$sql = "SELECT * FROM $t_online_train_news WHERE 1=1 ";
					
					if($KEYS[c]>0){
					$sql .= " and soft_id=".intval($KEYS[c]);
					}

					if($KEYS[t]>0){
					$sql .= " and type=".intval($KEYS[t]);
					}

					$sql .= " ORDER BY addtime DESC";
					$result = $dbo->fetch_page($sql,$SYSINFO['seller_page']);
					if($result[result]){
						foreach($result[result] as $k=>$v){
								@preg_match("<img.*src=[\"](.*?)[\"].*?>",$v[content],$match);
								$v[imgurl]=$match[1]?$match[1]:"/images/noimg.png";
								$result[result][$k]=$v;
						}
					}
					$show=0;
					
					$showaricletype[0]="全部类型";
					$showaricletype[1]="资源下载";
					$showaricletype[2]="技术分享";
					$showaricletype[3]="素材下载";
					$showaricletype[4]="视频下载";

					$show_soft_keyword[0]="全部软件";
					$show_soft_title[0]="全部软件";

					$SYSTEM_NAV_SELECTED=''; //当前栏目ID
					$SYSTEM_TITLE="汇识学院-".$show_soft_title[intval($KEYS[c])].$showaricletype[intval($KEYS[t])]; //标题
					$SYSTEM_KEYWORD=$show_soft_keyword[intval($KEYS[c])].'，'.$showaricletype[intval($KEYS[t])]; //关键词
					$SYSTEM_DESCRIPTION="技术分享,免费技术培训"; //描述说明
				}else{
					check_numeric($r[2]);
					$sql = "SELECT * FROM $t_online_train_news WHERE 1=1";
					$sql .= " and id='".$r[2]."' and id<75";
					$INFO = $dbo->getRow($sql);
					$show=1;
					$SYSTEM_NAV_SELECTED=''; //当前栏目ID
					$SYSTEM_TITLE=$INFO[subject]; //标题
					$SYSTEM_KEYWORD=$INFO[subject]; //关键词
					$SYSTEM_DESCRIPTION=$INFO[subject]; //描述说明
						
					if(!$KEYS[t])$KEYS[t]=$INFO[type];
					if(!$KEYS[c])$KEYS[c]=$INFO[soft_id];

					if($INFO[content]){
						$INFO_content = explode("##分页##",$INFO[content]);
						$DOWN_content = explode("##下载##",$INFO[content]);
						$LOOK_content = explode("##查看##",$INFO[content]);
						if(count($LOOK_content)>1){
							if($USER_INFO[user_id]){
								$INFO[content]=str_replace('##查看##','',$INFO[content]);
							}else{
								$LOOK_content[1]='<a href="javascript:;" type="button" class="btn btn-danger" data-toggle="popover" title="" data-content="登录后提供查看并送积分【<a href=\'/login/\'>登录</a>】" data-original-title="提示："><span class="glyphicon glyphicon-circle-arrow-down span-ico"></span>登录查看</a>';
								$INFO[content]=$LOOK_content[0].$LOOK_content[1].$LOOK_content[2];
							}
						}
						if(count($DOWN_content)>1){
							if($USER_INFO[user_id]){
								$INFO[content]=str_replace('##下载##','',$INFO[content]);
							}else{
								$DOWN_content[1]='<a href="javascript:;" type="button" class="btn btn-danger" data-toggle="popover" title="" data-content="登录后提供下载并送积分【<a href=\'/login/\'>登录</a>】" data-original-title="提示："><span class="glyphicon glyphicon-circle-arrow-down span-ico"></span>登录下载</a>';
								$INFO[content]=$DOWN_content[0].$DOWN_content[1].$DOWN_content[2];
							}
						}
						$blogpage=count($INFO_content);
						if($blogpage>1){
							$showpage.='<ul class="pager"><ul class="pagination">';
							for($i=1;$i<=$blogpage;$i++){
								if($i==1){
								$showpage.='<li><a class="now" href='.URL_NAV('blog_'.$INFO[id]).'>第'.$i.'页</a></li>';
								}else{
								$showpage.='<li><a class="now" href='.URL_NAV('blog_'.$INFO[id].'_'.$i).'>第'.$i.'页</a></li>';
								}
							}
							$showpage.='</ul></ul>';
							if($r[3]){
								$thispage=$r[3];
							}else{
								$thispage=1;
							}
							$INFO[content]=$INFO_content[($thispage-1)].$showpage;
						}
					}

					//MC缓存
					$MCK_KEY = new cache();

					$newssupdatekey=$MCK_KEY->getcache('newssupdatekey'.$r[2]);
					if(($newssupdatekey+180)<time()){
						$dbo->exeUpdate("update ".$t_online_train_news." set look=look+1 where id='".$r[2]."'");
						$MCK_KEY->setcache('newssupdatekey'.$r[2],time());
					}
				}
			}
		}


?>