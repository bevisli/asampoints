<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><link rel="stylesheet" href="servtools/kindeditor-4.1.9/themes/default/default.css" />
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
	
	function removeclassroom(val){
		  $.post("/ajax/",
		  {
			act:'removeclassroom',
			sid:val
		  },
		  function(data,status){
			  if(data=='1'){
					location.href='<?php echo $REQUEST_URI;?>';
			  }else{
					showalert(1,'移除失败！');
			  }
		  });
	}
</script>
       <div class="container-fluid">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
										  
					<script language="JavaScript" type="text/javascript" src="/layout/js/DatePicker/WdatePicker.js"></script>
					<script language="JavaScript" src="../servtools/ajax_client/ajax.js"></script>
					<script>
						$(document).ready(function(){
						$("#stime").click(function(){
						WdatePicker({minDate:'',doubleCalendar:false,dateFmt:'yyyy-MM-dd HH:mm'});
						});
						$("#etime").click(function(){
						WdatePicker({minDate:'',doubleCalendar:false,dateFmt:'yyyy-MM-dd'});
						});
						});
					</script>
					<style>
					td span {color:red;}
					</style>
						<div class="alert alert-info">
							<a href="<?php echo URL_NAV(CUTURL('power_'.$r[2]));?>">栏目列表</a>
							<a> - </a>
							<a>编辑栏目</a>
					</div>
						
		<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" target="i_frame" onsubmit="return checkForm();" enctype="multipart/form-data">
		<table class="table table-striped table-bordered bootstrap-datatable">
		<input type="hidden" name="id" value="<?php echo $r[3];?>" />
		<input type="hidden" name="act" value="edit">
			<tr>
				<td>栏目状态：</td>
				<td><select name="is_hide" data-rel="chosen">
						<option value="1" <?php if($row['is_hide']==1){ echo "selected"; }?>>显示</option>
						<option value="2" <?php if($row['is_hide']==2){ echo "selected"; }?>>不显示</option>
				</select></td>
			</tr>
			<tr>
				<td width="100px" class="left">栏目英文：</td>
				<td class="left"><input class="form-control" type="text" name="nav_name" value="<?php echo $row['nav_name']?>" style="width:200px;" /></td>
			</tr>
			<tr>
				<td width="100px" class="left">栏目中文：</td>
				<td class="left"><input class="form-control" type="text" name="nav_name_cn" value="<?php echo $row['nav_name_cn']?>" style="width:200px;" /></td>
			</tr>
			<tr>
				<td width="100px" class="left">栏目链接：</td>
				<td class="left"><input class="form-control" type="text" name="url" value="<?php echo $row['url']?>" style="width:400px;" /></td>
			</tr>
			<tr><td colspan="2"><span class="button-container">
			<input class="btn btn-info" type="submit" name="submit" value="保存修改" />
			</span></td></tr>
		</table>
		</form>
							<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
					

                    
                	<div class="clearboth"></div>
					</div>
                </div>
            </div>
        </div>