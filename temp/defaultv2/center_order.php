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
		<span class="hidden-xs">Order list</span>
	</div>
	<div class="panel-body">
	<table class="table">
				  <thead>
					  <tr>
						  <th>Order number</th>
						  <th>Order information</th>
						  <th>State</th>                                          
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
							<span class="order_paytype"><b>Recipient information</b></span>
							<span class="order_name"><b>name:</b><?php echo $v[pro_username];?> <b>mobile:</b><?php echo $v[pro_usermobilecode];?> <?php echo $v[pro_usermobile];?></span>
							<span class="order_name"><b>Spare cell phone number:</b><?php echo $v[pro_usersentgetmobile1];?> </span>
							<span class="order_city"><b>Item information:</b> <b>goods</b>[<?php echo $v[pro_usersentbrand];?>] <b>quantity</b>[<?php echo $v[pro_usersentnum];?>] <b>weight</b>[<?php echo $v[pro_usersentweight];?>]</span>
							<span class="order_address"><b>Recipient address:</b><?php echo $v[pro_useraddress];?></span>
						</td>
						<td>
							<?php if($v[status]=='1'){?>
								<span class="label label-info">Shipped</span><br />
								<a href="javascript:;" class="ajaxget" data-id="<?php echo $v[pro_newid];?>">
									View the logistics status
								</a>
							<? }else if($v[status]=='2'){?>
								<span class="label label-success">The order is complete</span><br />
								<a href="javascript:;" class="ajaxget" data-id="<?php echo $v[pro_newid];?>">
									View the logistics status
								</a>
							<? }else if($v[status]=='3'){?>
								<span class="label label-danger">Cancelled</span>
							<?php }else{ ?>
								<span class="label label-default">Wait for delivery...</span>
							<?php } ?>
						</td>                                       
					</tr>
				<?php } ?>
				<?php }else{ ?>
					<tr>
						<td colspan="3">
							<center>No orders</center>
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