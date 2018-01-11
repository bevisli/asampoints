<?php
	/************news模块**********/

	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}
	//会员退出
	set_session('power_id','');
	set_session('power_name','');
	set_session('power_nice','');
	set_session('power_email','');
	set_session('group_id','');
	echo "<script>top.location.href='/'</script>";
	exit();
?>