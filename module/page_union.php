<?php
if(!$HUISHI_SOFT_IN) {
	die('Hacking attempt');
}

$start_page	=	1;
$end_page	=	10;
$first_page	=	0;
$last_page	=	0;
	

	//伪静态
	if($turn_page_url){
		$baseUrl="";
		$page_curt=explode('[page]',$turn_page_url);

		if($result['countpage']	>	10){
			if($result['page']	>	5){
				$start_page	=	$result['page']	-	4;
				$end_page	=	$result['page']	+	5;
			}
			if($end_page	>	$result['countpage'])
			{
				$start_page	=	$result['countpage']	-	9;
				$end_page	=	$result['countpage'];
			}
		}
		else{
			$end_page	=	$result['countpage'];
		}

		if($start_page	>	1)
			$first_page	=	1;
		if($end_page	<	$result['countpage'])
			$last_page	=	1;

		if(isset($result['countpage'])){
			$pagecount=$result['countpage'];
		}
		if($result['page']<=1){
			$result['preurl']=$baseUrl.$page_curt[0].$page_curt[1];
		}else{
			$result['preurl']=$baseUrl.$page_curt[0].($result['page']-1).$page_curt[1];
		}
		if($result['countpage']<=1){
			$result['nexturl']=$baseUrl.$page_curt[0].$page_curt[1];
		}else if($result['page']==$result['lastpage']){
			$result['nexturl']=$baseUrl.$page_curt[0].$result['page'].$page_curt[1];
		}else{
			$result['nexturl']=$baseUrl.$page_curt[0].($result['page']+1).$page_curt[1];
		}
		$result['firsturl']=$baseUrl.$page_curt[0].'1'.$page_curt[1];
		$result['lsaturl']=$baseUrl.$page_curt[0].$result['page'].$page_curt[1];
		$result['nopage']=$baseUrl.$page_curt[0].$page_curt[1];
		include	tpl_engine($SYSINFO['templates_name']."/module","page_union.html",1);


	}
?>