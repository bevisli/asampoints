<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><style>
.clearuser{
	float:right;
	color: #FC7E42;
}
.clearuser:hover{
	float:right;
	color: #F44336;
}
.clearuser:focus{
	float:right;
	color: #F44336;
}
</style>
	
<!-- content -->

<div class="panel panel-default">
	<div class="panel-heading">
		<span class="hidden-xs">账户信息</span>
		<a href="javascript:;" class="clearuser">删除用户信息</a>
	</div>
	<div class="panel-body">
		<b>账户余额：</b><?php echo $USER_INFO[money];?> 
	</div>
</div>


<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
<!-- eof content -->
<script src="/js/jquery1.11.3.min.js"></script>
<script>
	$(document).ready(function(){ 
		$('.clearuser').click(function(){ 
			BootstrapDialog.show({
				title: '系统提示',
				message: '<div>确定清除用户信息？<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-success" onclick="sure_clear();">确定清除</button><button class="btn btn-default" data-dismiss="modal">取消</button></div></div>'
			});
		});
	});
	function sure_clear(){
		$.post("/ajax/", {
			act:"clear_self"
		}, 
		function(data, status) {
			if (data) {
				BootstrapDialog.show({title:'系统提示',message:data});
			} else {
				BootstrapDialog.show({title:'系统提示',message:'清除失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
			}
		});
	}
</script>