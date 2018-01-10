function coursealert(title,context){
			BootstrapDialog.show({
	                    title: title,
	                    message:context
	        });
}
function booksure(cid){//预约课程
	var classtime=$(".classtime").val();
	if(classtime.length>30){
		coursealert('系统消息','您学习的时间太长了，请重新输入上课时间或者留空！<hr><a class="btn btn-primary" href="javascript:;" data-dismiss="modal">确定</a>');
		return ;
	}
	$.post("/ajax/", {
				model: "course",
				act: "booksure",
				cid:cid,
				classtime:classtime
			},
			function(data, status) {
				if(5==data['result']){//成功
					coursealert('系统消息',data['message']);
					$(".book").addClass("disabled");
					$(".isbook").html("已预约");
				}else{
					coursealert('系统消息',data['message']);
				}
	},"json");
}
function checkbook(){

}
$(function(){
	$(".book").click(function(){//点击预约
			var mymoney=$(".isbook").attr("mymoney");
			var courseid=$(".book").attr("course");
			$.post("/ajax/", {
				model: "course",
				act: "checklogin",
				courseid:courseid
			},
			function(data, status) {
				if(data){//成功
					coursealert('系统消息',data);
				}else{
					coursealert('系统消息','出错了');
				}
			});
		});
	

});