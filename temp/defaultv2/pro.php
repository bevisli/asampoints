<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php echo $SYSINFO['sys_name'];?>-<?php echo $SYSTEM_TITLE;?></title>
<meta name="description" content="<?php echo $SYSINFO['sys_name'];?>-<?php echo $SYSTEM_TITLE;?>">
<base href="<?php echo $baseUrl;?>" />
<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto[].css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">
<link href='css/opensans.css' rel='stylesheet' type='text/css'>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="homepage">
	<?php  include tpl_engine($SYSINFO['templates_name'],"header.html",1);?>

<div id="inner-page">
    <div class="top-center">
      <h2>Our products</h2>
      <p class="lead">That 's representative of how our portfolio has shifted.</p>
    </div>
      <div class="container">
    <!--/#portfolio-filter-->
    <div class="col-xs-12 col-sm-3 col-md-3">
		<h3 class="p1">Classification</h3>
		<ul class="list-1">
			<li<?php if($r[2]==''){?> class="active"<?php } ?>><a class="<?php if($r[2]==''){?>active<?php } ?>" href="<?php echo URL_NAV('pro');?>">ALL PRODUCTS</a></li>
			<?php foreach($show_top[0] as $k=>$v){?>
				<li<?php if($r[2]==$v['cat_id']){?> class="active"<?php } ?>><a class="" href="<?php echo URL_NAV('pro_'.$v['cat_id']);?>"><?php if($show_top[$v['cat_id']]){?><?php if($r[2]==$v['cat_id']){?><i class="fa fa-minus"></i> <?php }else{ ?><i class="fa fa-plus"></i> <?php } ?><?php } ?><?php echo $v['cat_name'];?></a></li>
				<?php if($show_top[$r[2]]&&($r[2]==$v['cat_id'])){?>
				<?php foreach($show_top[$r[2]] as $k=>$v){?>
					<li class="lower<?php if($r[3]==$v['cat_id']){?> active2<?php } ?>"> &nbsp;&nbsp;<i class="fa fa-caret-right"></i> <a class="" href="<?php echo URL_NAV('pro_'.$v['parent_id'].'_'.$v['cat_id']);?>"><?php echo $v['cat_name'];?></a></li>
				<?php } ?>
				<?php } ?>
			<?php } ?>
		</ul>
    </div>
    
    <div class="col-xs-12 col-sm-9 col-md-9">
		<div class="row">
		  <div class="portfolio-items">
		  <?php if($result[result]){?>
		  <?php foreach($result[result] as $k=>$v){?>
			<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-4">
			  <div class="recent-work-wrap max-min-height"> <img class="img-responsive pro-img-bg" src="<?php echo $v[thumb];?>" alt="<?php echo $v[title];?>"><p class="pro-title"><?php echo $v[title];?></p>
				<div class="overlay">
				  <div class="recent-work-inner">
					<h3>
				    <a class="preview" href="<?php echo $v[thumb];?>" rel="prettyPhoto[]" title="<?php echo $v[title];?>">
					<p><i class="fa fa-search"></i> View </p>
					<p><?php echo $v[title];?></p>
					</a>
					</h3>
					<p><?php echo $v[content];?></p>
				  </div>
				</div>
			  </div>
			</div>
		  <?php } ?>
		  <?php }else{ ?>
		  <center>nothing!</center>
		  <?php } ?>
		  </div>
		</div>
	</div>
		<div class="clear"></div>
		<div class="wp-pagenavi clearfix">
				<center>
				<div class="pagenav clearfix">
					<?php  require("module/page.php");?>
				</div>
				</center>
		</div>
  </div>
</div>
<!--/#portfolio-item-->

	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>
</body>
</html>