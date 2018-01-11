<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!doctype html>
<html lang="en" class="no-js">
<head>
<!-- Meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $SYSINFO['sys_title'];?>-<?php echo $SYSTEM_TITLE;?></title>
	<meta name="keywords" content="<?php echo $SYSINFO['sys_keywords'];?>">
	<meta name="description" content="<?php echo $SYSINFO['sys_description'];?>-<?php echo $SYSTEM_TITLE;?>">
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
  
	<div class="banner-structure relative w100-l banner-top">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2500">
		   <ol class="carousel-indicators" style="z-index:10;">
		   
			<?php if($flashlight_list){?>
				<?php foreach($flashlight_list as $k=>$v){?>
				<?php if($k==0){?>
				 <li data-target="#myCarousel" data-slide-to="<?php echo $k;?>" class="active"></li>
				<?php }else{ ?>
				 <li data-target="#myCarousel" data-slide-to="<?php echo $k;?>"></li>
				<?php } ?>
				<?php } ?>
			<?php }else{ ?>
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			<?php } ?>

		   </ol>
		   <div class="carousel-inner">
		   <?php if($flashlight_list){?>
			<?php foreach($flashlight_list as $k=>$v){?>
			<?php if($k==0){?>
			<div class="item active">
				<a href="<?php echo $v[asd_link];?>" class="slider" target="_blank"><img class="img-responsive" src="<?php echo $v[asd_imgurl];?>" alt="<?php echo $v[asd_name];?>" style="max-height:800px;"></a>
			</div>
			<?php }else{ ?>
			<div class="item">
				<a href="<?php echo $v[asd_link];?>" class="slider" target="_blank"><img class="img-responsive" src="<?php echo $v[asd_imgurl];?>" alt="<?php echo $v[asd_name];?>" style="max-height:800px;"></a>
			</div>
			<?php } ?>
			<?php } ?>
		<?php }else{ ?>
			  <div class="active item"><img src="images/banner.jpg" /></div>
			  <div class="item" ><img src="images/banner2.png"/></div>
			  <div class="item" ><img src="images/banner3.png"/></div>
		<?php } ?>

		   </div>
		   <a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
		   <a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
		</div>
		<div class="center-qoute w100-l banner-search">
			<div class="container">
			<div class="row banner-searchtop">
				<li class="widget-addtags__input dropdown">
				<form action="<?php echo URL_NAV('tracking');?>" class="row norow">
					<span style="position:relative;">
						<input type="text" name="keyword" class="form-control banner-searchin tagkeydown" onfocus="getautoCompletelist();" autocomplete="off">
						<div class="autoComplete-boxs" style="position:absolute;top:32px;left:0px;width: 100%;">
							<ul class="autoComplete-list dropdown-menu" style="display:none;width: 100%;overflow: hidden;"></ul>
						</div>
					</span>
					<button type="submit" class="btn searchbtn"/></button>
					<a href="<?php echo URL_NAV('shipping');?>" class="btn sendbtn"/> </a>
					</form>
				</li>
				
			</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.center-quote -->
	</div><!-- /.banner-structure -->

	<div class="service-section w100-l fixed-padding" id="iswd">
		<div class="container">
		<div class="row">
			<div><p class="wangdian"><span class="wangdianx"><img src="images/wangd.png">Network</span></p></div>
			<?php if($partner_list){?>
				<?php foreach($partner_list as $k => $v){?>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 sectop">
				<div class="feature-item">
				  <div class="feature-icon"><img src="images/wangdian.png" class="first" alt="service" /></div>
				  <div class="feature-text">
				   <p style="font-size: 12px;line-height: 15px;"><?php echo $v['cat_name'];?></p>
				   <p><?php echo $v['cat_more'];?></p>
				  </div>
				</div>
				</div>
				<?php } ?>
			<?php } ?>
			<div style="float:right;padding-bottom: 30px;">
				<a href="<?php echo URL_NAV('partner');?>" class="lookmoveorange">click here for more</a>
			</div><!-- ./text-center -->
		</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /.service-section -->

	<div class="about-us-section w100-l">
		<div class="col-lg-5 col-md-5 col-sm-12 permanent-left">
			<img src="images/che.png" alt="image" />
		</div><!-- /.col-lg-5 -->
		<div class="col-lg-7 col-md-7 col-sm-12 for-this index_blog_one">
			<h2>我们</h2>
			<p>速运通总部位于加州洛杉矶，主要经营由美国到中国的国际快递业务，以及国际电子商务仓储、物流等相关业务。速运通（美中转运）自动化的仓储流程系统为您提供专属的海外仓储服务，让您可以通过互联网轻松安排您的发货时间和发货要求，从而节省运费,保证时效。我们还为中国的顾客们免费提供美国境内收货地址，使您拥有和当地居民一样方便的购物条件。速运通(美中转运）完善的运输网络、方便的网络操作平台、专业的客服团队，为顾客提供安全、快速、优质的一条龙物流服务。我们坚信转运快递公司最重要的就是时效和服务，相信速运通（美中转运）会让每一位顾客满意。</p>
			<div style="float:right;padding-top: 30px;">
				<a href="<?php echo URL_NAV('about');?>" class="lookmovewhite">click here for more</a>
			</div>
		</div><!-- /.col-lg-5 -->
	</div><!-- /.about-us-section -->


	<div class="blog-post-section w100-l fixed-padding">
		<div class="container">
		<div class="row">
			<div><p class="wangdian"><span class="wangdianx"><img src="images/zhixun.png">Information</span></p></div>
			<?php if($news_list){?>
				<?php foreach($news_list as $k => $v){?>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 w100">
				<a href="<?php echo URL_NEWS('news',$v[cat_id],$v[article_id]);?>" title="<?php echo $v['title'];?>" class="white-color w100-l zhixun">
					<img src="<?php echo $v['imgurl'];?>" alt="<?php echo $v['title'];?>" style="max-height:160px;"/>
					<div class="detail-box">
						<img src="images/right.png"><span><?php echo $v['title'];?></span>
					</div><!-- /.detail-box -->
				</a><!-- /.white-color -->
			</div><!-- /.col-lg-4 -->
				<?php } ?>
			<?php } ?>
			<div class="lookm">
				<a href="<?php echo URL_NAV('news');?>" class="lookmoveorange">click here for more</a>
			</div><!--/.text-center -->
		</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /.blog-post-section -->

	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>

    <script src="/js/index.js"></script>

</body>
</html>