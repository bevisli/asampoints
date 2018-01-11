<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><style>
/*********************
  TopMenu, Top-Panel
*********************/
#top-lists{height:45px;border:0px;background-color:#FFFFFF;margin:0px;padding:0px;}
#panel {width:50%;float:left;margin:0px;padding:0px;}
#top-list-add {width:50%;float:right;border:0px;}
#top-list-add ul{margin:0px;padding:0px;border:0px;}
#top-list-add ul li{float:right;margin:2px 4px;text-decoration:none;list-style-type:none;}
#top-list-add ul li.enter{padding:0px;}
#top-list-add ul li.enternone{padding:3px;}
#top-list-add ul li a{display:block;padding:4px 8px;}
#top-list-add ul form{margin:0px;padding:0px;}
#top-list-add ul .enterinput input{cursor:pointer;border:1px solid #d6d6d6;border-radius:4px;margin:0px;padding:1px 5px;background:#FFFFFF;height:24px;line-height:24px;font-size:12px;color:rgb(55, 91, 145);}
.current{
	font-weight:bold;
}
#top-panel{
	border:1px solid #eee;
	background:#FFF;
	margin-bottom:10px;
	height:32px;
	line-height:32px;
	float:left;
	width:100%;
}
#showmanage{display:none;border:1px solid #eeeeee;background-color:#F3F3FB;width:620px;height:60px;font-size:12px;}
#showmanage a{margin:1px 1px;text-decoration:none;display:inline-block;height:14px;line-height:14px;}
#panel ul{
	list-style:none;
}
#panel ul li{
	height:28px;
	line-height:28px;
	padding:10px;
	display:inline;
}
#panel ul li a{
	height:28px;
	line-height:28px;
	padding-left:19px;
	text-decoration:none;
	margin:0 3px;
	font-size:14px;
	display:inline-block;
}
#panel a:hover{
	text-decoration:underline;
}
.pagenew {
background: transparent url(../images/icons/fastforward.gif) no-repeat left;
}
#total_tiao {
color: #F24024;
}
.fontorange{
color: #F24024;
}
.fontorange a{
color: #F24024;
}
</style>
        <div class="container-fluid">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
						<div class="alert alert-info">
							<a href="<?php echo URL_NAV(CUTURL('power_users'));?>">文章列表</a>
						</div>
					<table class="table table-striped">
								  <thead>
									  <tr>
										  <th>ID</th>
                                          <th>用户</th>
										  <th>手机</th>   
										  <th>地址</th> 
										  <th>加入时间</th>    
										  <th>操作</th>                                   
									  </tr>
								  </thead>   
								  <tbody>
								<?php if($result[result]){?>
								<?php foreach($result[result] as $k=>$v){?>
									<tr>
										<td><?php echo $v[user_id];?></td>
                                        <td><?php echo $v[user_name];?></td>
										<td><?php echo $v[user_mobile];?></td>   
										<td><?php echo $v[express_address];?></td>  
										<td><?php echo date('Y-m-d H:i',strtotime($v[reg_time]));?>点</td>  
										<td><a href="<?php echo URL_NAV('power_product_'.$v[user_id]);?>" target="_blank">查看寄件</a>
										</td>                                    
									</tr>
								<?php } ?>
								<?php }else{ ?>
									<tr>
										<td colspan="6">
											<center>暂无会员</center>
										</td>                                       
									</tr>
								<?php } ?>				                                  
								  </tbody>
							 </table>  


						<div class="clear"></div>
						
						<div class="wp-pagenavi clearfix">
							<div class="pagination pagination-left" style="text-align:center;">
								<?php  require("module/page.php");?>
							</div>
						</div><!--/ .wp-pagenavi-->

						<div class="clear"></div>

                    </div>
                    
                	<div class="clearboth"></div>
                </div>
            </div>
        </div>
		
<script>
function delval(val){
	showalert(0,"确定要删除吗？<br /><a href='javascript:;' onclick='delvaldo("+val+");'>确定</a> 　 <a href='javascript:;' onclick='hiddendiv();'>取消</a>");
}
function delvaldo(val){
	  $.post("/ajax/",
	  {
		act:'delptrainproduct',
		sid:val
	  },
	  function(data,status){
		  if(data){
			showalert(1,data);
			$('#lists_'+val).fadeOut();
		  }else{
			showalert(1,'删除失败！');
		  }
	  });
}
</script>