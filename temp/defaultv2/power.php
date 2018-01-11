<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title><?php echo $SYSINFO['sys_name'];?>-后台管理</title>
		<base href="<?php echo $baseUrl;?>" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" href="Matrixadmin/css/bootstrap.min.css" />
		<link rel="stylesheet" href="Matrixadmin/css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="Matrixadmin/css/fullcalendar.css" />
		<link rel="stylesheet" href="Matrixadmin/css/matrix-style.css" />
		<link rel="stylesheet" href="Matrixadmin/css/matrix-media.css" />
		<link href="Matrixadmin/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link rel="stylesheet" href="Matrixadmin/css/jquery.gritter.css" />
		<script type='text/javascript' src='layout/online/js/jquery-1.7.1.min.js'></script>
		<script type='text/javascript' src='layout/online/js/bootstrap.min.js'></script>
    </head>
	<style>
	   h1, h2, h3, h4, h5, h6, #menu a {font-family:Open Sans !important;}
	   div.logo{
		   overflow: hidden;
		width: 230px;
	   }
	   .container-fluid {
			padding-right: 20px;
			padding-left: 20px;
			padding-top: 20px;
		}
	</style>
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
<body>
	<!-- 顶部 html 块 -->
<?php  include tpl_engine($SYSINFO['templates_name'],"power-header.html",1);?>
<?php  include tpl_engine($SYSINFO['templates_name'],"power-left.html",1);?>

<div id="content">
	<div id="content-header">
		<div id="breadcrumb"> <a href="<?php echo URL_NAV('power_index');?>" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 首页</a></div>
	</div>
	<div class="container-fluid">
		<?php  include tpl_engine($SYSINFO['templates_name'],"power-".$r[2].".html",1);?>
	</div>
</div>

<?php  include tpl_engine($SYSINFO['templates_name'],"power-footer.html",1);?>

<script>
function showalert(keyw,title){
	$('#AllObjMsg').html(title);
	$('#AllObjMsg').fadeIn();
	if(keyw==1){
	setTimeout("$('#AllObjMsg').fadeOut();",1000);
	}
}
function hiddendiv(divname){
	$('#AllObjMsg').fadeOut();
}
function goback(val){
	if(val){
		location.href=val;
		window.location.href=val;
	}else{
		val=$('#PREVURL').val();
		location.href=val;
		window.location.href=val;
	}
}
</script>
<style>
/*漂浮提示页面*/
#content {
padding-top: 10px;
color: #333;
font-family: 'PT Sans',sans-serif;
font-size: 12px;
line-height: 20px;
}
.alert {
padding: 10px;
margin-bottom: 10px;
}
.form-control{display:inline-block;}
table a{color:#375B91;}
th{font-size:13px;}
th a{font-size:13px;}
input,textarea{border: 1px #eee solid;font-family: 'PT Sans',  sans-serif;}
.alert-info a{font-size: 15px;}
#AllObjMsg{
font-family: sans-serif;
display:none;
padding:25px 30px 25px 30px;
min-width:80px;
text-align: center;
font-size: 15px;
z-index:99999;
left:50%;
top: 45%;
margin-left:-70px!important;
margin-top:-30px!important;
margin-top:-30px;
margin-left:-70px;
position:fixed!important;/*FF IE7*/
position:absolute;/*IE6*/
border:1px #A3A3A3 solid;
line-height: 30px;
background:#FFFFFF;
_top:       expression(eval(document.compatMode &&
            document.compatMode=='CSS1Compat') ?
            documentElement.scrollTop + (document.documentElement.clientHeight-this.offsetHeight)/2 :
            document.body.scrollTop + (document.body.clientHeight - this.clientHeight)/2);
}
#AllObjMsg a{
font-size:15px;
}
</style>
<input type="hidden" name="PREVURL" id="PREVURL" value="<?php echo $PREVURL;?>">
<div id="AllObjMsg"></div>
<iframe id="modalframe" style="display:none;" src="" height="450" width="830" style="border:0"></iframe>
</body>

</html>