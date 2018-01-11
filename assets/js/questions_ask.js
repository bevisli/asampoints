var ue=UE.getEditor('editor', {
			initialFrameHeight:"180"
	})
var huishi = {};
huishi.GetLength = function(str) {
	var realLength = 0,
	len = removeHTMLTag(str).length,
	charCode = -1;
	for (var i = 0; i < len; i++) {
		charCode = str.charCodeAt(i);
		if (charCode >= 0 && charCode <= 128) realLength += 1;
		else realLength += 1;
	}
	return realLength;
};

function removeHTMLTag(str) {
	str = str.replace(/<\/?[^>]*>/g, '');
	str = str.replace(/[ | ]*\n/g, '\n');
	str = str.replace(/&nbsp;/ig, '');
	return str;
}


function resetpostsave() {
	$(".hs_postsave_btn").text('发 布 问 题').attr('disabled', false);
}

function createnewtags(t) {
	BootstrapDialog.show({
		title: '创建标签',
		message: '<input type="text" name="name" id="tagName" class="form-control mb20" value="' + t + '" placeholder="标签名称"><textarea name="text" id="tagText" placeholder="请对此标签补充一些描述资料, 以供他人参考" class="form-control" rows="5"></textarea><hr /><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-success" onclick="savetag();">创建</button>  <button class="btn btn-default" data-dismiss="modal">取消</button></div>'
	});
}
function savetag(){
	$.post("/ajax/", {
		act: 'savenewtag',
		tagname: $("#tagName").val(),
		tagtext: $("#tagText").val()
	},
	function(data, status) {
		if (data) {
			$('.bootstrap-dialog').modal('hide');
			$('.tags_list').append(data);
		}else{
			showalert(1,'创建失败！');
			return;
		}
	});
}
function getautoCompletenamelist(){
	$.post("/ajax/", {
		act: 'getautoCompletenamelist',
		keyword: $(".namekeydown").val()
	},
	function(data, status) {
		if (data) {
			$('#titleSuggest').html(data);
			$('#titleSuggest').show();
		}else{
			$('#titleSuggest').hide();
		}
	});
}
function getautoCompletelist(){
	$.post("/ajax/", {
		act: 'getautoCompletelist',
		keyword: $(".tagkeydown").val()
	},
	function(data, status) {
		if (data) {
			$('.autoComplete-list').html(data);
			$('.autoComplete-list').show();
		}else{
			$('.autoComplete-list').hide();
		}
	});
}
function addtagsask(valid,valname){
	if($(".tags_list span").length>=5){
		showalert(1,'最多只能添加五个标签！');
		return;
	}
	if($(".tags_list").html().indexOf('>'+valname+'<a class="') > 0) {
		showalert(1,'标签已经存在！');
		return;
	}
	var data='<span id="tags_list_'+valid+'"><input type="hidden" name="alltag[]" value="'+valid+'" checked>'+valname+'<a class="tagClose" href="javascript:void(0);" onclick="removetags('+valid+');">×</a></span>';
	$('.tags_list').append(data);
	$('.autoComplete-list').hide();
	$('.tagkeydown').val('');
}
function removetags(valid){
	$("#tags_list_"+valid).remove();
}
function postsave() {
	var tjz = '发布中...';
	$(".hs_postsave_btn").text(tjz).attr('disabled', true);
	var ispost = 0;
	if (!$('#p_name').val() || huishi.GetLength($.trim($('#p_name').val())) < 5) {
		ispost = ispost + 1;
		showalert(1, '请确定您问题的标题、不少于5个字符。');
		$('#p_name').focus();
		$(".hs_postsave_btn").text('发 布 问 题').attr('disabled', false);
		return false;
	}
	if (!UE.getEditor('editor').getContent() || huishi.GetLength(ue.getContent()) < 12) {
		ispost = ispost + 1;
		showalert(1, '请键入您的问题描述内容。');
		$('#editor').focus();
		$(".hs_postsave_btn").text('发 布 问 题').attr('disabled', false);
		return false;
	}
	if ($("input[name='alltag[]'][checked]").length<1){
		ispost = ispost + 1;
		showalert(1, '请键选择您的问题的标签标记。');
		$('.tagkeydown').focus();
		$(".hs_postsave_btn").text('发 布 问 题').attr('disabled', false);
		return false;
	}
	if (ispost == 0) {
		newform.submit();
	} else {
		return false;
	}
}
function editsave() {
	var tjz = '更新中...';
	$(".hs_postsave_btn").text(tjz).attr('disabled', true);
	var ispost = 0;
	if (!$('#p_name').val() || huishi.GetLength($.trim($('#p_name').val())) < 5) {
		ispost = ispost + 1;
		BootstrapDialog.show({title:'系统消息', message:'<h2>请确定您问题的标题、不少于5个字符。</h2><hr><a class="btn btn-primary" href="javascript:;" data-dismiss="modal">确定</a>'});
		$('#p_name').focus();
		$(".hs_postsave_btn").text('更 新 问 题').attr('disabled', false);
		return false;
	}
	if (!UE.getEditor('editor').getContent() || huishi.GetLength(ue.getContent()) < 12) {
		ispost = ispost + 1;
		BootstrapDialog.show({title:'系统消息', message:'<h2>请键入您的问题描述内容。</h2><hr><a class="btn btn-primary" href="javascript:;" data-dismiss="modal">确定</a>'});
		$('#editor').focus();
		$(".hs_postsave_btn").text('更 新 问 题').attr('disabled', false);
		return false;
	}
	/*if ($("input[name='alltag[]'][checked]").length<1){
		ispost = ispost + 1;
		BootstrapDialog.show({title:'系统消息', message:'<h2>请选择您的问题的标签标记。</h2><hr><a class="btn btn-primary" href="javascript:;" data-dismiss="modal">确定</a>'});
		$('.tagkeydown').focus();
		$(".hs_postsave_btn").text('更 新 问 题').attr('disabled', false);
		return false;
	}*/
	if (ispost == 0) {
		newform.submit();
	} else {
		return false;
	}
}
function showtips(vars){
		BootstrapDialog.show({title:'系统消息', message:vars});
}
$(function(){
	$(".tagkeydown").keyup(function() {
		getautoCompletelist();
	});
	$(".namekeydown").keyup(function() {
		getautoCompletenamelist();
	});
	$(document).click(function(){ 
		if(!$(".autoComplete-list").is(":hidden")){ 
			$('.autoComplete-list').hide();
			$('.tagkeydown').val('');
		} 
	});
	$("button[data-toggle=popover]")
	  .popover()
	  .click(function(e) {
		e.preventDefault()
	});
	$("a[data-toggle=popover]")
	  .popover()
	  .click(function(e) {
		e.preventDefault()
	});
});