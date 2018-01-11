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
    
<!-- Stylesheets ends here -->

</head>
<!-- head end -->
<body>
	<?php  include tpl_engine($SYSINFO['templates_name'],"header.html",1);?>
<div class="inner-structure relative w100-l">
	<img src="images/aboutbanner-en.jpg" alt="about-banner" />
</div><!-- /.banner-structure -->

<div class="blog-section w100-l fixed-padding">
	<div class="container">
		<ul id="myTab" class="nav nav-tabs nav-stacked col-md-2 zhixunleft">
			<?php if($other_list){?>
			<?php foreach($other_list as $k => $v){?>
				<li <?php if($r[2]==$v['other_id']){?>class="active"<?php } ?> ><a href="<?php echo URL_NAV('about_'.$v['other_id']);?>" class="shoufei"><?php echo $v['title'];?></a></li>
			<?php } ?>
			<?php } ?>
		</ul>
		<div id="myTabContent" class="tab-content col-md-9 zhixunright">
		    <div class="tab-pane fade in active">
				<div class="col-md-1 zhixuncontent-line"></div>
				<p class="zhixunp"><?php echo $other_info[title];?></p>
				<p class="zhixunp2"><?php echo $other_info[content];?></p>
		    </div>
		</div>
	</div>
</div><!-- /.blog-section -->
	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>
</body>
</html>