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
						WdatePicker({minDate:'',doubleCalendar:false,dateFmt:'yyyy-MM-dd'});
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
							<a href="<?php echo URL_NAV(CUTURL('power_'.$r[2]));?>">分类列表</a>
							<a> - </a>
							<a>编辑分类</a>
					</div>
						
		<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" target="i_frame" onsubmit="return checkForm();" enctype="multipart/form-data">
		<table class="table table-striped table-bordered bootstrap-datatable">
		<input type="hidden" name="cat_id" value="<?php echo $r[3];?>" />
		<input type="hidden" name="act" value="edit">
			<tr>
				<td colspan="2">产品分类</td>
			</tr>
			<tr>
				<td width="100px" class="left">上级分类：</td>
				<td class="left">
					<select name="parent_id" id="parent_id" data-rel="chosen">
							<option value="0">作为顶级</option>
							<?php if($topcatlist){?>
							<?php foreach($topcatlist as $k=>$v){?>
							<option value="<?php echo $v[cat_id];?>" <?php if($row['parent_id']==$v[cat_id]){?>selected<?php } ?>>一<?php echo $v[cat_name];?></option>
							<?php } ?>
							<?php } ?>
					</select>
				</td>
			</tr>
			<tr>
				<td width="100px" class="left">英文分类：</td>
				<td class="left"><input class="form-control" type="text" name="cat_name" value="<?php echo $row['cat_name']?>" style="width:200px;" /></td>
			</tr>
			<tr>
				<td width="100px" class="left">中文分类：</td>
				<td class="left"><input class="form-control" type="text" name="cat_name_cn" value="<?php echo $row['cat_name_cn']?>" style="width:200px;" /></td>
			</tr>
			<tr>
				<td width="100px" class="left">分类排序：</td>
				<td class="left"><input class="small-text" type="text" name="sort_order" value="<?php echo $row['sort_order']?>" style="width:200px;" /></td>
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