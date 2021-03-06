<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!doctype html>
<html lang="en" class="no-js">
<head>
<!-- Meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $SYSINFO['sys_name_cn'];?>-<?php echo $SYSTEM_TITLE;?></title>
	<meta name="keywords" content="<?php echo $SYSTEM_KEYWORD;?>">
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
	<img src="images/zhixunbanner.png" alt="about-banner" />
</div><!-- /.banner-structure -->

<?php if($IS_Article!=1){?>

<div class="blog-section w100-l fixed-padding">
	<div class="container">
		<ul id="myTab" class="nav nav-tabs nav-stacked col-md-2 zhixunleft">
			<?php if($cat_list){?>
				<li <?php if($r[2]==''){?>class="active"<?php } ?> ><a href="<?php echo URL_NAV('news');?>" class="shoufei">全部资讯</a></li>
			<?php foreach($cat_list as $k => $v){?>
				<li <?php if($r[2]==$v['cat_id']){?>class="active"<?php } ?> ><a href="<?php echo URL_NAV('news_'.$v['cat_id']);?>" class="shoufei"><?php echo $v['cat_name_cn'];?></a></li>
			<?php } ?>
			<?php } ?>
		</ul>
		<div id="myTabContent" class="tab-content col-md-9 zhixunright">
		   
			
			
					<?php if($result['result']){?>
					<?php foreach($result['result'] as $v){?>
						<div class="tab-pane fade in active">
							<div class="col-md-1 zhixuncontent-line"></div>
							<p class="zhixunp"><a href="<?php echo URL_NEWS('news',$v[cat_id],$v[article_id]);?>" target="_blank"><?php echo $v['title_cn'];?></a></p>
							<p class="zhixunp2"><span class="post-date tcolor"><?php echo  $v[add_time];?></p>
						</div>
					<?php } ?>
					<?php }else{ ?>
					<div class='item' style='text-align:center;'>暂无内容</div>
					<?php } ?>
					<div class="clear"></div>
					
					<div class="wp-pagenavi clearfix">
							<div class="pagenav clearfix">
								<?php  require("module/page.php");?>
							</div>
					</div>

		</div>
	</div>
</div><!-- /.blog-section -->


	<?php }else{ ?>



		<div class="blog-section w100-l fixed-padding">
			<div class="container">
				<div id="myTabContent" class="tab-content col-md-12 zhixunright">
				   
					
								<div class="tab-pane fade in active">
									<p class="zhixunp" style="text-align:center;"><?php echo $Article_Info[title_cn];?></p>
									<p class="zhixunp2" style="text-align:center;"><small>栏目:<a href="<?php echo URL_NEWS('news',$Article_Info[cat_id]);?>"><?php echo  $show_cat_list[$Article_Info[cat_id]][cat_name_cn];?></a> 点击:<?php echo  $Article_Info[click];?> 发布时间:<?php echo $Article_Info[add_time];?></small></p>
									<div class="col-md-1 zhixuncontent-line" style="position: inherit; top: 0px;  height: 3px;  background: #ff6633;  display: block;  width: 100%;  margin: 5px 0 10px 0;"></div>
									<p class="zhixunp3"><?php echo $Article_Info[content_cn];?></p>
									
								</div>
							
							<div class="clear"></div>
							

				</div>
			</div>
		</div><!-- /.blog-section -->


	<?php } ?>
	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>
</body>
</html>