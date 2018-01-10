//弹窗
function bonusalert(title){
			BootstrapDialog.show({
	                    title: title
			});

}
//获取用户积分
function getuserscore() {
	$.post("/ajax/", {
				model: "bonus",
				act: "getuserscore"
			},
			function(data, status) {
				if(data){//成功
					$(".myscorespan").html(data);
				}
	});
}
function checklottery(){
	$.post("/ajax/", {
			model: "bonus",
			act: 'checklottery'
		},
		function(data, status) {
			if(data){
				bonusalert(data);
			}else{
				bonusalert('<div class="showdialogheader"><div class="isalert">出错了，请联系管理员</div><a class=" btn sure" href="javascript:;" data-dismiss="modal">确定</a><div>');
			}
	});
}
//抽奖
function lottery(){
	$("#issure").removeClass();
	$("#issure").addClass("issure");
	$.post("/ajax/", {
			model: "bonus",
			act: 'lottery'
		},
		function(data, status) {
			switch(data["result"]){
				case 2:
	           		$("#hand").rotate({ 
			               duration:3000, //转动时间 
			               angle: 0, 
			               animateTo:1800+data['angle'], //转动角度 
			               easing: $.easing.easeOutSine, 
			               callback: function(){ 
			               		$("#issure").addClass("issure"+data["pid"]).fadeOut(100).fadeIn(100).fadeOut(100).fadeIn(100);
			               		bonusalert(data['message']);
			               		getuserscore();
			               } 
	           		}); 
					break;
				default:
				    bonusalert(data['message']);
					break;
			}
	},"json");
}	
//使用小红包
function usebonus() {
	$.post("/ajax/", {
						model: "bonus",
						act: "bonus"
					},
					function(data, status) {
						bonusalert(data['message']);
						if(1==data['result']){
							var bnum = parseInt($("#bnum").html());
							if(bnum>0){
								$("#bnum").html(bnum-1);
								getuserscore();
							}
						}
						
			},"json");
}
//兑换大红包
function exchangetobig() {
	$.post("/ajax/", {
				model: "bonus",
				act: "exchangetobig"
			},
			function(data, status) {
				bonusalert(data['message']);
				if(1==data['result']){//成功
					var bnum = parseInt($("#bnum").html());
					if(bnum>0){
						$("#bnum").html(bnum-5);
						getuserscore();
					}
				}
	},"json");
}

//网页加载后运行
$(function(){ 
    //使用小红包
    $(".usebutton").click(function(){
    	bonusalert('<div class="showdialogheader"><div class="isalert">是否使用小红包？</div><a class=" btn sure" href="javascript:;" onclick="usebonus();" data-dismiss="modal">是</a><a class=" btn cancel" href="javascript:;" data-dismiss="modal">否</a><div>');
    	//usebonus();
	});
	//兑换大红包
	$(".tobigbutton").click(function(){
		bonusalert('<div class="showdialogheader"><div class="isalert">是否兑换大红包</div><a class=" btn sure" href="javascript:;" onclick="exchangetobig();" data-dismiss="modal">是</a><a class=" btn cancel" href="javascript:;" data-dismiss="modal">否</a><div>');
	});
	//兑换大红包
	$(".tobigbuttongrey").click(function(){
		bonusalert('<div class="showdialogheader"><div class="isalert">您的红包不足5个！</div><a class=" btn sure" href="javascript:;" data-dismiss="modal">确定</a><div>');
	});
	//抽奖
    $("#lottery").click(function(){ 
       checklottery(); 
   }); 

    //显示每日鸿运
    $(".daylucky").click(function(){ 
    	$(".mylucky-list").addClass('hide');
    	$(".mylucky").removeClass('myluckyactive');
        $(".daylucky-list").removeClass('hide');
        $(".daylucky").addClass('dayluckyactive');
   });
     //显示我的抽奖记录
    $(".mylucky").click(function(){ 
       $(".daylucky-list").addClass('hide');
       $(".daylucky").removeClass('dayluckyactive');
       $(".mylucky-list").removeClass('hide');
       $(".mylucky").addClass('myluckyactive');
       
   });
    //无缝滚动
	$(function () {
		  $('#demousers').scrollbox({speed:'30',delay:'2'});
	});
	//获取用户积分
	getuserscore();

}); 
