<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!doctype html>
<html lang="en" class="no-js">
<head>
<!-- Meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $SYSINFO['sys_name'];?>-<?php echo $SYSTEM_TITLE;?></title>
	<meta name="description" content="<?php echo $SYSINFO['sys_name'];?>-<?php echo $SYSTEM_TITLE;?>">
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
	<img src="images/sendbanner-en.jpg" alt="about-banner" />
</div><!-- /.banner-structure -->
<style>
</style>

<div class="our-service-page w100-l searchpt">
	<div class="cont container">
		<div class="row">
			<form action="<?php echo URL_NAV('shipping');?>" method="post" target="i_frame" enctype="multipart/form-data">
				<div class="col-md-12 searchtd">Recipient:</div>
				<div class="col-md-12 search-searchtop">
					<div class="col-md-2 sendin inputone">
						<div class="col-md-2 inputone input-group">
							<span class="input-group-addon">+</span>
							<input type="text" class="form-control search-searchin" value="001" name="mobilecode" id="mobilecode" style="width:60px;" maxlength="4"  placeholder="国家代号" id="inputGroupSuccess1" aria-describedby="inputGroupSuccess1Status">
						</div>
					</div>
					<div class="col-md-5 sendin inputone">
							<input type="text" class="form-control search-searchin" name="mobile" id="mobile" maxlength="12" placeholder="monile"> 
					</div>
					<?php if($USER_INFO[user_id]){?>
					<div class="col-md-3 inputtwo">
						<input type="text" class="form-control search-searchin" name="uname" id="uname" placeholder="name" maxlength="25"> 
					</div>
					<div class="col-md-2 inputthree" >
						<input type="file" name="imgurl[]" id="uimgurl[]" class="form-control search-searchin btnone" value="ID card upload" > 
					</div>
					<?php }else{ ?>
					<div class="col-md-3 inputthree">
						<input type="text" class="form-control search-searchin" name="uname" id="uname" placeholder="name" maxlength="25"> 
					</div>
					<div class="col-md-2 inputthree" style="height:41px;padding-right: 0px;">
						<input type="button" class="form-control search-searchin btnone" value="ID card upload" onclick="loginsend()" style="padding:0;"> 
					</div>
					<?php } ?>
				</div>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-12 sendin">
						<input type="text" class="form-control search-searchin" name="uaddress" id="uaddress" placeholder="address"> 
					</div>
				</div>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-12 sendin">
						<textarea rows="3" class="form-control search-searchin" cols="10" name="usentbrand" id="usentbrand" placeholder="Product Name"></textarea>
					</div>
				</div>
				<div class="col-md-12 search-searchtop sendtop1">
					<div class="col-md-2 sendin inputtwo">
						<input type="text" class="form-control search-searchin" name="usentnum" id="usentnum" placeholder="quantity"> 
					</div>
					<div class="col-md-2 inputtwo " style="display: inline-table;">
						<input type="text" class="form-control search-searchin" name="usentmoney" id="usentmoney" placeholder="unit price" value="0" readonly><div class="input-group-addon" style="width:40px;">￥</div>
					</div>
					<div class="col-md-2 inputtwo " style="display: inline-table;">
						<input type="text" class="form-control search-searchin" name="usentweight" id="usentweight" placeholder="weight" maxlength="4"><div class="input-group-addon" style="width:40px;">kg</div>
					</div>
					<div class="col-md-6 inputtwo">
						<input type="text" class="form-control search-searchin" name="usentgetmobile1" id="usentgetmobile1" placeholder="Alternate receiving logistics information mobile phone number"> 
					</div>
				</div>
				<?php if($USER_INFO[user_id]){?>
				<div class="col-md-12 searchsend"><b>Sender:</b></div>
				<div class="col-md-12 sendtop">
					<div class="col-md-6 sendin inputone">
						<span><b>Mobile：</b>+<?php echo $USER_INFO[user_mobile_code];?>&nbsp;&nbsp;<?php echo $USER_INFO[express_mobile];?></span>
					</div>
					<div class="col-md-6 inputtwo">
						<span><b>Name：</b><?php echo $USER_INFO[user_name];?></span>
					</div>
				</div>
				<div class="col-md-12 sendtop1">
					<div class="col-md-12 sendin inputone">
						<span><b>Address：</b><?php echo $USER_INFO[express_address];?></span>
					</div>
				</div>
				<div class="col-md-12 sendtop1">
					<div class="col-md-12 sendin inputone">
						<label>
							<input type="checkbox" checked="" name="LoginForm[rememberMe]" value="1" class="gh-logbox-inp" style="margin: 0;"> 
							<span class="gh-logbox-get">I have read and agreed</span><a href="<?php echo URL_NAV('about_14');?>" class="privacy" target="_blank"><small>《Order agreement》</small></a>
						</label>
					</div>
				</div>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-2 sendin">
						<input type="hidden" name="act" value="add">
						<button class="btn btn-lg regi" type="submit" name="submit">Send</button>
					</div>
				</div>
				<?php }else{ ?>
				<div class="col-md-12 search-searchtop sendtop">
					<div class="col-md-2 sendin">
						<button onclick="loginsend()" class="btn btn-lg regi" data-toggle="modal" data-target="#myModal">Login</button>
					</div>
				</div>
				<?php } ?>
				<IFrame id="i_frame" name="i_frame" width="0px" height="0px" style="display:none"></IFrame>
			</form>
		</div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /.our-service-page -->

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