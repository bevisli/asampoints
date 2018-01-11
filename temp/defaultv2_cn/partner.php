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
    
<!-- Stylesheets ends here -->

</head>
<!-- head end -->
<body>
	<?php  include tpl_engine($SYSINFO['templates_name'],"header.html",1);?>
	<div class="inner-structure relative w100-l">
	<img src="images/wangdianbanner.jpg" alt="about-banner" />
</div><!-- /.banner-structure -->

<div class="service-section w100-l fixed-padding wandianpan">
	<div class="container">
    <div class="row">
		<div class="col-lg-12">
			<div class="col-md-1 wandiancontent-line"></div>
		</div>
			<?php if($partner_list){?>
				<?php foreach($partner_list as $k => $v){?>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 sectop">
				<div class="feature-item">
				  <div class="feature-icon"><img src="images/wangdian.png" class="first" alt="service" /></div>
				  <div class="feature-text">
				   <p style="font-size: 12px;line-height: 15px;"><?php echo $v['cat_name_cn'];?></p>
				   <p><?php echo $v['cat_more_cn'];?></p>
				  </div>
				</div>
				</div>
				<?php } ?>
			<?php } ?>
    </div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /.service-section -->
	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>
</body>
</html>