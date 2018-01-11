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
							<a href="<?php echo URL_NAV(CUTURL('power_ads'));?>">广告管理</a>
							<a href="<?php echo URL_NAV('power_ads-add');?>" style="float:right;">新增广告</a>
						</div>
					
		<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" onsubmit="return check_domain()" enctype="multipart/form-data" target="i_frame">
	
					<input type="hidden" name="act" value="edit">
		
		<input type="hidden" id="show_right" value="<?php echo $right;?>">
		<table class="table table-striped table-bordered bootstrap-datatable">
        	<thead>
			<tr style="text-align:center">
				<th width="30px">序号</th>
				<th align="left" width="80px">广告位置</th>
				<th align="left" width="100px">广告英文</th>
				<th align="left" width="100px">广告中文</th>
				<th align="left" width="150px">广告图片</th>
				<th align="left" width="150px">广告链接</th>
				<th width="50px">排序</th>
				<th width="120px">管理操作</th>
			</tr>
			</thead>
			<tbody>
			<?php if($result['result']) {
			foreach($result['result'] as $value) { ?>
			<tr style="text-align:center">
				<td><?php echo $value['asd_id'];?></td>
				<td><?php if($value['position_id']==1){?>首页幻灯片<?php }else{ ?>友情链接<?php } ?></td>
				<td class="limit" align="left">
				<span><?php echo $value['asd_name'];?></span>
				</td>
				<td class="limit" align="left">
				<span><?php echo $value['asd_name_cn'];?></span>
				</td>
				<td><?php if($value['asd_imgurl']){?><a href="<?php echo $value['asd_imgurl'];?>" target="_blank"><img src="<?php echo $value['asd_imgurl'];?>" height="80"></a><?php }else{ ?>-<?php } ?></td>
				<td align="left">
				<?php echo $value['asd_link'];?>
				</td>
				<td align="left"><?php echo $value['short_order'];?></td>
				<td>
					<a class="btn btn-small btn-primary" href="<?php echo URL_NAV('power_'.$r[2].'-edit_'.$value[asd_id]);?>">编辑</a>
					<a class="btn btn-small btn-danger" href="<?php echo URL_NAV('power_'.$r[2].'-del_'.$value[asd_id]);?>" onclick="return confirm('确定删除广告？');">删除</a>
				</td>
			</tr>
			<?php }?>
			<?php } else { ?>
			<tr>
				<td colspan="8" class="center">内容为空!</td>
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