<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?>			<style>
			span.order_id,span.order_cp,span.order_info,span.order_paytype,span.order_name,span.order_city,span.order_address,span.order_time{
				display:block;
				font-size:12px;
			}
			.label{
				padding: 2px 5px;
				border-radius: 0px;
			}
			.btn {
				padding: 2px 5px;
				text-transform: uppercase;
				margin: 0;
				border: none;
				border-radius: 0px;
			}
			a.btn_info {
				color: #ffffff;
				background-color: #5bc0de;
				border-color: #46b8da;
			}
			a.btn_success{
				color: #ffffff;
				background-color: #4CAF50;
				border-color: #4CAF50;
			}
			a.btn_warm{
				color: #ffffff;
				background-color: #F38066;
				border-color: #F38066;
			}
			tt{
				color: #ffffff;
				display:inline-block;
				background-color: red;
				padding:1px 2px;
			}
			.grey_section {
				border-top: 1px solid #d7d7d7;
				border-bottom: 0px;
				margin-bottom:0px;
			}
			</style>
				
			<!-- content -->
<div class="panel panel-default">
	<div class="panel-heading">
		<span class="hidden-xs">订单列表</span>
	</div>
	<div class="panel-body">
	<table class="table">
				  <thead>
					  <tr>
						  <th>订单号</th>
						  <th>订单信息</th>
						  <th>状态</th>                                          
					  </tr>
				  </thead>   
				  <tbody>
				<?php if($result[result]){?>
				<?php foreach($result[result] as $k=>$v){?>
					<tr>
						<td>
							<?php echo $v[pro_newid];?>
						</td>
						<td>
							<span class="order_paytype"><b>收件人信息</b></span>
							<span class="order_name"><b>姓名:</b><?php echo $v[pro_username];?> <b>电话:</b><?php echo $v[pro_usermobilecode];?> <?php echo $v[pro_usermobile];?></span>
							<span class="order_name"><b>备用手机号:</b><?php echo $v[pro_usersentgetmobile1];?> </span>
							<span class="order_city"><b>物品信息:</b> <b>物品</b>[<?php echo $v[pro_usersentbrand];?>] <b>数量</b>[<?php echo $v[pro_usersentnum];?>] <b>重量</b>[<?php echo $v[pro_usersentweight];?>]</span>
							<span class="order_address"><b>收件地址:</b><?php echo $v[pro_useraddress];?></span>
						</td>
						<td>
							<?php if($v[status]=='1'){?>
								<span class="label label-info">已发货</span><br />
								<a href="javascript:;" class="ajaxget" data-id="<?php echo $v[pro_newid];?>">
									查看物流状态
								</a>
							<? }else if($v[status]=='2'){?>
								<span class="label label-success">订单已完成</span><br />
								<a href="javascript:;" class="ajaxget" data-id="<?php echo $v[pro_newid];?>">
									查看物流状态
								</a>
							<? }else if($v[status]=='3'){?>
								<span class="label label-danger">已取消</span>
							<?php }else{ ?>
								<span class="label label-default">等待发货中</span>
							<?php } ?>
						</td>                                       
					</tr>
				<?php } ?>
				<?php }else{ ?>
					<tr>
						<td colspan="3">
							<center>暂无订单</center>
						</td>                                       
					</tr>
				<?php } ?>			                                  
				  </tbody>
			 </table>
			<div class="clear"></div>
			
			<section id="pagination" class="grey_section">
				<div class="row">
					<div class="col-sm-12 text-center">
					<?php  require("module/page.php");?>
					</div>
				</div>
			</section>
	</div>
</div>
			


			<!-- eof content -->

			<script src="/js/jquery1.11.3.min.js"></script>
			<script>
				$(document).ready(function(){ 
					$('.ajaxget').click(function(){ 
						var dataid=$(this).attr('data-id');
						$.get("/tracking/?act=ajaxget&dataid="+dataid, function(data){
							BootstrapDialog.show({
								title: '物流信息',
								message: '<div>'+data+'<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div></div>'
							});
							$(this).html('查看物流状态');
						});
					});
				});
			</script>