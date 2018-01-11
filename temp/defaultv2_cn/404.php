<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php echo $SYSINFO['sys_name_cn'];?>-<?php echo $SYSTEM_TITLE;?></title>
<meta name="description" content="<?php echo $SYSINFO['sys_name'];?>-<?php echo $SYSTEM_TITLE;?>">
<base href="<?php echo $baseUrl;?>" />
<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
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
			


<section id="middle" style="padding:50px 0;">
<div class="container">
<div class="row">
	<section id="content" class="ninecol">
	

	<!-- - - - - - - - - - - - - - Main - - - - - - - - - - - - - - - - -->		
		
	<section class="main sbr clearfix">		
		
		<div class="row">
			
			<div class="error404 tencol">
				
				<div class="e404">
					
					<h1 style="font-size:34px;color:#333;">404</h1>
					
					<p></p>
					<div class="title-error">对不起,无法找到该页!</div>
					
					<p></p>
					<a href="/" class="button orange bcolor">首页</a>
					
				</div><!--/ .e404-->
				
			</div><!--/ .error404-->			
			
		</div><!--/ .row-->

	</section><!--/ .main -->

	<!-- - - - - - - - - - - - - end Main - - - - - - - - - - - - - - - - -->			

			<div class="border-divider"></div>
	</section><!--/ #content-->
</div>
</div>
</section>

	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>
</body>
</html>