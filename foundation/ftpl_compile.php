<?php
//模板生成缓存，模板静态化
//2013-07-30 黄培宏 15959295717
function tpl_engine($tpl_instance,$tpl_name,$type=0,$compile_type="debug",$install_now=false){
	$IS_OPENAUTO=$compile_type=="devp"?1:1;//是否自动生成
	$base_root = preg_match("/\//",$tpl_name);
	$is_allow=true;
	if($type==1||$type==0){//配置生成缓存文件路径。
		$creat_path=dirname(dirname(__FILE__))."/temp/".$tpl_instance."/";
		mkpath($creat_path,'777',$tpl_name);
		$tpl_path=dirname(dirname(__FILE__))."/templates/".$tpl_instance."/";
		if($base_root==false&&$is_allow==false){
			if($type==0){
				echo "<font color='red'>不允许进行编译</font><br />";
				//echo "<font color='red'>".$tpl_path.$tpl_name."不允许进行编译</font><br />";
			}
		}else{
			$tmp_url_array=explode("/",$tpl_name);
			$last_dir='';
			foreach($tmp_url_array as $rs) {
				if(preg_match("/\.[htm]/",$rs)) {
					$tmp_fname=get_filename($tpl_name);
					if(file_exists($tpl_path.$tpl_name)){
						$tpl_file=@file_get_contents($tpl_path.$tpl_name);//编译对应的template文件
					}else{
						echo "ERROR 404 This Page Not Found!";
						exit();
					}

					//替换模板编译代码
					$compile_file=tpl_compile($tpl_file,$install_now);
					$compile_file="<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?>".$compile_file;
					$compile_file=str_replace ( '<?exit?>', '', $compile_file );
					$compile_file=trim ( $compile_file );
					//判断生成缓存文件步骤
					$tplfile=$creat_path.$tmp_fname;
					if(!file_exists($tplfile)||$IS_OPENAUTO){
						$fileob=fopen($tplfile,"w+");
						$num=fwrite($fileob,$compile_file);
						if($num>0){
							if($type==1){
								//$show_templete=@fread($creat_path.$tmp_fname);
							}
						}else{
							if($type==1){
								echo " <font color='red'> 模板生成失败! </font><br />";
								//echo $tpl_path.$tpl_name." <font color='red'> 模板生成失败! </font><br />";
							}
						}
					}
					return $tplfile;
				}
			}
		}
	}else{
		return ;					
	}
}

 
function mkpath($mkpath,$mode =777,$tpl_name){
	$path_tname=explode('/',$tpl_name); 
	if(count($path_tname)>0){
		$DEL_PATH=$path_tname[count($path_tname)-1];
	}
	$tpl_name=str_replace($DEL_PATH,'',$tpl_name);
	if($tpl_name)$mkpath=$mkpath.$tpl_name;
	$path_arr=explode ('/',$mkpath); 
	foreach($path_arr as $value ){ 
		if (!empty($value)){ 
			if (empty($path)) $path = $value ;
			else $path.='/'.$value; 
			is_dir($path) or mkdir($path,$mode); 
		}
	}
	if(is_dir($mkpath))return true; 
	return  false; 
} 


function tpl_compile($str,$install_now=false){
	$tplTags=array(
		'{eval(',
		')/eval}',
		'{for(',
		'{foreach(',
		'{if(',
		'{else}',
		';/}',
		'{inc:',
		'{echo:',
		'{$',
		'{sta:',
		'[loop]}',
		'{elseif(',
		'{[elseif]',
		'[then]}',
		'{end:',
		'foreach/}',
		'for/}',
		'loop/}',
		'[exc]}', 
		'{/if}',
		'{/for}',
		'{/foreach}',
		'if/}'
	);
	$phpCodes=array(
		'<?php ',
		';?>',
		'<?php for(',
		'<?php foreach(',
		'<?php if(',
		'<?php }else{ ?>',
		';?>',
		'<?php ',
		'<?php echo ',
		'<?php echo $',
		'<?php ',
		'{?>',
		'<? }else if(',
		'<? }else if ',
		'{?>',
		'<?php ',
		'}?>',
		'}?>',
		'}?>',
		'{?>',
		'<?php } ?>',
		'<?php } ?>',
		'<?php } ?>',
		'}?>'
	);

	if(!$install_now) {
		if(strpos($str,"plugin_hook")){
			$str=preg_replace_callback("/\{\w+:plugin_hook\([\'\"]([^\)]*)[\'\"]\);\/\}/i","comp_plugins",$str);
		}
	} else {
		$str = preg_replace("/\{\w+:plugin_hook\([\'\"]([^\)]*)[\'\"]\);\/\}/i","{sta:\$plugins=array();/}",$str);
	}

	$str=lpstr_format($str);
	return str_replace($tplTags,$phpCodes,$str);
}


function lpstr_format($str){

	preg_match_all("/lp\{[a-zA-Z0-9]{1,4}\_/",$str,$PreStr);//取得前缀名
	preg_match_all("/lp\{[\w]+}/",$str,$BackStr);//取得语言包名

	$No_PreStr=str_replace("}","",str_replace("lp{","langpackage->",$BackStr[0]));

	$Pre_Str=str_replace("lp{","$",$PreStr[0]);

	$i=0;
	$finnal_arr=array();
	foreach($Pre_Str as $tmp_Str){
		 $finnal_arr[$i]=$tmp_Str.$No_PreStr[$i];
		 $i++;
	}

	return str_replace($BackStr[0],$finnal_arr,$str);
}


function get_filename($tpl_name){
	 return str_replace(array('.html','.htm'),'.php',$tpl_name);
}

function comp_plugins($match){
	if($match[1]!=''){
		global $dbo;
		global $tablePreStr;
		global $dbServs;
		if(!isset($dbServs)){
			$HUISHI_SOFT_IN = true;
			require("configuration.php");
			require($webRoot.$baseLibsPath."conf/dbconf.php");
			require($webRoot.$baseLibsPath."fdbtarget.php");
			require($webRoot.$baseLibsPath."libs_inc.php");
			require($webRoot.$baseLibsPath."cdbex.class.php");
		}
		$plugin_ids=explode(",",$match[1]);
		$sql_str='';
		foreach($plugin_ids as $rs){
			if($sql_str!=''){
				$sql_str.=",";
			}
			$sql_str.="'".$rs."'";
		}
		dbtarget('r',$dbServs);
		$dbo = new dbex;
		$plugins_array=array();
		$t_plugins=$tablePreStr."plugins";
		$t_plugin_url=$tablePreStr."plugin_url";
		$sql="SELECT b.* FROM $t_plugins a,$t_plugin_url b WHERE a.name=b.name and a.valid=1 and b.layout_id in($sql_str)";
		$rows=$dbo->getRs($sql);
		foreach($rows as $row){
			$plugins_array["$row[layout_id]"][]=$row;
		}
		$str=serialize($plugins_array);
		return "{sta:\$plugins=unserialize('$str');/}";
	}
}

function comp_plugins_position($tplAct,$compileType){
	global $pluginOpsition;
	foreach($pluginOpsition as $file_name){
		tpl_engine($tplAct,$file_name,0,$compileType);
	}
}
?>