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
		<span class="hidden-xs">Account information</span>
		<a href="javascript:;" class="clearuser">Clear user information</a>
	</div>
	<div class="panel-body">
		<b>Account balance：</b><?php echo $USER_INFO[money];?> 
	</div>
</div>


<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
<!-- eof content -->
<script src="/js/jquery1.11.3.min.js"></script>
<script>
	$(document).ready(function(){ 
		$('.clearuser').click(function(){ 
			BootstrapDialog.show({
				title: 'System prompt',
				message: '<div>Sure to clear user information?<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-success" onclick="sure_clear();">Sure</button><button class="btn btn-default" data-dismiss="modal">Cancel</button></div></div>'
			});
		});
	});
	function sure_clear(){
		$.post("/ajax/", {
			act:"clear_self"
		}, 
		function(data, status) {
			if (data) {
				BootstrapDialog.show({title:'System prompt',message:data});
			} else {
				BootstrapDialog.show({title:'System prompt',message:'Clear failure!<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">Sure</button></div>'});
			}
		});
	}
</script>