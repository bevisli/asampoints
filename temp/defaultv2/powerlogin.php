<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title><?php echo $SYSINFO['sys_name'];?>-<?php echo $SYSTEM_TITLE;?></title>
		<base href="<?php echo $baseUrl;?>" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="Matrixadmin/css/bootstrap.min.css" />
		<link rel="stylesheet" href="Matrixadmin/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="Matrixadmin/css/matrix-login.css" />
        <link href="Matrixadmin/font-awesome/css/font-awesome.css" rel="stylesheet" />
	</head>
<body>
        <div id="loginbox">            
            <form method="post" action="<?php echo URL_NAV('powerlogin');?>" class="contact-form" id="contactform" />
			<input type="hidden" name="act" value="login">
				 <div class="control-group normal_text"> <h3><img src="uploadfiles/logo/2016/08/09/2016080906303020.png" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" name="required_id" placeholder="登录账户" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="required_pw" placeholder="密码" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
					<span style="padding-left:20px;color:#fff;">Copyright &copy; Freitex 2016</span>
                    <span class="pull-right"><input type="submit" class="btn btn-success" value="登 录" /></span>
                </div>
            </form>
        </div>
        <script src="Matrixadmin/js/jquery.min.js"></script>  
        <script src="Matrixadmin/js/matrix.login.js"></script> 
    </body>
</html>