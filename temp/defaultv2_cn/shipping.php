<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!doctype html>
<html lang="en" class="no-js">
<head>
<!-- Meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $SYSINFO['sys_name_cn'];?>-<?php echo $SYSTEM_TITLE;?></title>
	<meta name="description" content="<?php echo $SYSINFO['sys_name_cn'];?>-<?php echo $SYSTEM_TITLE;?>">
	<base href="<?php echo $baseUrl;?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- Meta tags end -->

<!-- Stylesheets starts here -->
	<link rel="shortcut icon" href="images/icons/fevi.png" >
	<link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/simple-line.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/owl.transitions.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link href="css/custom.css" rel="stylesheet" />
	<style>
	.search-searchin {
		border-bottom: solid 1px #cacaca;
	}
	</style>
<!-- Stylesheets ends here -->

</head>
<!-- head end -->
<body>
	<?php  include tpl_engine($SYSINFO['templates_name'],"header.html",1);?>
	<div class="inner-structure relative w100-l">
	<img src="images/sendbanner.png" alt="about-banner" />
</div><!-- /.banner-structure -->
<style>
</style>

<div class="our-service-page w100-l searchpt">
	<div class="cont container">
		<div class="row">
			<form action="<?php echo URL_NAV('shipping');?>" method="post" target="i_frame" enctype="multipart/form-data">
				<div class="col-md-12 searchtd">收件人:</div>
				<div class="col-md-12 search-searchtop">
					<div class="col-md-2 sendin inputone">
						<div class="col-md-2 inputone input-group">
							<span class="input-group-addon">+</span>
							<input type="text" class="form-control search-searchin" value="001" name="mobilecode" id="mobilecode" style="width:60px;" maxlength="4"  placeholder="国家代号" id="inputGroupSuccess1" aria-describedby="inputGroupSuccess1Status">
						</div>
					</div>
					<div class="col-md-5 sendin inputone">
							<input type="text" class="form-control search-searchin" name="mobile" id="mobile" maxlength="12" placeholder="手机"> 
					</div>
					<?php if($USER_INFO[user_id]){?>
					<div class="col-md-3 inputtwo">
						<input type="text" class="form-control search-searchin" name="uname" id="uname" placeholder="姓名" maxlength="25"> 
					</div>
					<div class="col-md-2 inputthree">
						<input type="file" name="imgurl[]" id="uimgurl[]" class="form-control search-searchin btnone" value="身份证上传"> 
					</div>
					<?php }else{ ?>
					<div class="col-md-3 inputthree">
						<input type="text" class="form-control search-searchin" name="uname" id="uname" placeholder="姓名" maxlength="25"> 
					</div>
					<div class="col-md-2 inputthree" style="height:41px;">
						<input type="button" class="form-control search-searchin btnone" value="身份证上传" onclick="loginsend()"> 
					</div>
					<?php } ?>
				</div>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-12 sendin">
						<input type="text" class="form-control search-searchin" name="uaddress" id="uaddress" placeholder="地址"> 
					</div>
				</div>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-12 sendin">
						<textarea rows="3" class="form-control search-searchin" cols="10" name="usentbrand" id="usentbrand" placeholder="品名"></textarea>
					</div>
				</div>
				<div class="col-md-12 search-searchtop sendtop1">
					<div class="col-md-2 sendin inputtwo">
						<input type="text" class="form-control search-searchin" name="usentnum" id="usentnum" placeholder="数量"> 
					</div>
					<div class="col-md-2 inputtwo " style="display: inline-table;">
						<input type="text" class="form-control search-searchin" name="usentmoney" id="usentmoney" placeholder="单价" value="0" readonly><div class="input-group-addon" style="width:40px;">元</div>
					</div>
					<div class="col-md-2 inputtwo " style="display: inline-table;">
						<input type="text" class="form-control search-searchin" name="usentweight" id="usentweight" placeholder="重量" maxlength="4"><div class="input-group-addon" style="width:40px;">kg</div>
					</div>
					<div class="col-md-6 inputtwo">
						<input type="text" class="form-control search-searchin" name="usentgetmobile1" id="usentgetmobile1" placeholder="备用接收物流信息手机号码"> 
					</div>
				</div>
				<?php if($USER_INFO[user_id]){?>
				<div class="col-md-12 searchsend"><b>寄件人:</b></div>
				<div class="col-md-12 sendtop">
					<div class="col-md-6 sendin inputone">
						<span><b>手机：</b>+<?php echo $USER_INFO[user_mobile_code];?>&nbsp;&nbsp;<?php echo $USER_INFO[express_mobile];?></span>
					</div>
					<div class="col-md-6 inputtwo">
						<span><b>姓名：</b><?php echo $USER_INFO[user_name];?></span>
					</div>
				</div>
				<div class="col-md-12 sendtop1">
					<div class="col-md-12 sendin inputone">
						<span><b>地址：</b><?php echo $USER_INFO[express_address];?></span>
					</div>
				</div>
				<div class="col-md-12 sendtop1">
					<div class="col-md-12 sendin inputone">
						<label>
							<input type="checkbox" checked="" name="LoginForm[rememberMe]" value="1" class="gh-logbox-inp" style="margin: 0;"> 
							<span class="gh-logbox-get">我已阅读并同意</span><a href="javascript:;" data-toggle="modal" data-target="#myModal" class="privacy" ><small>《下单协议》</small></a>
						</label>
					</div>
				</div>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-2 sendin">
						<input type="hidden" name="act" value="add">
						<button class="btn btn-lg regi" type="submit" name="submit">寄件提交</button>
					</div>
				</div>
				<?php }else{ ?>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-2 sendin">
						<button onclick="loginsend()" class="btn btn-lg regi">登录寄件</button>
					</div>
				</div>
				<?php } ?>
				<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
			</form>
			<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title" id="myModalLabel">系统提示</h4>
						</div>
						<div class="modal-body">
							<h4 style="text-align:center;">下单协议</h4>
							<p>寄件人下单后，即成为寄件人与我公司订立的合约。本合约自寄件人将快件交付给揽件人员并签字或盖章后成立。合约内容如下：</p>
							<p>1．寄件人同意委托我方提供快件寄递服务。</p>
							<p>2．寄件人应如实申报所寄的邮件内容，并准确、详细填写各项相关内容。因虚报申报产生的法律后果，由寄件人自行承担。</p>
							<p>3.寄件人不得交寄国家法律、法规禁止寄递的物品，我方对禁寄物品和拒绝验视的物品不予收寄。</p>
							<p>4.如地址不正确、联系方式错误、收件人拒收等原因而造成无法派送的快件，若寄件人要求退回的，双程运费均由寄件人承担。</p>
							<p>5.寄件人单件交寄物的价值限定为0.3万元。贵重交寄物务必保价，我方无审核交寄物价值的能力和义务。我方按交寄物声明价值的10%收取保价费。未按规定交纳保价费的邮件，不属于保价邮件。</p>
							<p>6.因承运人原因造成邮件丢失、短少、损毁或延误的，按下列标准进行赔偿：</p>
							<p>（1）保价邮件发生丢失的、完全损毁的，按保价金额进行赔偿；部分损毁或短少的，按声明价值的比例赔偿。</p>
							<p>（2）未保价邮件发生丢失、短少、损毁的，按实际损失价值赔偿，最高赔偿金额不超过所付邮费的3倍；不能证明实际损失价值的，按照邮费的5倍赔偿。</p>
							<p>（3）邮件发生延误的（以对外公布的全程时限为标准），免除本次邮费（不含包装箱、单式、保价费等附加费用）。</p>
							<p>7. 因承运人原因造成邮件丢失、短少、损毁或延误的，出现以下情况我方不予赔偿：</p>
							<p>（1）因不可抗力造成损失的。</p>
							<p>（2）寄递的物品违反禁寄和限寄规定，被国家行政机关没收或依照有关法律法规处理的。</p>
							<p>（3）因寄件人或收件人过失以及所寄物品本身原因造成邮件损失或延误的。</p>
							<p>（4）因寄件人填写收、寄件人名址、联系电话不全、错误，导致邮件延误的。</p>
							<p>（5）客户自寄件之日起满一年未查询又未提出赔偿要求的。</p>
							<p>8.本合约所称快件的“价值”，是指依快件本身物理性质所具备的价值；所谓称“损失”，不包括其可能获得的收益、利润、实际用途、商业机会、商业价值等任何直接或间接损失。</p>
							<p>  9.本合约未作规定的，按照国家相应的法律法规及我方相关规定执行。</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>
	<?php if($USER_INFO[user_id]){?>
	<script>
		$(document).ready(function() {
			$("#mobilecode").keyup(function(){ 
				$("#mobilecode").val($("#mobilecode").val().replace(/[^\d]/g,''));
			});
			$("#usentweight").keyup(function(){ 
				$("#usentweight").val($("#usentweight").val().replace(/[^\d.]/g,''));
				$("#usentmoney").val($("#usentweight").val()*10);
			});
			$("#mobile").keyup(function(){ 
				$("#mobile").val($("#mobile").val().replace(/[^\d]/g,''));
			});
		});
	</script>
	<?php } ?>
</body>
</html>