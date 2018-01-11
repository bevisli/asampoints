<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST'){
		//删除会员以前的头像
		if(file_exists($MemberFace)) {
			unlink($MemberFace);
		}
		$MemberFace = sliceBanner("cuteboy");
		echo $MemberFace;
//		//此处根据自己的程序代码自行调整		
//		$table = "member"; //数据表名称
//		$MemberUser = "cuteboy"; //会员名字
//		mysql_query("UPDATE ".$table." SET MemberFace='".$MemberFace."' Where MemberUser = '".$MemberUser."'");
//		echo "<script>alert('头像修改成功!');location.href='index.php';<\/script>");
		
		exit;
	}
	
	function sliceBanner($UserName){
		$x = (int)$_POST['x'];
		$y = (int)$_POST['y'];
		$w = (int)$_POST['w'];
		$h = (int)$_POST['h'];
		$pic = $_POST['src'];
		
		//剪切后小图片的名字
		$str = explode(".",$pic);//图片的格式
		$type = $str[1]; //图片的格式
		$filename = $UserName."_".date("YmdHis").".". $type; //重新生成图片的名字
		$uploadBanner = $pic;
		$sliceBanner = "upload/face/".$filename;//剪切后的图片存放的位置
		
		//创建图片
		$src_pic = getImageHander($uploadBanner);
		$dst_pic = imagecreatetruecolor($w, $h);
		imagecopyresampled($dst_pic,$src_pic,0,0,$x,$y,$w,$h,$w,$h);
		imagejpeg($dst_pic, $sliceBanner);
		imagedestroy($src_pic);
		imagedestroy($dst_pic);
		
		//删除已上传未裁切的图片
		if(file_exists($uploadBanner)) {
			unlink($uploadBanner);
		}
		//返回新图片的位置
		return $sliceBanner;
	}
	//初始化图片
	function getImageHander ($url) {
		$size=@getimagesize($url);
		switch($size['mime']){
			case 'image/jpeg': $im = imagecreatefromjpeg($url);break;
			case 'image/gif' : $im = imagecreatefromgif($url);break;
			case 'image/png' : $im = imagecreatefrompng($url);break;
			default: $im=false;break;
		}
		return $im;
	}
?>
