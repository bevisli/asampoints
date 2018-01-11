<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title><?php echo $SYSINFO['sys_name'];?>-<?php echo $SYSTEM_TITLE;?></title>
		<base href="<?php echo $baseUrl;?>" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        
        <!-- IE6-8 support of HTML5 elements -->

		<!--[if lt IE 9]>
		<script src="js/html5shiv.min.js"></script>
		<script src="js/respond.min.js"></script>
		<![endif]-->
        <!--[if lte IE 8]>
    	<link rel="stylesheet" type="text/css" href="layout/online/css/ie.css" />
		<![endif]-->
        
        <!-- Favicon and Apple Touch Icons -->
        <link rel="shortcut icon" href="layout/online/img/ico/favicon.png" />
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="layout/online/img/ico/apple-touch-icon-144-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="layout/online/img/ico/apple-touch-icon-114-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="layout/online/img/ico/apple-touch-icon-72-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" href="layout/online/img/ico/apple-touch-icon-57-precomposed.png" />
         
        
<style>
   h1, h2, h3, h4, h5, h6, #menu a {font-family:Open Sans !important;}
</style>


<link rel='stylesheet' id='layerslider_css-css' href='layout/online/assets/LayerSlider/css/layerslider.css' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css' href='layout/online/css/bootstrap.css' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrapresponsive-css' href='layout/online/css/bootstrap-responsive.css' type='text/css' media='all' />
<link rel='stylesheet' id='main-css' href='layout/online/css/main.css' type='text/css' media='all' />
<link rel='stylesheet' id='googleprettify-css' href='layout/online/assets/google-code-prettify/prettify.css' type='text/css' media='all' />
<link rel='stylesheet' id='nivoslider-css' href='layout/online/assets/nivo/nivo-slider.css' type='text/css' media='all' />
<link rel='stylesheet' id='prettyphoto-css' href='layout/online/css/prettyPhoto.css' type='text/css' media='all' />
<script type='text/javascript' src='layout/online/js/jquery-1.7.1.min.js'></script>
<script type='text/javascript' src='layout/online/assets/LayerSlider/js/layerslider.kreaturamedia.jquery.js'></script>
<script type='text/javascript' src='layout/online/assets/LayerSlider/js/jquery-easing-1.3.js'></script>

<script type='text/javascript' src='layout/online/js/bootstrap.min.js'></script>
<script type='text/javascript' src='layout/online/js/application.js'></script>
<script type='text/javascript' src='layout/online/js/superfish-menu/superfish.js'></script>
<script type='text/javascript' src='layout/online/js/jquery.nivo.slider.pack.js'></script>
<script type='text/javascript' src='layout/online/js/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='layout/online/js/jquery.isotope.min.js'></script>
<script type='text/javascript' src='layout/online/js/testimonialrotator.js'></script>
<script type='text/javascript' src='layout/online/js/jquery.waitforimages.js'></script>

<link href="layout/slider/style/style.css" rel="stylesheet" type="text/css" />
   
    <link class="skin" href="layout/online/styles/blue.css" rel="stylesheet" type="text/css" />
	<link type='text/css' href='layout/basic/css/basic.css' rel='stylesheet' media='screen' />
	<!-- IE6 "fix" for the close png image -->
	<!--[if lt IE 7]>
	<link type='text/css' href='layout/basic/css/basic_ie.css' rel='stylesheet' media='screen' />
	<![endif]-->
	<script type='text/javascript' src='layout/basic/js/jquery.simplemodal.js'></script>
	<script>
	function openmodal(url){
		$("#modalframe").attr("src",url)
		$("#modalframe").modal({
		containerCss:{
			height:450,
			padding:0,
			width:830
		},
		overlayClose:false
		});
	}
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>
	<header id="header" class="clearfix" style="height:200px;display:block;">
		
	</header>
		<!--Mainbody-开始-->
		<div class="mainbody">
			<div class="login-page">
				<div class="container">
						
						<h2>YONGSONG - Power Login</h2>
                        


					<form method="post" action="<?php echo URL_NAV('power-login');?>" class="contact-form" id="contactform" />
			
						<div class="line_3" style="margin:20px 0px 20px;"></div>
                        <div class="block_registration">
								<input type="hidden" name="act" value="login">
                            	<div class="col_1">
<label class="control-label" for="loginform-username">登录账户：</label>
                                    <div class="field"><input type="text" name="required_id" class="req" value=""/></div>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:14px;"></div>
                                    
<label class="control-label" for="loginform-username">登录密码：</label>
                                    <div class="field"><input type="password" name="required_pw" class="req" value=""/></div>
                                    <div class="clearboth"></div>
                                    <div class="separator" style="height:25px;"></div>
                                </div>
                                
                                <div class="clearboth"></div>
                                <div class="separator" style="height:1px;"></div>
                                <p class="info_text"><input type="submit" class="btn btn-info" value="登 录" /></p>
                            </form>
                        </div>
                        
                        <div class="line_3" style="margin:42px 0px 0px;"></div>


						<div class="border-divider"></div>

                        <div style="margin:30px 0px 18px;">Copyright &copy; YONGSONG 2015</div>


					</form><!--/ .contact-form-->
          	  
</div><!-- end container -->
</div><!-- end container -->
</div><!-- end container -->



 

	</body>
</html>