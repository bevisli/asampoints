<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?>
<div class="structure-updated-main w100-l">

<header class="w100-l her">
	<div class="container">
    <div class="row">
    	<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 top-section pull-right both-side hidden-xs">
		<?php if($USER_INFO[user_id]){?>
			<a href="<?php echo URL_NAV('center');?>" style="margin-right:8px;">欢迎：<?php echo $USER_INFO[user_name];?></a> | <a href="<?php echo URL_NAV('logout');?>" class="top-login">退出登录</a>
		<?php }else{ ?>
			<a href="javascript:;" class="top-register" onclick="registration()">注册</a> | <a href="javascript:;" class="top-login" onclick="loginsend()">登录</a>
		<?php } ?>
			<a href="?lg=cn" class="top-china">中文</a>|<a href="?lg=en" class="top-eng">ENGLISH</a>
        </div><!-- /.top-section -->
        <div class="w100-l hhh">
        	<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 logo">
            	<a href="<?php echo URL_NAV('/');?>"><img src="<?php echo $SYSINFO['sys_logo'];?>" alt="<?php echo $SYSINFO['sys_name_cn'];?>"/></a>
            </div><!-- /.logo -->
            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12 navigation both-side">
            	<nav class="navbar navbar-default">
                  <div class="container-fluid both-side">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav">
						<?php if($SYSTEM_NAV){?>
							<?php foreach($SYSTEM_NAV as $k => $v){?>
							<?php if(count(explode('http:',$v['url']))>1){?>
								<li<?php if($SYSTEM_NAV_SELECTED==$v['short_order']){?> class="dropdown active"<?php } ?> ><a href="<?php echo $v['url'];?>" target="_blank"><?php echo $v['nav_name_cn'];?></a></li>
							<?php }else{ ?>
								<li<?php if($SYSTEM_NAV_SELECTED==$v['short_order']){?> class="dropdown active"<?php } ?> ><a href="<?php echo URL_NAV($v['url']);?>"><?php echo $v['nav_name_cn'];?></a></li>
							<?php } ?>
							<?php } ?>
						<?php } ?>
						<?php if($USER_INFO[user_id]){?>
							<li class="hidden-md hidden-lg"><a href="<?php echo URL_NAV('center');?>">欢迎：<?php echo $USER_INFO[user_name];?></a></li>
							<li class="hidden-md hidden-lg"><a href="<?php echo URL_NAV('logout');?>">退出</a></li>
						<?php }else{ ?>
							<li class="hidden-md hidden-lg"><a href="javascript:;" onclick="registration()">注册</a></li>
							<li class="hidden-md hidden-lg"><a href="javascript:;" onclick="loginsend()">登录</a></li>
						<?php } ?>
                        <!--li class="dropdown active"><a href="index.html">首页</a></li>
                        <li><a href="send.html">寄件</a></li>
                        <li><a href="search.html">查询</a></li>
                        <li><a href="point.html">网点</a></li>
                        <li><a href="news.html">资讯</a></li>
                        <li class="dropdown"><a href="our.html">我们</a></li-->
                      </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>
            </div><!-- /.navigation -->
        </div><!-- /.full-width -->
    </div><!-- /.row -->
    </div><!-- /.container -->
</header><!-- /.header -->