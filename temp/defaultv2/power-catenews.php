<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?>
 
<link rel="stylesheet" href="servtools/kindeditor-4.1.9/themes/default/default.css" />
<link rel="stylesheet" href="servtools/kindeditor-4.1.9/plugins/code/prettify.css" />
<script charset="utf-8" src="servtools/kindeditor-4.1.9/kindeditor.js"></script>
<script charset="utf-8" src="servtools/kindeditor-4.1.9/lang/zh_CN.js"></script>
<script charset="utf-8" src="servtools/kindeditor-4.1.9/plugins/code/prettify.js"></script>
<script>
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"]', {
			cssPath : 'servtools/kindeditor-4.1.9/plugins/code/prettify.css',
			uploadJson : 'servtools/kindeditor-4.1.9/php/upload_json.php',
			fileManagerJson : 'servtools/kindeditor-4.1.9/php/file_manager_json.php',
			allowFlashUpload : false,
			allowMediaUpload : false,
			allowFileManager : false,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
			}
		});

		
		var editor1 = K.create('textarea[name="summary"]', {
			cssPath : 'servtools/kindeditor-4.1.9/plugins/code/prettify.css',
			uploadJson : 'servtools/kindeditor-4.1.9/php/upload_json.php',
			fileManagerJson : 'servtools/kindeditor-4.1.9/php/file_manager_json.php',
			allowFlashUpload : false,
			allowMediaUpload : false,
			allowFileManager : false,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
			}
		});
		prettyPrint();
	});
</script>
       <div id="content">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
										  
					<script language="JavaScript" type="text/javascript" src="/layout/js/DatePicker/WdatePicker.js"></script>
					<script language="JavaScript" src="../servtools/ajax_client/ajax.js"></script>
					<script>
						$(document).ready(function(){
						$("#stime").click(function(){
						WdatePicker({minDate:'',doubleCalendar:false,dateFmt:'yyyy-MM-dd H:m'});
						});
						$("#etime").click(function(){
						WdatePicker({minDate:'',doubleCalendar:false,dateFmt:'yyyy-MM-dd H:m'});
						});
						});
					</script>
					<style>
					td span {color:red;}
					</style>
						<div class="alert alert-info">
							<a href="<?php echo URL_NAV(CUTURL('power_category'));?>">产品分类</a>
							<a> - </a>
							<a href="<?php echo URL_NAV(CUTURL('power_catenews'));?>"><b style="font-size:16px;">新闻分类</b></a>
							<a href="<?php echo URL_NAV('power_catenews-add');?>" style="float:right;">新增新闻分类</a>
						</div>
						
<script type='text/javascript'>

function GET_TOP_URL(){
	var location_site="http://"+location.host+location.pathname+location.search;
	var no_file_url=location_site.replace(/.[^\/]*$/g,"/");
	var no_dir_url=no_file_url.replace(/\/sysadmin\//,"/");
	return no_dir_url;
}

function show_domain(){
	var domain_url=GET_TOP_URL();
	document.getElementById('domain_url').innerHTML=domain_url;
	var costom_url=document.getElementById("web_site_domain").value;
	if(costom_url!=domain_url){
		document.getElementById("web_site_domain").style.color='red';
		document.getElementById('domain_url').style.color='red';
	}

}

function check_domain(){
	var domain_url=GET_TOP_URL();
	var costom_url=document.getElementById("web_site_domain").value;
	if(domain_url!=costom_url){
		show_domain();
		return confirm('');
	}
}

function set_domain(){
	var domain_url=GET_TOP_URL();
	document.getElementById("web_site_domain").value=domain_url;
	document.getElementById("web_site_domain").style.color='';
	document.getElementById('domain_url').style.color='';
}
function goto_smtptest() {
	var smtp_test = document.getElementById('sys_smtptest').value;
	var user_email_reg = /^[0-9a-zA-Z_\-\.]+@[0-9a-zA-Z_\-]+(\.[0-9a-zA-Z_\-]+)*$/;
	if(!user_email_reg.test(smtp_test)){
		ShowMessageBox('i_mail_format1;?>')
        //alert('i_mail_format1;?>');
        document.getElementById('sys_smtptest').focus();
        return false;
    }
	location.href = "m.php?app=sys_ckmail&smtp_test="+smtp_test;
}


</script>
		<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" onsubmit="return check_domain()" enctype="multipart/form-data" target="i_frame">
	
					<input type="hidden" name="act" value="edit">
		
		<input type="hidden" id="show_right" value="<?php echo $right;?>">
		<table class="table table-striped table-bordered bootstrap-datatable">
        	<thead>
			<tr style="text-align:center">
				<th width="20px">序号</th>
				<th align="left" width="250px">分类英文</th>
				<th align="left" width="250px">分类中文</th>
				<th width="129px">排序</th>
				<th width="120px">管理操作</th>
			</tr>
			</thead>
			<tbody>
			<?php if($result['result']) {
			foreach($result['result'] as $value) { ?>
			<tr style="text-align:center">
				<td><?php echo $value['cat_id'];?></td>
				<td class="limit" align="left">
				<span><?php echo $value['cat_name'];?></span>
				</td>
				<td class="limit" align="left">
				<span><?php echo $value['cat_name_cn'];?></span>
				</td>
				<td align="left"><?php echo $value['sort_order'];?></td>
				<td>
					<a class="btn btn-small btn-primary" href="<?php echo URL_NAV('power_'.$r[2].'-edit_'.$value[cat_id]);?>">编辑</a>
					<a class="btn btn-small btn-danger" href="<?php echo URL_NAV('power_'.$r[2].'-del_'.$value[cat_id]);?>" onclick="return confirm('确定删除？该分类下面的子分类和新闻都将被删除！');">删除</a>
				</td>
			</tr>
			<?php if($showcatinfo[$value['cat_id']]){?>
			<?php foreach($showcatinfo[$value['cat_id']] as $v){?>
			<tr style="text-align:center">
				<td><?php echo $v['cat_id'];?></td>
				<td class="limit" align="left">
				<span>　　一<?php echo $v['cat_name'];?></span>
				</td>
				<td class="limit" align="left">
				<span>　　一<?php echo $v['cat_name_cn'];?></span>
				</td>
				<td align="left"><?php echo $value['sort_order'];?>-<?php echo $v['sort_order'];?></td>
				<td>
					<a class="btn btn-small btn-primary" href="<?php echo URL_NAV('power_'.$r[2].'-edit_'.$v[cat_id]);?>">编辑</a>
					<a class="btn btn-small btn-danger" href="<?php echo URL_NAV('power_'.$r[2].'-del_'.$v[cat_id]);?>" onclick="return confirm('确定删除该分类？下面新闻都将被删除！');">删除</a>
				</td>
			</tr>
			<?php } ?>
			<?php } ?>
			<?php }?>
			<?php } else { ?>
			<tr>
				<td colspan="5" class="center">内容为空!</td>
			</tr>
			<?php } ?>
			<tr>
				<td colspan="5" class="center">
								<div class="span8 pagination pagination-left">
									<?php  require("module/page.php");?>
								</div>
			</td>
			</tr>
           </tbody>
		</table>
		</form>
			<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
					
<script>
show_domain();
</script>
                    
                	<div class="clearboth"></div>
					</div>
                </div>
            </div>
        </div>