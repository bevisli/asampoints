var thisdomain=document.domain;var sitedomain="http://"+thisdomain;function showDiv(obj){$(obj).show();center(obj);$(window).scroll(function(){center(obj)});$(window).resize(function(){center(obj)})}function center(obj){var windowWidth=document.documentElement.clientWidth;var windowHeight=document.documentElement.clientHeight;var popupHeight=$(obj).height();var popupWidth=$(obj).width();$(obj).css({"position":"absolute","top":(windowHeight-popupHeight)/2+$(document).scrollTop(),"left":(windowWidth-popupWidth)/2})}function inputtalk(val){$("#talk").val($("#talk").val()+" @"+val+" ")}function getchatdata(type,lid,lastid){$.get("/ajax/?act=getchattovideo&type="+type+"&lid="+lid+"&lastid="+lastid,function(data){if(data){var context=data.split("|||");$("#list-groups").prepend(context[0]);setTimeout('getchatdata("'+type+'","'+lid+'","'+context[1]+'")',3000)}})}function surevideoapply(datekey,s1){$.post("/ajax/",{act:"applyvideopayment",sid:datekey,s1:s1},function(data,status){if(data){BootstrapDialog.show({title:"报名提醒",message:data})}})}function surevideofollow(datekey){$.post("/ajax/",{act:"applyvideofollow",sid:datekey},function(data,status){if(data){BootstrapDialog.show({title:"订阅提醒",message:data})}})}$(function(){$(".applyvideo").click(function(){var datekey=$(this).attr("datekey");$.post("/ajax/",{act:"geivideoapplyinfo",sid:datekey},function(data,status){if(data){BootstrapDialog.show({title:"报名课程确认",message:data})}})});$(".followvideo").click(function(){var datekey=$(this).attr("datekey");$.post("/ajax/",{act:"followvideoapplyinfo",sid:datekey},function(data,status){if(data){BootstrapDialog.show({title:"订阅课程确认",message:data})}})});$("button[data-toggle=tooltip]").tooltip({html:"true"}).hover(function(e){e.preventDefault()});$("a[data-toggle=tooltip]").tooltip({html:"true"}).hover(function(e){e.preventDefault()});$("span[data-toggle=tooltip]").tooltip({html:"true"}).hover(function(e){e.preventDefault()});$("button[data-toggle=popover]").popover({html:"true"}).click(function(e){e.preventDefault()});$("span[data-toggle=popover]").popover({html:"true"}).click(function(e){e.preventDefault()});$("a[data-toggle=popover]").popover({html:"true"}).click(function(e){e.preventDefault()});$(".contactpop").click(function(){if($(".kefu").css("display")=="none"){showDiv(".kefu");$(".kefu").hide();showDiv(".kefu")}else{$(".kefu").hide()}});$(".dropdown-menu").click(function(e){e.stopPropagation()});var ctimer=0;$(".messagebox").hover(function(){$(".messages").show()},function(){ctimer=setTimeout(function(){$(".messages").hide()},300)});$(".messages").mouseover(function(){clearTimeout(ctimer)});$(".set-readed").click(function(){$.post(sitedomain+"/ajax/",{act:"clearmessages"},function(data,status){if(data){$(".sysmsgs li.unread").fadeOut();$(".red-dot").fadeOut();$(".sysmsgs li.dropdown-footer").before('<li class="unread"><dd href="javascript:;" class="message"><img class="message-image img-circle" src="/images/user_img.png"><div class="message-body"><center>暂无任何消息</center></div></dd></li>')}else{showalert(1,"请重试！")}})});$(".talkclick").click(function(){var typearr=$(this).attr("date").split("_");if($("#msgboxs").length>0){$("#msgboxs").html('<img src="/images/loading.gif"> 加载中请稍候...')}else{$("#list-groups").prepend('<li class="list-group-item" id="msgboxs"><img src="/images/loading.gif"></li>')}$.post("/ajax/",{act:"chattovideo",sid:$("#talk").val(),for_type:typearr[0],for_lid:typearr[1]},function(data,status){if(data){setTimeout('$("#msgboxs").remove()',1000);$("#talk").val("")}else{$("#msgboxs").html('<span class="text-danger"><i class="glyphicon glyphicon-remove "></i> 发言失败！</span>')}})})});