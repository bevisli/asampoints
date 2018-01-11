function vipalert(title,context){
			BootstrapDialog.show({
	                    title: title,
	                    message:context
	        });
}
function vipajax(act,title){
	$.post("/ajax/", {
			model: 'vip',
			act: act
		},
		function(data, status) {
			if(data){
				vipalert(title,data);
			}else{
				vipalert("系统消息","出错了，请联系管理员");
			}

	});
}
function getvip(action){
	switch(action){
		case 1:
			var act="buyvip";
			vipajax(act,"购买VIP");
			break;
		case 2:
			var act="getpresentvip";
			vipajax(act,"领取VIP");
			break;
		case 3:
			var act="buyvip";
			vipajax(act,"续费");
			break;
		default:
			alert("操作出错");
			break;
	}

}



$(function(){
	//购买vip
	$(".imgbuy").click(function(){
		var money = $(".vipchecklogin").attr("value");
		vipalert('购买VIP', '<p><h5>所需花费：<span class="badge" style="background-color: #545ca6;width:80px;">99 汇币</span></h5></p><p><h5>账户现有：<span class="badge" style="background-color: #449d44;width:80px;">'+money+' 汇币</span></h5></p><p><span class="badge" style="background-color:#BDBDBD;font-weight:normal;line-height:18px;text-align:left;">购买提示：1.新购VIP，从购买之日起延长1年。<br />　　　　　2.VIP未过期的原过期时间延长1年。<br />　　　　　3.VIP已过期的购买之日起延长1年。</span></p><p style="pading:10px 20px;"><p><hr /><input type="button" onclick="getvip(1)" class="btn btn-primary" value="购买">	<input type="button"  class="btn" data-dismiss="modal" value="取消">');
	});
	//领取免费的vip
	$(".imgpresent").click(function(){
		vipalert('领取VIP', '<p><h4>消费满200汇币可领取一次免费会员。是否现在领取？</h4></p><p><span class="badge" style="background-color:#BDBDBD;font-weight:normal;line-height:18px;text-align:left;">领取提示：1.消费汇币满200的会员可以领取  。<br />　　　　　2.领取之日起+1年或者原未过期VIP结束日期+1年。</span></p><hr /><input type="button" onclick="getvip(2)" class="btn btn-primary" value="确定" >	<span class="mybutton" test="test"><input type="button" data-dismiss="modal" class="btn" value="取消"></span>');
	});
	//续费
	$(".renew").click(function(){
		var money = $(".vipchecklogin").attr("value");
		vipalert('续费', '<p><h5>所需花费：<span class="badge" style="background-color: #545ca6;width:80px;">99 汇币</span></h5></p><p><h5>账户现有：<span class="badge" style="background-color: #449d44;width:80px;line-height:18px;">'+money+' 汇币</span></h5></p><p style="pading:10px 20px;"><p><p><span class="badge" style="background-color:#BDBDBD;font-weight:normal;text-align:left;line-height:18px;">续费提示：1.VIP未过期的原过期时间延长1年。<br />　　　　　2.VIP已过期的购买之日起延长1年。</span></p><hr /><input type="button" onclick="getvip(3)" class="btn btn-primary" value="购买">	<input type="button"  class="btn" data-dismiss="modal" value="取消"  >');
	});
	//获取状态
	
	var vipstatus=$("#vipstatus").html();
	//alert(vipstatus);
});