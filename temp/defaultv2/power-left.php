<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone" id="tbdh"></a>
	<ul id="item">
	<?php  foreach($POWER_NAV as $k => $v){?>
		<li <?php if($v['url']=='power_'.$r[2]){?>class="active"<?php }else{?>class=""<?php }?>  data-content="<?php echo $v['url'];?>" >
			<a href="<?php echo URL_NAV($v['url']);?>">
				<i><img src="img/ad/<?php echo $v['url'];?>.png"></i>
				<span><?php echo $v['subject'];?></span>
			</a>
		</li>
	<?php }?>
	</ul>
</div>
<!--sidebar-menu-->
<script>
$(document).ready(function(){
	$("#item").each(function(index, element) {
		$("#tbdh").html($("#sidebar ul li.active a").html());
	});
});
</script>