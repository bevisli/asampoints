<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><style>
.span-ico {
    margin-right: 10px;
}
li {
    list-style: none;
}
.user-nav{
	padding: 15px 15px;
	background-color: #fff;
	border: 1px solid #e8e8e8;
	border-radius: 3px;
	margin-bottom: 30px;
}
.user-nav ul{
	margin: 0px 0px 15px 0px;
	padding: 0;
}

.user-nav-list2 li{
	margin: 0px;
	padding: 0;
	margin-bottom: 12px;
}
.user-nav-list2 a:hover,.user-nav-list2 a:focus{
	background-color: #ff6633;
	color: #fff;
}
.user-nav-list2{
	line-height: 40px;
}
.user-nav h4{
	margin: 20px 0;
}
.user-nav-list2 a{
	display: block;
	background-color: #FFF;
	border: 1px solid #ff6633;
	color: #ff6633;
	border-radius: 0px;
}
.user-nav-list2 .active a{
	display: block;
	background-color: #ff6633;
	color: #fff;
}
.user-nav-list2 .border-bottom{
	border-bottom: 1px solid #fff;
}
</style>
<ul class="row  user-nav-list2 text-center ">
	<li class="col-lg-12 border-bottom <?php if($r[2]=='info'){?>active<?php } ?>">
		<a href="<?php echo URL_NAV('center_info');?>" id="info">
			<span class="glyphicon glyphicon-user span-ico"></span>My information
		</a>
	</li>
	<li class="col-lg-12 col-xs-4 border-bottom <?php if($r[2]=='order'){?>active<?php } ?>">
		<a href="<?php echo URL_NAV('center_order');?>" id="order">
			<span class="glyphicon glyphicon-list-alt span-ico"></span>My Order
		</a>
	</li>
	<li class="col-lg-12 col-xs-4 border-bottom <?php if($r[2]=='usd'){?>active<?php } ?>">
		<a href="<?php echo URL_NAV('center_usd');?>" id="usd">
			<span class="glyphicon glyphicon-usd span-ico"></span>My account
		</a>
	</li>
</ul>