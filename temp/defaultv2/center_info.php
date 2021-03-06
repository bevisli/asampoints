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
.form-horizontal .form-group {
    margin-left: -10px;
    margin-right: -10px;
}
.form-group {
    margin-bottom: 15px;
}
</style>
	
<!-- content -->
<div class="panel panel-default">
	<div class="panel-heading">
		<span class="hidden-xs">用户信息</span>
	</div>
	<div class="panel-body">
		<div class="table">
			<div id="accountInfoShow">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="unice" class="col-sm-2 control-label">姓名：</label>
						<div class="col-sm-6" style="line-height: 35px;">
							<?php echo $USER_INFO[user_name];?>									
						</div>
					</div>

					<div class="form-group">
						<label for="unice" class="col-sm-2 control-label">手机：</label>
						<div class="col-sm-6" style="line-height: 35px;">
							<font style="font-weight: bold;color:#F44336;">+<?php echo $USER_INFO[user_mobile_code];?>&nbsp;&nbsp;<?php echo $USER_INFO[express_mobile];?></font>
						</div>
					</div>
					<div class="form-group">
						<label for="unice" class="col-sm-2 control-label">地址：</label>
						<div class="col-sm-6" style="line-height: 35px;">
							<font style="font-weight: bold;color:#F44336;"><?php echo $USER_INFO[express_address];?></font>
						</div>
					</div>
					<div class="form-group">
						<label for="unice" class="col-sm-2 control-label">加入时间：</label>
						<div class="col-sm-6" style="line-height: 35px;">
							<?php echo date('Y-m-d',strtotime($USER_INFO[reg_time]));?>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<input id="switchToModifyBtn" class="btn btn-sm btn-primary" type="button" value="更改信息">
						</div>
					</div>
				</form>
			</div>
			<div id="accountInfoModifyForm" style="display:none">
				<form class="form-horizontal" role="form" id="contact_form" method="post" action="<?php echo URL_NAV('center_info');?>" enctype="multipart/form-data" target="i_frame">
					<div class="form-group">
						<label for="uqq" class="col-sm-2 control-label">姓名：</label>
						<div class="col-sm-6" style="position:relative;">
							<input type="text" id="name" name="name" style="width:180px" class="form-control" value="<?php echo $USER_INFO[user_name];?> ">
						</div>
					</div>
					<div class="form-group">
						<label for="uqq" class="col-sm-2 control-label">手机：</label>
						<div class="col-sm-6" style="position:relative;">
							<font style="font-weight: bold;color:#F44336;">+<?php echo $USER_INFO[user_mobile_code];?>&nbsp;&nbsp;<?php echo $USER_INFO[express_mobile];?></font>
						</div>
					</div>

					<div class="form-group">
						<label for="uqq" class="col-sm-2 control-label">地址：</label>
						<div class="col-sm-6" style="position:relative;">
							<input type="text" id="address" name="address" style="width:180px" class="form-control" value="<?php echo $USER_INFO[express_address];?>">
						</div>
					</div>
					
					<div class="form-group">
						<label for="uqq" class="col-sm-2 control-label">加入时间：</label>
						<div class="col-sm-6" style="position:relative;">
							<?php echo date('Y-m-d',strtotime($USER_INFO[reg_time]));?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<input type="hidden" name="act" value="editinfo">
							<input class="btn btn-sm btn-primary" type="submit" value="保存更改" style="padding: 11px 25px;margin-left: 15px;">
							<input id="cancelModifyBtn" class="btn btn-default btn-sm" type="button" value="取消更改"></td>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
<!-- eof content -->
<script src="/js/jquery1.11.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#switchToModifyBtn").click(function(){
		$("#accountInfoShow").css("display", "none");
		$("#accountInfoModifyForm").css("display", "");
	});
	$("#cancelModifyBtn").click(function(){
		$("#accountInfoModifyForm").css("display", "none");
		$("#accountInfoShow").css("display", "");
	});
});
</script>