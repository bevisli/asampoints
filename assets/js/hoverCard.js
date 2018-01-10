var thisdomain=document.domain;
var sitedomain="http://"+thisdomain;
$(function(){
	bindHoverCard();
});
bindHoverCard=function () {
    var isHover = false;
    var showHoverCard,removeHoverCard,CurrentCard;
	var selector=$(".my_huishi_card");//要绑定的对象
	
    selector.off("mouseover").on("mouseover", function () {
        if (CurrentCard) CurrentCard.remove();
        if (removeHoverCard) clearTimeout(removeHoverCard);
        if (showHoverCard) clearTimeout(showHoverCard);
		//显示名片
        showHoverCard = setTimeout(hoverCardBuilder($(this)), 300);
    });
    selector.off("mouseout").on("mouseout", function () {
        if (!isHover) {
            clearTimeout(showHoverCard);
        } else if(CurrentCard) {
			removeCard();
			CurrentCard.hover(function () {
				clearTimeout(removeHoverCard);
			}, function () {
				removeCard();
			});
        }
        isHover = false;
    });
	//删除名片
	removeCard=function(timer){
		removeHoverCard = setTimeout(function () { CurrentCard.remove() }, timer||600);
	}
	//构建名片DOM
	hoverCardBuilder=function (hoverObject) {
		if (!isHover) {
			isHover = true;
			var bmHoverCard = $("<div>").addClass("bm_hover_card").css({ 
			top: hoverObject.offset().top + hoverObject.height()-5,
			left: hoverObject.offset().left+ hoverObject.width()/2-97});
			var bmHoverCardArrow = $("<div>").addClass("bm_hover_card_arrow");
			var bmHoverCardBorder = $("<div>").addClass("bm_hover_card_border");
			var bmLoading = $("<img>").attr({ "border": "0", "src": "/assets/images/transparent.gif" }).addClass("loading")
			var bmHoverCardBefore = $("<div>").addClass("bm_hover_card_before");
			var bmHoverCardContainer = $("<div>").addClass("bm_hover_card_container").html(bmHoverCardBefore);
			bmHoverCard.append(bmHoverCardArrow).append(bmHoverCardBorder).append(bmHoverCardContainer);				
			/**插入DOM**/
			$("body").prepend(bmHoverCard);
			
			CurrentCard=$(".bm_hover_card");

			/**获取数据
			*bm_user_id为用户id，用于查询用户信息
			**/
			if (hoverObject.attr("hs_uid")) {	
				$.ajax({
					url:sitedomain+"/ajax/",
					type:"get",
					data:{act:'getuserinfocard',sid:hoverObject.attr("hs_uid")},
					dataType:"html",
					timeout:8000,
					beforeSend:function(){
						bmHoverCardBefore.html(bmLoading);
					},
					success:function(data){
						bmHoverCardContainer.html(data);
						addfriendclick('.addfolloweall','data-id','add_followed','had_followed',2);
					},
					error:function(){
						bmHoverCardBefore.html("读取错误");
					}
				});
			} else {
				bmHoverCardBefore.html("缺少查询参数");
			}
		}
	}
};
