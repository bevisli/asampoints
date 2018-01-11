var ccount=0;
var pcount=0;
function init() {
		clip = new ZeroClipboard.Client();
		clip.setHandCursor( true );
		clip.setText( $('#fe_text').html() );
		clip.addEventListener('complete', function (client, text) {
			showalert(1, '复制成功');
		});
		clip.glue('d_clip_container', 'd_clip_container' );
		$(".popover").show();
		
}
function commentReply(){
		$(".commentReply").click(function() {
			var datauid = $(this).attr("data-userid");
			var datauname = $(this).attr("data-username");
			UE.getEditor('inputor').setContent(UE.getEditor('inputor').getContent()+$("#inputor").val()+' @'+datauname);
		});
}
function postaskComment(){
		if(pcount>0){
			UE.getEditor('inputor').destroy();
		}else{
			pcount=pcount+1;
		}
		var uW=UE.getEditor('inputor', {
				initialFrameWidth:"100%",
				initialFrameHeight:"100"
		});		
		uW.addListener('ready', function(editor){
			$(this.document.body).atwho(at_config);
		});
		$(".postComment").click(function() {
			var thisone = $(this);
			var dataid = $(this).attr("data-id");
			var dataaid = $(this).attr("data-aid");
			if(!UE.getEditor('inputor').getContent()){
				showalert(1, '请认真填写回复或者追问内容！');
				return;
			}
			$('.widget-comments__form').before('<img src="/images/loading.gif" class="loadingtips">');
			thisone.text('添加中').attr('disabled',true);
			$.post(sitedomain +"/ajax/", {
				act: 'questionsawaddcomment',
				sid: dataid,
			dataaid: dataaid,
			context: UE.getEditor('inputor').getContent()
			}, function(data, status) {
				if (data) {
					$('.loadingtips').remove();
					$('.widget-comments__form').before(data);
					$('.atool'+dataaid).find('span').html(parseInt($('.atool'+dataaid).find('span').html())+1);
					UE.getEditor('inputor').setContent('');
					thisone.text('添加评论').attr('disabled',false);
				} else {
					$('.loadingtips').remove();
					thisone.text('添加评论').attr('disabled',false);
				}
			});
		});
		//提交回答
		$(".postedit").click(function() {
			var thisone = $(this);
			var dataid = $(this).attr("data-id");
			var qid = $(this).attr("qid");
			if(!UE.getEditor('inputor').getContent()){
				showalert(1, '请认真填写回答的内容！');
				return;
			}
			$('.widget-comments__form').before('<img src="/images/loading.gif" class="loadingtips">');
			thisone.text('提交中').attr('disabled',true);
			$.post("/ajax/", {
				model:'questions',
				act: 'postedit',
				aid: dataid,
				qid:qid,
				a_content: UE.getEditor('inputor').getContent()
			}, function(data, status) {
				if (data) {
					$('.loadingtips').remove();
					$('.widget-comments__form').before(data);
					UE.getEditor('inputor').setContent('');
					thisone.text('提交修改').attr('disabled',false);
				} else {
					$('.loadingtips').remove();
					thisone.text('提交修改').attr('disabled',false);
				}
			});
		});

}
function questionsuseanswer(v1,v2) {
	if(v1&&v2){
		$.post(sitedomain +"/ajax/", {
			act: 'questionsuseanswerdo',
			sid: v1,
			dataaid: v2
		}, function(data, status) {
			if (data) {
				if(data=='采纳成功'){
					$('.modal-backdrop').remove();
					$('.bootstrap-dialog').remove();
					$('#a'+v2).find('.accepted-flag').removeClass('hide');
					$('.useanswer').remove();
				}else{
					BootstrapDialog.show({title:'采纳回答',message:data});
				}
			} else {
				BootstrapDialog.show({title:'采纳回答',message:'采纳失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
			}
		});
	}
}
function commentreportthis(){
		$(".commentreport-this").click(function() {
			var dataaid = $(this).attr("data-aid");
			var dataid = $(this).attr("data-id");
			var datatype = $(this).attr("data-type");
			$.post(sitedomain +"/ajax/", {
				act: 'questionsreport',
				sid: dataid,
				dataaid: dataaid,
				datatype: datatype
			}, function(data, status) {
				if (data) {
					BootstrapDialog.show({title:'举报问题',message:data});
				} else {
					BootstrapDialog.show({title:'举报问题',message:'举报失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
				}
			});
		});
}
function delquestionoranswer(dataaid,dataid,datatype){
	var deleteDesc=$('#deleteDesc').val();
	if(!deleteDesc){
		$('#deleteDesc').focus();
		return;
	}
	$.post(sitedomain +"/ajax/", {
		act: 'questionsdelit',
		sid: dataid,
		dataaid: dataaid,
		datatype: datatype,
		deleteDesc: deleteDesc
	}, function(data, status) {
		if (data) {
			if(datatype=='answer'&&data=='删除成功'){
				$('#a'+dataaid).remove();
				$('.modal-backdrop').remove();
				$('.bootstrap-dialog').remove();
			}else{
				BootstrapDialog.show({title:'删除操作',message:data});
			}
		} else {
			BootstrapDialog.show({title:'删除操作',message:'删除失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
		}
	});
}

function closequestion(dataid){
	$.post(sitedomain +"/ajax/", {
		model: 'questions',
		act: 'questionscloseit',
		sid: dataid
	}, function(data, status) {
		if (data) {
			if(data=='关闭成功'){
				$('#questionTitle').append('<span class="badge bg-grey">已关闭</span>');
				$('.modal-backdrop').remove();
				$('.bootstrap-dialog').remove();
			}else{
				BootstrapDialog.show({title:'关闭操作',message:data});
			}
		} else {
			BootstrapDialog.show({title:'关闭操作',message:'关闭失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
		}
	});
}

function createedittags(tid) {
	if(Q_USER_EXP<Q_TAGS_EDIT){
		BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_TAGS_EDIT+'才能编辑标签！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
		return;
	}
	if(tid){
		$.post(sitedomain +"/ajax/", {
			act: 'questionsedittags',
			sid: tid
		}, function(data, status) {
			if (data) {
				BootstrapDialog.show({title:'编辑标签',message:data});
			}else{
				BootstrapDialog.show({title:'编辑标签',message:'服务器有点烦躁。'});
			}
		});
	}
}
function topquestion(tid,ttype){
	$.post(sitedomain +"/ajax/", {
		act: 'questionsworry',
		sid: tid
	}, function(data, status) {
		if (data) {
			BootstrapDialog.show({title:'系统提示',message:data});
		} else {
			BootstrapDialog.show({title:'系统提示',message:'申请失败！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
		}
	});
}
function edittag(tid){
	var tagName = $('#tagName').val();
	var tagText = $('#tagText').val();
	var tagWhy = $('#tagWhy').val();
	if(!tagName){
		$('#tagName').focus();
	}else if(!tagText){
		$('#tagText').focus();
	}else if(!tagWhy){
		$('#tagWhy').focus();
	}else{
		$.post(sitedomain +"/ajax/", {
			act: 'questionsedittagsse',
			sid: tid,
			tagName: tagName,
			tagText: tagText,
			tagWhy: tagWhy
		}, function(data, status) {
			if (data) {
				BootstrapDialog.show({title:'编辑标签',message:data});
			}else{
				BootstrapDialog.show({title:'编辑标签',message:'服务器有点烦躁。'});
			}
		});
	}
}
function questionsreportdo(v1,v2,v3) {
	if(v1&&v3){
		$.post(sitedomain +"/ajax/", {
			act: 'questionsreportdo',
			sid: v1,
			dataaid: v2,
			datatype: v3,
			Desc: $('input[name="descRadio"]:checked').val(),
			Desc911: $('#Desc911').val()
		}, function(data, status) {
			if (data) {
				BootstrapDialog.show({title:'举报问题',message:data});
			} else {
				BootstrapDialog.show({title:'举报问题',message:'举报失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
			}
		});
	}
};(function($) {
    $.extend({
        tipsBox: function(options) {
            options = $.extend({
                obj: null,
                str: "<b style='font-family:Microsoft YaHei;'>+1</b>",  
                startSize: "12px", 
                endSize: "42px",
                interval: 600,
                color: "red",
                callback: function() {}
            }, options);
            $("body").append("<span class='num'>"+ options.str +"</span>");
            var box = $(".num");
            var left = options.obj.offset().left + options.obj.width() / 2;
            var top = options.obj.offset().top ;
            box.css({
                "position": "absolute",
                "left": left + "px",
                "top": top + "px",
                "z-index": 9999,
                "font-size": options.startSize,
                "line-height": options.endSize,
                "color": options.color
            });
            box.animate({
                "font-size": options.endSize,
                "opacity": "0",
                "top": top - parseInt(options.endSize) + "px"
            }, options.interval , function() {
                box.remove();
                options.callback();
            });
        }
    });
})(jQuery);
	$(document).ready(function() {
		$(".diggaw-this").click(function() {
			var thisone = $(this);
			var dataid = $(this).attr("data-id");
			if(Q_USER_EXP<Q_ASWR_GOOD){
				BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_ASWR_GOOD+'才能点赞！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
				return;
			}
			$.post(sitedomain +"/ajax/", {
				act: 'questionsawdigg',
				sid: dataid
			}, function(data, status) {
				if (data=='1') {
					$.tipsBox({
						obj: $('.votea'+dataid),
						str: "+1",
						callback: function() {
							$('.votea'+dataid).html(parseInt($('.votea'+dataid).html())+1);
						}
					});
					thisone.after('已赞');
					thisone.remove();
				} else {
					thisone.after(data);
					thisone.remove();
				}
			});
		});
		
		$(".commentthis").click(function() {
			var thisone = $(this);
			var dataid = $(this).attr("data-id");
			var dataaid = $(this).attr("data-aid");
			if($('#comentlist'+dataaid+'andadd').length>0){ 
				if($('#comentlist'+dataaid+'andadd').is(":hidden")){
				}else{
					$('#comentlist'+dataaid+'andadd').remove();
				}
			}else{
				$('.widget-comments').remove();
				$.post(sitedomain +"/ajax/", {
					act: 'questionsanswercoment',
					sid: dataid,
					dataaid: dataaid
				}, function(data, status) {
					if (data) {
						$('.atool'+dataaid).after(data);
						postaskComment();
						/*commentReply();
						commentreportthis();*/
					}
				});
			}
		});

		$(".useanswer").click(function() {
			var dataid = $(this).attr("data-id");
			var datauid = $(this).attr("data-uid");
			var dataadm = $(this).attr("data-adm");
			var dataaid = $(this).attr("data-aid");
			if(dataadm!=1){
			if(Q_USER_EXP<Q_ASWR_ADMINUSE&&datauid!=Q_USER_ID){
				BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_ASWR_ADMINUSE+'才能帮别人采纳问题！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
				return;
			}
			}
			BootstrapDialog.show({title:'采纳回答',message:'确定采纳该回答？<br />采纳后状态为<font color="#51b351">「已解决」</font>，并获得相应奖励及经验。 <hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-success" onclick="questionsuseanswer('+dataid+','+dataaid+');">确定</button> <button onclick="$(".modal-backdrop").remove();$(".bootstrap-dialog").remove();" class="btn btn-default" data-dismiss="modal">取消</button></div>'});
		});

		$(".QuestionClick").click(function() {
			var thisone = $(this);
			var thisoldval = $(this).html();
			var datado = $(this).attr("data-do");
			var dataid = $(this).attr("data-id");
			var datatype = $(this).attr("data-type").split("|");
			var datafor = $(this).attr("data-for");
			var otherid = $(this).attr("other-id");
			thisone.html('加载中');
			$.post(sitedomain +"/ajax/", {
				act: 'questionClick',
				sid: dataid,
				datado: datado,
				otherid: otherid
			}, function(data, status) {
				if (data) {
					if(datafor){
						if(datafor=='[delete]'&&data==datatype[1]){
							$('.'+thisone.attr("del-for")+dataid).remove();
						}else{
							if(data==datatype[0]){
								$(datafor).html(parseInt($(datafor).html())+1);
							}else if(data==datatype[1]){
								$(datafor).html(parseInt($(datafor).html())-1);
							}
						}
					}
					thisone.html(data);
				} else {
					thisone.html(thisoldval);
				}
			});
		});

		
		$(".report-this").click(function() {
			var dataaid = $(this).attr("data-aid");
			var dataid = $(this).attr("data-id");
			var datatype = $(this).attr("data-type");
			$.post(sitedomain +"/ajax/", {
				act: 'questionsreport',
				sid: dataid,
				dataaid: dataaid,
				datatype: datatype
			}, function(data, status) {
				if (data) {
					BootstrapDialog.show({title:'举报操作',message:data});
				} else {
					BootstrapDialog.show({title:'举报操作',message:'举报失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
				}
			});
		});
		
		$(".close-this").click(function() {
			var dataid = $(this).attr("data-id");
			if(Q_USER_EXP<Q_QUES_CLOSE){
				BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_QUES_CLOSE+'才能关闭问题！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
				return;
			}else{
				BootstrapDialog.show({title:'系统提示',message:'该问题描述不详及不符合规定发布。<br /><b>确定关闭问题？</b><br />系统将扣除发布者1声望。<hr><button class="btn btn-success" onclick="closequestion(\''+dataid+'\')">确定</button> <button class="btn btn-default" data-dismiss="modal">取消</button></div>'});
				return;
			}
		});
		
		$(".worry-this").click(function() {
			var dataid = $(this).attr("data-id");
			var datatype = $(this).attr("data-type");
			var datauid = $(this).attr("data-uid");
			if(Q_USER_EXP<Q_QUES_WORRY){
				BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_QUES_WORRY+'才能加急问题！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
				return;
			}else{
				if(datauid!=Q_USER_ID){
					BootstrapDialog.show({title:'系统提示',message:'确定消费10积分帮TA的问题加急？<br />系统将扣除10积分。问题活动3小时置顶及永久加急标志。<hr><button class="btn btn-success" onclick="topquestion(\''+dataid+'\',\''+datatype+'\')">确定</button> <button class="btn btn-default" data-dismiss="modal">取消</button></div>'});
					return;
				}else{
					BootstrapDialog.show({title:'系统提示',message:'确定消费10积分加急问题？<br />系统将扣除10积分。问题活动3小时置顶及永久加急标志。<hr><button class="btn btn-success" onclick="topquestion(\''+dataid+'\',\''+datatype+'\')">确定</button> <button class="btn btn-default" data-dismiss="modal">取消</button></div>'});
					return;
				}
			}
		});

		$(".delete-this").click(function() {
			var dataaid = $(this).attr("data-aid");
			var dataid = $(this).attr("data-id");
			var datatype = $(this).attr("data-type");
			if(dataid&&datatype){
				if(datatype=='question'&&Q_USER_EXP<Q_QUES_DEL){
					BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_QUES_DEL+'才能删除问题！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
					return;
				}
				if(datatype=='answer'&&Q_USER_EXP<Q_ASWR_DEL){
					BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_ASWR_DEL+'才能删除回答！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
					return;
				}
				if(datatype=='question'){var txt='问题';}else{var txt='回答';}
				if(dataaid=='undefined'||dataaid==undefined||dataaid==''){var dataaid='';}
				BootstrapDialog.show({title:'删除操作',message:'确定删除该'+txt+'？<div class="btw" style=""> <p class="mt20" ><strong>删除原因：</strong></p> <textarea class="form-control" rows="3" name="description" id="deleteDesc"></textarea></div><hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-success" onclick="delquestionoranswer(\''+dataaid+'\',\''+dataid+'\',\''+datatype+'\')">确定</button> <button class="btn btn-default" data-dismiss="modal">取消</button></div>'});
			}
		});
		//编辑问题
		$(".editthis").click(function() {
			var datatype = $(this).attr("data-type");
			var quid = $(this).attr("data-uid");
			if(quid!=Q_USER_ID){//非自己需声望判断
				if(datatype=='question'&&Q_USER_EXP<Q_QUES_EDIT){
					BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_QUES_EDIT+'才能编辑问题！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
					return false;
				}
			}
		});
		//编辑问题的回答
		$(".edit-this").click(function() {
			var dataaid = $(this).attr("data-aid");
			var dataid = $(this).attr("data-id");
			var datatype = $(this).attr("data-type");
			var auid = $(this).attr("data-auid");
			if(dataid&&datatype){
				if(auid!=Q_USER_ID){
					if(datatype=='answer'&&Q_USER_EXP<Q_ASWR_EDIT){
						BootstrapDialog.show({title:'系统提示',message:'声望达到'+Q_ASWR_EDIT+'才能编辑回答！<hr><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
						return;
					}
				}
				if(datatype=='question'){var txt='问题';}else{var txt='回答';}
				if(dataaid=='undefined'||dataaid==undefined||dataaid==''){var dataaid='';}
				//BootstrapDialog.show({title:'编辑操作',message:'暂不开放编辑！<hr><div class="bootstrap-dialog-footer-buttons"> <button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
				
				if($('#editanswerid'+dataaid+'andedit').length>0){ 
					if($('#editanswerid'+dataaid+'andedit').is(":hidden")){
					}else{
						$('#editanswerid'+dataaid+'andedit').remove();
					}
				}else{
					$('.widget-comments').remove();
					$.post("/ajax/", {
						model:'questions',
						act: 'editanswer',
						aid: dataaid,
						qid:dataid
					}, function(data, status) {
						if (data) {
							$('.atool'+dataaid).after(data);
							postaskComment();
						}
					});
				}				
			}
		});

		$(".commentsave").click(function() {
			var typearr = $(this).attr("data-id").split("_");
			var qcuid = $('#qc_uid').val();
			var ispost=0;
			if(typearr[1]!=1){
					showalert(1, '先登录！');
					$("#answerIt").text('提交回答').attr('disabled',false);
			}else{
				if(!UE.getEditor('answerEditor').getContent()||huishi.GetLength(UE.getEditor('answerEditor').getContent())<5){
					showalert(1, '请填写回答内容需详细认真解答！');
					$("#answerIt").text('提交回答').attr('disabled',false);
					ispost=ispost+1;
				}
				showalert(0, '<img src="/images/loading.gif"> 提交回答中...');
				$.post(sitedomain +"/ajax/", {
					act: 'ptoquestionscomment',
					sid: typearr[0],
					qcuid: qcuid,
					answer: UE.getEditor('answerEditor').getContent()
				}, function(data, status) {
					if (data) {
						if (data=='回答过快'||data=='内容过少'||data=='参数错误') {
							showalert(1, data+'！');
							$("#answerIt").text('提交回答').attr('disabled',false);
						}else{
							setTimeout('hiddendiv()', 200);
							$(".article_list").before(data);
							$('#questionText').hide();
							$('#answerSubmit').hide();
							$('#answerTITLE').hide();
						}
					} else {
						showalert(1, '提交失败！');
						$("#answerIt").text('提交回答').attr('disabled',false);
					}
				});
			}
		});
		$(window).scroll(function() {
			var scrolltop = $(this).scrollTop();
			if (scrolltop >= 300) {
				$("#elevator").show();
				$("#elevator").css('display', 'block');
			} else {
				$("#elevator").hide();
			}
		});
		$("#elevator").click(function() {
			$("html,body").animate({
				scrollTop: 0
			},
			500);
		});
		$(".qr").hover(function() {
			$(".qr-popup").show();
		},
		function() {
			$(".qr-popup").hide();
		});
	});