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
	<img src="images/searchbanner-en.jpg" alt="about-banner" />
</div><!-- /.banner-structure -->

<div class="our-service-page w100-l searchpt">
	<div class="cont container">
    <div class="row">
		<div class="col-md-12 searchtd">Recipient phone number inquiry</div>
        <div class="col-md-12 search-searchtop">
		<form action="<?php echo URL_NAV('tracking');?>" class="row norow">
        	<input id="keyword" name="keyword" placeholder="Please enter the recipient's phone number" type="text" class="form-control search-searchin" value="<?php echo $post['keyword'];?>"> 
            <button class="btn searchallbtn" type="submit"/></button>
		</form>
        </div><!-- /.row -->
		
		<?php if($result[result]){?>
			<div class="col-md-12 searchtt">
			<ul id="myTab" class="nav nav-tabs nav-stacked col-md-3 searchleft">
			<?php if($result[result]){?>
				<?php if(!$USER_INFO[user_id]&&count($result[result])>1){?>
				<li class="active">
				  <a href="#ex_<?php echo $result[result][0][pro_newid];?>" data-id="<?php echo $v[pro_newid];?>" class="shoufei ajaxget" data-toggle="tab">
					<?php echo $result[result][0][pro_newid];?>
				  </a>
				</li>
				<li>
				  <a href="javascript:;" onclick="loginsend()" align="center" class="loginlook">
					Log on to see more
				  </a>
				</li>
				<?php }else{ ?>
				<?php foreach($result[result] as $k=>$v){?>
				<li <?php if($k==0){?>class="active"<?php } ?>>
				  <a href="#ex_<?php echo $v[pro_newid];?>" class="shoufei ajaxget" data-id="<?php echo $v[pro_newid];?>" data-toggle="tab">
					<?php echo $v[pro_newid];?>
				  </a>
				</li>
				<?php } ?>
				<?php } ?>
			<?php } ?>
			</ul>
			<div id="myTabContent" class="tab-content col-md-9 searchright">
			<?php if($result[result]){?>
				<?php if(!$USER_INFO[user_id]&&count($result[result])>1){?>
					<div class="tab-pane fade in active" id="ex_<?php echo $result[result][0][pro_newid];?>">
						<div class="col-md-1 zhixuncontent-line"></div>
						<p class="zhixunp">Express details</p>
						<p class="zhixunp2 showtext_<?php echo $result[result][0][pro_newid];?>">loading ...</p>
					</div>
				<?php }else{ ?>
					<?php foreach($result[result] as $k=>$v){?>
					<div class="tab-pane fade <?php if($k==0){?>in active<?php } ?>" id="ex_<?php echo $v[pro_newid];?>">
						<div class="col-md-1 zhixuncontent-line"></div>
						<p class="zhixunp">Express details</p>
						<p class="zhixunp2 showtext_<?php echo $v[pro_newid];?>">loading ...</p>
					</div>
					<?php } ?>
				<?php } ?>
			<?php } ?>
				</div>
			</div>
			</div>
		<?php }else{ ?>
		<?php if($post['keyword']){?>
			<center><p class="tis">No number of logistics</p></center>
		<?php }else{ ?>
			<center><p class="tis">Please enter the correct number or mobile phone number query</p></center>
		<?php } ?>
		<?php } ?>
    </div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /.our-service-page -->
	<?php  include tpl_engine($SYSINFO['templates_name'],"footer.html",1);?>
	<script>
			function showthefirst(val){
				$('.showtext_'+val).html('<img src="../images/loading2.gif">loading...');
				$.get("/tracking/?act=ajaxget&dataid="+val, function(data){
					$('.showtext_'+val).html(data);
				});
			}
			$(document).ready(function(){ 
				$('.ajaxget').click(function(){ 
					var dataid=$(this).attr('data-id');
					$('.showtext_'+dataid).html('<img src="../images/loading2.gif">loading...');
					$.get("/tracking/?act=ajaxget&dataid="+dataid, function(data){
						$('.showtext_'+dataid).html(data);
					});
				});
			<?php if($post['keyword']){?>
			showthefirst('<?php echo $result[result][0][pro_newid];?>');
			<?php } ?>
			});
	</script>
</body>
</html>