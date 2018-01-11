<?php
	/************power模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	//数据表定义区
	$t_settings = $tablePreStr."settings";
	$t_admin_log = $tablePreStr."admin_log";

	$act = get_args('act');
	if($act=='edit'){

		$time = date("Y-m-d H:i:s");

		/*数据处理 */
		dbtarget('r',$dbServs);
		$dbo=new dbex;

		$sql = "select * from `$t_settings`";
		$result = $dbo->getRs($sql);
		if($result) {
			foreach($result as $v) {
				$SYSINFO[$v['variable']] = $v['value'];
			}
		}
		/* logo图片上传 */
		$upload = new upload('jpg|gif|png',1024,'logo_images');
		$upload->set_dir("uploadfiles/logo/","{y}/{m}/{d}");
	
		$file = $upload->execute();
		/* logo图片上传end */
		$sysinfo = get_args('sysinfo');
		if ($file){
			if ($file[0]['flag'] == 1){
				$web_dir = $file[0]['dir'].$file[0]['name'];
				$sysinfo['sys_logo'] = $web_dir;
			}else{
				$sysinfo['sys_logo'] =$SYSINFO['sys_logo'];
			}
		}else{
			$sysinfo['sys_logo'] =$SYSINFO['sys_logo'];
		}

		//数据表定义区
		$t_settings = $tablePreStr."settings";

		//定义写操作
		dbtarget('w',$dbServs);
		$dbo=new dbex;

		$time = date("Y-m-d H:i:s");

		$sql = "REPLACE INTO `$t_settings` (variable,`value`) VALUES('lastupdate','$time')";
		foreach($sysinfo as $k=>$v) {
			$sql .= ",('$k','$v')";
		}

		function put_file($sysinfo) {

			global $webRoot;
			$content = '<'.'?php'."\n";
			$content .= "if(!".'$'."HUISHI_SOFT_IN) {die('Hacking attempt');} \n";
			foreach($sysinfo as $k=>$v) {
				$v = str_replace('\"','"',$v);
				$content .= '$'."SYSINFO['$k'] = '$v'; \n\n";
			}
			$content .= '?'.'>';
			
			$settingfile=$webRoot.'temp/cache/setting.php';
			file_put_contents($settingfile,$content);
		}

		if($dbo->exeUpdate($sql)) {

			//配置文件静态化
			$configfile=$webRoot.'foundation/configuration.php';
			$config_content = file_get_contents($configfile);
			$update_arr = array(
				'url_rewrite' => "'".$sysinfo["url_r"]."'",
				'session_prefix' => "'".$sysinfo["session"]."'",
				'baseUrl' => "'".$sysinfo["web"]."'"
			);
			$new_config_content = update_config_file($config_content,$update_arr);

			file_put_contents($configfile,$new_config_content);

			put_file($sysinfo);
			/** 添加log */
			$admin_log =$a_langpackage->a_update_site_setting;
			//admin_log($dbo,$t_admin_log,$admin_log);


			echo "<script>parent.showalert(0,'修改成功！<br /> <a href=\"javascript:;\" onclick=\"hiddendiv();\">确定</a>');</script>";
			exit();
		} else {
			echo "<script>parent.showalert(1,'修改失败！');</script>";
		}

	

	exit();
	}








	/*数据处理 */
	dbtarget('r',$dbServs);
	$dbo=new dbex;

	//独立查询数据区
	$t_settings = $tablePreStr."settings";

	$sql = "select * from `$t_settings`";
	$result = $dbo->getRs($sql);
	if($result) {
		foreach($result as $v) {
			$SYSINFO[$v['variable']] = $v['value'];
		}
	}
?>