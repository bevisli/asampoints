<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><link rel="stylesheet" href="/servtools/kindeditor-4.1.9/themes/default/default.css" />
<link rel="stylesheet" href="/servtools/kindeditor-4.1.9/plugins/code/prettify.css" />
<script charset="utf-8" src="/servtools/kindeditor-4.1.9/kindeditor.js"></script>
<script charset="utf-8" src="/servtools/kindeditor-4.1.9/lang/zh_CN.js"></script>
<script charset="utf-8" src="/servtools/kindeditor-4.1.9/plugins/code/prettify.js"></script>
<script>
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"]', {
			cssPath : '/servtools/kindeditor-4.1.9/plugins/code/prettify.css',
			uploadJson : '/servtools/kindeditor-4.1.9/php/upload_json.php',
			fileManagerJson : '/servtools/kindeditor-4.1.9/php/file_manager_json.php',
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

		
		var editor1 = K.create('textarea[name="content_cn"]', {
			cssPath : '/servtools/kindeditor-4.1.9/plugins/code/prettify.css',
			uploadJson : '/servtools/kindeditor-4.1.9/php/upload_json.php',
			fileManagerJson : '/servtools/kindeditor-4.1.9/php/file_manager_json.php',
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
<style>
.fabuxuqiu_h2{
	line-height:24px;
	margin: 2px 0px;
}
.fabuxuqiu_h2 input{
	padding:4px 2px;
}
</style>
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
							<a href="<?php echo URL_NAV(CUTURL('power_'.$r[2]));?>">产品列表</a>
							<a> - </a>
							<a>添加产品</a>
						</div>
							<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" target="i_frame" enctype="multipart/form-data">
							<table class="table table-striped table-bordered bootstrap-datatable">
							<input type="hidden" name="act" value="add">
								<tr width="80px">
									<td>状态：</td>
									<td><select name="is_show" data-rel="chosen">
										<option value="1" <?php if($train_info['is_show']==1){ echo "selected"; }?>>显示</option>
										<option value="2" <?php if($train_info['is_show']==2){ echo "selected"; }?>>隐藏</option>
									</select></td>
								</tr>
								<tr>
									<td>产品分类：</td>
									<td><select name="cat_id" id="cat_id" data-rel="chosen">
										<option value="0">选择分类</option>
										<?php if($cat_list){
										foreach($cat_list as $k=>$v) { ?>
											<option value="<?php echo $v[cat_id];?>" <?php if($train_info['cat_id']==$v['cat_id']){?>selected<?php } ?>><?php echo $v[keyword];?><?php echo $v[cat_name];?></option>
										<?php }
											}
										?>
									</select></td>
								</tr>
								<tr>
									<td>产品名英文：</td>
									<td><input class="small-text" type="text" name="title" value="<?php echo $train_info['title']; ?>" style="width:200px;" /> </td>
								</tr>
								<tr>
									<td>产品名中文：</td>
									<td><input class="small-text" type="text" name="title_cn" value="<?php echo $train_info['title_cn']; ?>" style="width:200px;" /> </td>
								</tr>
								<tr>
									<td>产品图片1：</td>
									<td><input type="file" name="imgurl[]"  style="width:250px;" maxlength="200" /> （建议产品图片尺寸：800x533）</td>
								</tr>
								<tr>
									<td>产品图片2：</td>
									<td><input type="file" name="imgurl1[]"  style="width:250px;" maxlength="200" />（建议产品图片尺寸：800x533）</td>
								</tr>
								<tr>
									<td>产品图片3：</td>
									<td><input type="file" name="imgurl2[]"  style="width:250px;" maxlength="200" />（建议产品图片尺寸：800x533）</td>
								</tr>
								<tr>
									<td>产品图片4：</td>
									<td><input type="file" name="imgurl3[]"  style="width:250px;" maxlength="200" />（建议产品图片尺寸：800x533）</td>
								</tr>
								<tr>
									<td>产品图片5：</td>
									<td><input type="file" name="imgurl4[]"  style="width:250px;" maxlength="200" />（建议产品图片尺寸：800x533）</td>
								</tr>
								<tr>
									<td valign="top">产品简介(英文)：</td>
									<td style="line-height:18px;">
									<textarea name="content" style="width:700px;height:200px;visibility:hidden;"><?php echo htmlspecialchars($row['content']); ?></textarea>
									</td>
								</tr>
								<tr>
									<td valign="top">产品简介(中文)：</td>
									<td style="line-height:18px;">
									<textarea name="content_cn" style="width:700px;height:400px;visibility:hidden;"><?php echo htmlspecialchars($row['content_cn']); ?></textarea>
									</td>
								</tr>
								<tr><td colspan="2"><span class="button-container"><input class="btn btn-small btn-primary" type="submit" name="submit" value="添加产品" /></span></td></tr>
							</table>
							</form>
							<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
					<script language="JavaScript" src="../servtools/ajax_client/ajax.js"></script>
					
                    
                	<div class="clearboth"></div>
					</div>
                </div>
            </div>
        </div>