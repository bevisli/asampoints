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
       <div id="content">
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
							<a href="<?php echo URL_NAV(CUTURL('power_'.$r[2]));?>">单页列表</a>
							<a> - </a>
							<a>编辑单页</a>
						</div>
							<form action="<?php echo URL_NAV('power_'.$r[2]);?>" method="post" target="i_frame" enctype="multipart/form-data">
							<input type="hidden" name="thislistid" id="thislistid" value="<?php echo $train_info['other_id']; ?>" />
							<table class="table table-striped table-bordered bootstrap-datatable">
							<input type="hidden" name="act" value="edit">
								<tr>
									<td>单页英文：</td>
									<td><input class="small-text" type="text" name="title" value="<?php echo $train_info['title']; ?>" style="width:200px;" /> <span>*</span></td>
								</tr>
								<tr>
									<td>单页中文：</td>
									<td><input class="small-text" type="text" name="title_cn" value="<?php echo $train_info['title_cn']; ?>" style="width:200px;" /> <span>*</span></td>
								</tr>
								<tr>
									<td>单页排序：</td>
									<td><input class="small-text" type="text" name="short_order" value="<?php echo $train_info['short_order']; ?>" style="width:100px;" /> <span>*</span></td>
								</tr>
								<tr>
									<td valign="top">单页简介(英文)：</td>
									<td style="line-height:18px;">
									<textarea name="content" style="width:700px;height:400px;visibility:hidden;"><?php echo htmlspecialchars($train_info['content']); ?></textarea>
									</td>
								</tr>
								<tr>
									<td valign="top">单页简介(中文)：</td>
									<td style="line-height:18px;">
									<textarea name="content_cn" style="width:700px;height:400px;visibility:hidden;"><?php echo htmlspecialchars($train_info['content_cn']); ?></textarea>
									</td>
								</tr>
								<tr><td colspan="2"><span class="button-container"><input class="btn btn-small btn-primary" type="submit" name="submit" value="修改单页" /></span></td></tr>
							</table>
							</form>
							<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
					<script language="JavaScript" src="../servtools/ajax_client/ajax.js"></script>
					<script>
					function add_new_rj(){
					  var now_num=$("#kf_rj_num").val();
					  if(now_num>=300){
						  alert('最多上传300条！');
					  }else{
						  new_num=Number(now_num)+1;
						  $("#kf_rj_num").val(new_num);
						  $("#add_new_rj").append('<div class="fabuxuqiu_h2" id="rj_nums_'+new_num+'"><span><input type="hidden" name="sort_'+new_num+'" style="width:30px;" value="'+new_num+'"/></span> <span><input type="text" name="sub1_'+new_num+'" style="width:175px;"/> <input type="text" name="sub2_'+new_num+'" style="width:300px;"/> <input type="text" name="sub3_'+new_num+'" style="width:300px;"/> <input type="text" name="sub4_'+new_num+'" style="width:100px;"/> <input type="text" name="sub5_'+new_num+'" style="width:100px;"/> </span><span><a href="javascript:void(0);" onclick="del_new_rj('+new_num+');" title="移除">取消</a></span></div>');
					  }
					}		
					function delthis_num(val){
						showalert(0,"确定要删除吗？<br /><a href='javascript:;' onclick='del_new_rj("+val+");'>确定</a> 　 <a href='javascript:;' onclick='hiddendiv();'>取消</a>");
					}
					function del_new_rj(this_num){
					  ajax("/ajax/?act=delvideolist","POST","sid="+<?php echo $r[3];?>+"&cid="+this_num,function(data){
							if(data=='1') {
							  var now_num=$("#kf_rj_num").val();
							  new_num=Number(now_num)-1;
							  $("#kf_rj_num").val(new_num);
							  $("#rj_nums_"+this_num).remove();
								showalert(1,'删除成功！');
							}else{
								showalert(1,'删除失败！');
							}
					  });
					}
					function editthis_num(this_num){
					  ajax("/ajax/?act=editvideolistout","POST","sid="+<?php echo $r[3];?>+"&cid="+this_num+"&sub1="+$('#sub1_'+this_num).val()+"&sub2="+$('#sub2_'+this_num).val()+"&sub3="+$('#sub3_'+this_num).val()+"&sub4="+$('#sub4_'+this_num).val()+"&sub5="+$('#sub5_'+this_num).val(),function(data){
							if(data=='1') {
								showalert(1,'编辑成功！');
							}else{
								showalert(1,'编辑失败！');
							}
					  });
					}
					function updatebanji(val){
							val = val.replace(/-/g,'');
							$('#banji').val($('#banjix').val()+'_'+val);
					}
					function showclassrooms(val){
							var showclasss = document.getElementById("showclasss");
							ajax("/ajax/?act=showclassrooms","POST","sid="+val,function(data){
								if(data) {
									showclasss.innerHTML = data;
								}else{
									showclasss.innerHTML = '无数据';
								}
							});
					}
					function shownums(val){
							var nums = document.getElementById("nums");
							ajax("/ajax/?act=showclassroomnums","POST","sid="+val,function(data){
								if(data) {
									nums.value = data;
								}else{
									nums.value = '';
								}
							});
					}
					</script>

                    
                	<div class="clearboth"></div>
					</div>
                </div>
            </div>
        </div>