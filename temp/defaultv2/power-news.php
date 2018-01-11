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
							<a href="<?php echo URL_NAV(CUTURL('power_news'));?>">文章列表</a>
						</div>

					    <div class="row">
							<a href="<?php echo URL_NAV('power_news-add');?>" class="btn btn-info" style="float:right;margin-bottom:10px 0;">添加文章</a>
							
							<div class="span12">
								 <ul class="unstyled" id="themeFilterableNav" style="float:left;">
								 <select name="cat_id" id="cat_id" data-rel="chosen" onchange="top.location.href='?r=power_news_catid-'+this.value;">
										<option value="0">选择分类</option>
										<?php if($cat_list){
										foreach($cat_list as $k=>$v) { ?>
											<option value="<?php echo $v[cat_id];?>" <?php if($KEYS[catid]==$v['cat_id']){?>selected<?php } ?>><?php echo $v[keyword];?><?php echo $v[cat_name];?></option>
										<?php }
											}
										?>
									</select>
								</ul>
							</div>
					  </div>

						<h4>
						</h4>
                        <div class="clearboth" style="margin:0px 0px 0px 5px;"></div>
                       
						<table class="table table-striped table-bordered">
						<thead>
						<tr>
						<th>序号</th>
						<th>标题英文</th>
						<th>标题中文</th>
						<th>添加时间</th>
						<th>状态</th>
						<th>操作</th>
						</tr>
						</thead>
						<tbody>
	
				<?php if($result[result]){?>
					<?php foreach($result[result] as $v){?>	
						<tr id="lists_<?php echo $v[article_id];?>">
							<td><?php echo $v[article_id];?></td>
							<td><?php echo $v[title];?></td>
							<td><?php echo $v[title_cn];?></td>
							<td><?php echo date('Y年m月d日',strtotime($v[add_time]));?></td>
							<td><?php if($v[is_show]!=1){?><font color=red>隐藏</font><?php }else{ ?><font color=green>显示</font><?php } ?></td>
							<td align="center">
							<a href="<?php echo URL_NAV('power_'.$r[2].'-edit_'.$v[article_id]);?>" class="button_mini orange bcolor">编辑</a>
							<a href="javascript:;" onclick="delval(<?php echo $v[article_id];?>);" class="button_mini dark bcolor">删除</a>
							</td>
						</tr>
					<?php } ?>
				<?php }else{ ?>
					<tr>
						<td colspan="6" class="center">内容为空!</td>
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
		act:'delptrainnews',
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