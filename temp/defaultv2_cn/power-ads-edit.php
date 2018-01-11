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
.m_title{
	font-size:12px;
	padding: 5px 0;
	border-top:1px solid #AD4444;
}
</style>
       <div class="container-fluid">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
										  
					<script language="JavaScript" type="text/javascript" src="/layout/js/DatePicker/WdatePicker.js"></script>
					<script language="JavaScript" src="../servtools/ajax_client/ajax.js"></script>
					<script type="text/javascript" src="/layout/js/jquery-ui.min.js"></script>
					<script type="text/javascript" src="/layout/js/idrag.js"></script>
					<script>
						$(document).ready(function(){
							$("#updatetime").click(function(){
							WdatePicker({minDate:'',doubleCalendar:false,dateFmt:'yyyy-MM-dd HH:mm'});
							});
						});
					</script>
					<style>
					td span {color:red;}
					</style>
						<div class="alert alert-info">
							<a href="<?php echo URL_NAV(CUTURL('power_'.$r[2]));?>">广告列表</a>
							<a> - </a>
							<a>编辑广告</a>
						</div>
							<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" target="i_frame" enctype="multipart/form-data">
							<input type="hidden" name="thislistid" id="thislistid" value="<?php echo $train_info['asd_id']; ?>" />
							<table class="table table-striped table-bordered bootstrap-datatable">
							<input type="hidden" name="act" value="edit">
								<tr width="80px">
									<td>广告位置：</td>
									<td><select name="position_id" data-rel="chosen">
										<option value="1" <?php if($train_info['position_id']==1){ echo "selected"; }?>>首页幻灯片</option>
										<option value="2" <?php if($train_info['position_id']==2){ echo "selected"; }?>>友情链接</option>
									</select></td>
								</tr>
								<tr>
									<td>广告英文：</td>
									<td><input class="small-text" type="text" name="asd_name" value="<?php echo $train_info['asd_name']; ?>" style="width:200px;" /> <span>*</span></td>
								</tr>
								<tr>
									<td>广告中文：</td>
									<td><input class="small-text" type="text" name="asd_name_cn" value="<?php echo $train_info['asd_name_cn']; ?>" style="width:200px;" /> <span>*</span></td>
								</tr>
								<tr>
									<td>广告排序：</td>
									<td><input class="small-text" type="text" name="short_order" value="<?php echo $train_info['short_order']; ?>" style="width:100px;" /> <span>*</span></td>
								</tr>
								<tr>
									<td>广告图片：</td>
									<td><input type="file" name="imgurl[]"  style="width:250px;" maxlength="200" /> （文字请留空）（首页幻灯片建议统一图片尺寸：1920宽x800高）
									<?php if($train_info['asd_imgurl']){?>
									<br /><a href="<?php echo $train_info['asd_imgurl'];?>" target="_blank"><img src="<?php echo $train_info['asd_imgurl'];?>" height="150"></a>
									<?php } ?></td>
								</tr>
								<tr>
									<td>广告链接：</td>
									<td><input class="small-text" type="text" name="asd_link" value="<?php echo $train_info['asd_link']; ?>" style="width:250px;" /> <span>*</span></td>
								</tr>
								<tr><td colspan="2"><span class="button-container"><input class="btn btn-small btn-primary" type="submit" name="submit" value="修改广告" /></span></td></tr>
							</table>
							</form>
							<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
					
                    
                	<div class="clearboth"></div>
					</div>
                </div>
            </div>
        </div>