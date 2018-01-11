<?php if(!defined('HUISHI_SOFT_IN')) exit('Access Denied'); ?><ul class="pagination">
<?php if($result['countpage']>0){?>
	<li><a class="upPage"  href="<?php echo $baseUrl.$_SERVER_PHP_SELF.$result['preurl'];?>">PREV</a></li>
		<?php if($first_page==1){?>
			<li <?php if($result['page']==1||!$result['page']){?> class="active" <?php }?>><a href="<?php echo $baseUrl.$_SERVER_PHP_SELF.$result['nopage'].'1' ;?>" ><?php echo '1';?></a></li>
		<?php }?>
		<?php for($i=$start_page;$i<=$end_page;$i++){?>
			<li <?php if($i==$result['page']){?> class="active" <?php }?>><a <?php if($i==$result['page']){?> class="now" <?php }?> href="<?php echo $baseUrl.$_SERVER_PHP_SELF.$result['nopage'].$i;?>" ><?php echo $i;?></a></li>
		<?php }?>
		<?php if($last_page==1){?>
			<li><a href="<?php echo $baseUrl.$_SERVER_PHP_SELF.$result['nopage'].$result['countpage'];?>" ><?php echo  $result['countpage'];?></a></li>
		<?php }?>
	<li><a class="nextPage" href="<?php echo $baseUrl.$_SERVER_PHP_SELF.$result['nexturl'];?>" >NEXT</a></li>
<?php }?>
</ul>