<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}
	/* 数据库操作分离 */
	dbtarget('d',$dbServs);
	$dbo=new dbex();


	//数据表定义区
	$t_users = $tablePreStr."users";
	$t_pro = $tablePreStr."pro";
	$t_pro_cat = $tablePreStr."pro_cat";


	$KEYS1=@explode('~',$r[3]);
	if($KEYS1){
		foreach($KEYS1 as $k=>$v){
			$c=@explode('-',$v);
			$KEYS[$c[0]]=$c[1];
		}
	}

	if($KEYS[ssid]){
		$ssql = "select * FROM $t_pro WHERE 1=1 and pro_newid='".$KEYS[ssid]."'";
		$ssid = $dbo->getRow($ssql);
		$OsAL1 .= "and pro_id>='".$ssid[pro_id]."' ";
	}
	
	if($KEYS[eid]){
		$sql = "select * FROM $t_pro WHERE 1=1 and pro_newid='".$KEYS[eid]."'";
		$eid = $dbo->getRow($sql);
		$OsAL2 .= "and pro_id<='".$eid[pro_id]."' ";
	}

	if($KEYS[stime]){
		$KEYS[stime]=date("Y-m-d H:i:s",strtotime(str_replace("|","-",$KEYS[stime])));
		$OsAL3 .= "and add_time>='".$KEYS[stime]."' ";
	}
	if($KEYS[etime]){
		$KEYS[etime]=date("Y-m-d H:i:s",strtotime(str_replace("|","-",$KEYS[etime])));
		$OsAL4 .= "and add_time<='".$KEYS[etime]."' ";
	}

	$sql = "SELECT * FROM $t_pro WHERE 1=1 $OsAL1 $OsAL2 $OsAL3 $OsAL4";
	$sql .= " ORDER BY add_time DESC";
	$result = $dbo->fetch_page($sql,15);
	if($result[result]){
		foreach($result[result] as $k=>$v){
			$alluid[]=$v[pro_foruid];
		}
	}
	if($alluid){
		$sql = "SELECT * FROM $t_users WHERE 1=1 and user_id in (".implode(',',$alluid).") ";	
		$usinfo = $dbo->getRs($sql);
		if($usinfo){
			foreach($usinfo as $k=>$v){
				$showuserinfo[$v[user_id]]=$v;
			}
		}
	}


	$sql = "select * from `$t_pro_cat`";
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

	if($KEYS[excel]=='1'){

		/* 数据库操作分离 */
		dbtarget('d',$dbServs);
		$DB=new dbex();

		require_once './includes/PHPExcel.php';  
		require_once './includes/PHPExcel/Writer/Excel2007.php';
		require_once './includes/PHPExcel/Writer/Excel5.php';  
		include_once './includes/PHPExcel/IOFactory.php';
		//页面基本参数
		$title="Freitex";

		$user_sql = $DB->getRs("select * from freitex_users");
		foreach($user_sql as $k=>$v) {  
			$usershow[$v['UID']] = $v;
		}

		$objExcel = new PHPExcel();  
		//设置属性 (这段代码无关紧要，其中的内容可以替换为你需要的)  
		$objExcel->getProperties()->setCreator("Freitex");  
		$objExcel->getProperties()->setLastModifiedBy("Freitex");  
		$objExcel->getProperties()->setTitle("Office 2003 XLS Test Document");  
		$objExcel->getProperties()->setSubject("Office 2003 XLS Test Document");  
		$objExcel->getProperties()->setDescription("Freitex Expense for Office 2003 XLS.");  
		$objExcel->getProperties()->setKeywords("office 2003 Open-Xml By Kimy");  
		$objExcel->getProperties()->setCategory("Freitex Files");  
		$objExcel->setActiveSheetIndex(0);  
		 
		$i=0;  
		//表头
		$k1=("Tracking #"); 
		$k2=("Facility"); 
		$k3=("Create Time");  
		$k4=("Weight");  
		$k5=("Length");  
		$k6=("Width");  
		$k7=("Height");  
		$k8=("Volume Weight");  
		$k9=("Rate");  
		$k10=("Shipment"); 
		$k11=("Service"); 
		$k12=("Commodity"); 

		$objExcel->getActiveSheet()->setCellValue('a1', "$k1");  
		$objExcel->getActiveSheet()->setCellValue('b1', "$k2");  
		$objExcel->getActiveSheet()->setCellValue('c1', "$k3");  
		$objExcel->getActiveSheet()->setCellValue('d1', "$k4");  
		$objExcel->getActiveSheet()->setCellValue('e1', "$k5");  
		$objExcel->getActiveSheet()->setCellValue('f1', "$k6");  
		$objExcel->getActiveSheet()->setCellValue('g1', "$k7");  
		$objExcel->getActiveSheet()->setCellValue('h1', "$k8"); 
		$objExcel->getActiveSheet()->setCellValue('i1', "$k9"); 
		$objExcel->getActiveSheet()->setCellValue('j1', "$k10"); 
		$objExcel->getActiveSheet()->setCellValue('k1', "$k11"); 
		$objExcel->getActiveSheet()->setCellValue('l1', "$k12"); 

		$sql = "SELECT * FROM freitex_pro WHERE 1=1 $OsAL1 $OsAL2 $OsAL3 $OsAL4";
		$sql .= " ORDER BY add_time DESC limit 0,2000";
		$result = $dbo->getRs($sql);
		if($result){
			foreach($result as $k=>$v){
				$alluid[]=$v[pro_foruid];
			}
		}
		if($alluid){
			$sql = "SELECT * FROM freitex_users WHERE 1=1 and user_id in (".implode(',',$alluid).") ";	
			$usinfo = $dbo->getRs($sql);
			if($usinfo){
				foreach($usinfo as $k=>$v){
					$showuserinfo[$v[user_id]]=$v;
				}
			}
		}


		$kf_sql = $DB->getRs("SELECT * FROM freitex_pro WHERE 1=1 $OsAL1 $OsAL2 $OsAL3 $OsAL4 ORDER BY add_time DESC");
		if($kf_sql){
			foreach($kf_sql as $k=>$v) {  
				$u1=$i+2; 
				if(intval($v[pro_usermobilecode])==86){
					$dq='China';
				}
				if(intval($v[pro_usermobilecode])==1){
					$dq='Us';
				}
				if(intval($showuserinfo[$v[pro_foruid]][user_mobile_code])==86){
					$out_dq='China';
				}
				if(intval($showuserinfo[$v[pro_foruid]][user_mobile_code])==1){
					$out_dq='Us';
				}
				/*----------写入内容-------------*/
				$objExcel->getActiveSheet()->setCellValue('a'.$u1, $v[pro_newid]);  
				$objExcel->getActiveSheet()->setCellValue('b'.$u1, $v[pro_useraddress]);
				$objExcel->getActiveSheet()->setCellValue('c'.$u1, $v[add_time]);  
				$objExcel->getActiveSheet()->setCellValue('d'.$u1, '');  
				$objExcel->getActiveSheet()->setCellValue('e'.$u1, ''); 
				$objExcel->getActiveSheet()->setCellValue('f'.$u1, ''); 
				$objExcel->getActiveSheet()->setCellValue('g'.$u1, ''); 
				$objExcel->getActiveSheet()->setCellValue('h'.$u1, $v[pro_usersentweight]); 
				$objExcel->getActiveSheet()->setCellValue('i'.$u1, $v[pro_usersentnum]); 
				$objExcel->getActiveSheet()->setCellValue('j'.$u1, $v[pro_usersentweight]*$v[pro_usersentnum]); 
				$objExcel->getActiveSheet()->setCellValue('k'.$u1, $out_dq.'-'.$dq.' Express-'.$v[pro_expressname]); 
				$objExcel->getActiveSheet()->setCellValue('l'.$u1, $v[pro_usersentbrand]); 
				$i++;  
			}
		}
		
		// 高置列的宽度  
		$objExcel->getActiveSheet()->getColumnDimension('A')->setWidth(20);  
		$objExcel->getActiveSheet()->getColumnDimension('B')->setWidth(20);  
		$objExcel->getActiveSheet()->getColumnDimension('C')->setWidth(20);  
		$objExcel->getActiveSheet()->getColumnDimension('D')->setWidth(20);  
		$objExcel->getActiveSheet()->getColumnDimension('E')->setWidth(20);  
		$objExcel->getActiveSheet()->getColumnDimension('F')->setWidth(20);  
		$objExcel->getActiveSheet()->getColumnDimension('G')->setWidth(20);  
		$objExcel->getActiveSheet()->getColumnDimension('H')->setWidth(20);
		$objExcel->getActiveSheet()->getColumnDimension('I')->setWidth(20);
		$objExcel->getActiveSheet()->getColumnDimension('J')->setWidth(20);
		$objExcel->getActiveSheet()->getColumnDimension('K')->setWidth(30);
		$objExcel->getActiveSheet()->getColumnDimension('L')->setWidth(30);
		  
		$objExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('&L&BPersonal cash register&RPrinted on &D');  
		$objExcel->getActiveSheet()->getHeaderFooter()->setOddFooter('&L&B' . $objExcel->getProperties()->getTitle() . '&RPage &P of &N');  
		 
		// 设置页方向和规模  
		$objExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);  
		$objExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);  
		$objExcel->setActiveSheetIndex(0);  
		$timestamp = date('Y年n月',time());  
		
		if(!$ex)$ex='2007'; 
		if($ex == '2007') { //导出excel2007文档  
			header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');  
			header('Content-Disposition: attachment;filename="Freitex-'.$timestamp.'.xlsx"');  
			header('Cache-Control: max-age=0');  
			$objWriter = PHPExcel_IOFactory::createWriter($objExcel, 'Excel2007');  
			$objWriter->save('php://output');  
			exit();  
		} else {  //导出excel2003文档 
			header('Content-Type: application/vnd.ms-excel');  
			header('Content-Disposition: attachment;filename="Freitex-'.$timestamp.'.xls"');  
			header('Cache-Control: max-age=0');  
			$objWriter = PHPExcel_IOFactory::createWriter($objExcel, 'Excel5');  
			$objWriter->save('php://output');  
			exit();  
		}
		exit();
	}
?>