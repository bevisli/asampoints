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
       <div class="container-fluid">
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
							<a href="<?php echo URL_NAV(CUTURL('power_other'));?>">单页管理</a>
							<a href="<?php echo URL_NAV('power_other-add');?>" style="float:right;">新增单页</a>
						</div>
					
		<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" onsubmit="return check_domain()" enctype="multipart/form-data" target="i_frame">
	
					<input type="hidden" name="act" value="edit">
		
		<input type="hidden" id="show_right" value="<?php echo $right;?>">
		<table class="table table-striped table-bordered bootstrap-datatable">
        	<thead>
			<tr style="text-align:center">
				<th width="20px">序号</th>
				<th align="left" width="150px">单页英文</th>
				<th align="left" width="150px">单页中文</th>
				<th align="left" width="100px">详细内容</th>
				<th width="129px">排序</th>
				<th width="120px">管理操作</th>
			</tr>
			</thead>
			<tbody>
			<?php if($result['result']) {
			foreach($result['result'] as $value) { ?>
			<tr style="text-align:center">
				<td><?php echo $value['other_id'];?></td>
				<td class="limit" align="left">
				<span><?php echo $value['title'];?></span>
				</td>
				<td class="limit" align="left">
				<span><?php echo $value['title_cn'];?></span>
				</td>
				<td class="limit" align="left">
				<a class="btn btn-small btn-primary" href="<?php echo URL_NAV('about_'.$value[other_id]);?>" target="_blank">查看</a>
				</td>
				<td align="left"><?php echo $value['short_order'];?></td>
				<td>
					<a class="btn btn-small btn-primary" href="<?php echo URL_NAV('power_'.$r[2].'-edit_'.$value[other_id]);?>">编辑</a>
					<a class="btn btn-small btn-danger" href="<?php echo URL_NAV('power_'.$r[2].'-del_'.$value[other_id]);?>" onclick="return confirm('确定删除单页？');">删除</a>
				</td>
			</tr>
			<?php }?>
			<?php } else { ?>
			<tr>
				<td colspan="6" class="center">内容为空!</td>
			</tr>
			<?php } ?>
           </tbody>
		</table>
		<div class="wp-pagenavi clearfix">
			<div class="pagination pagination-left" style="text-align:center;">
				<?php  require("module/page.php");?>
			</div>
		</div><!--/ .wp-pagenavi-->
		</form>
			<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
				         
                	<div class="clearboth"></div>
					</div>
                </div>
            </div>
        </div>