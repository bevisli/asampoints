		$(function(){ 
			$("button[data-toggle=popover]")
			  .popover()
			  .click(function(e) {
				e.preventDefault()
			})
			$("a[data-toggle=popover]")
			  .popover()
			  .click(function(e) {
				e.preventDefault()
			});
			$(".warning-question").click(function() {
				var videid = $(this).attr("data-id");
				if($('#askbox').is(':hidden')){
					$('#askbox').show();
				}else{
					$('#askbox').hide();
				}
			});
			$('.deng-icon').click(function(){
				if($(this).find('p').html()=='关灯'){
					$('#bgbox').show();
					$('#bgbox').css('z-index','100021');
					$('.video-play-header').css('z-index','100050');
					$('.breadcrumb').css('position','relative');
					$('.breadcrumb').css('z-index','100050');
					$(this).find('p').html('开灯');
					$(this).find('i').removeClass('ysc');
					$(this).find('i').addClass('ysc');
				}else{
					$('#bgbox').hide();
					$('#bgbox').css('z-index','-1');
					$('.video-play-header').css('z-index','10');
					$('.breadcrumb').css('position','relative');
					$('.breadcrumb').css('z-index','10');
					$(this).find('p').html('关灯');
					$(this).find('i').removeClass('ysc');
				}
			});
			$('.icon-player').click(function(){
				var dataurl = $(this).attr("data-url");
				$('.depict-video').html('<div class="player-center"><div id="player">播放器载入中...</div></div>');
				jwplayer("player").setup({
					file: dataurl,
					image: "/layout/images/videobg.jpg",    //视频播放器封面图片地址
					skin:"",
					aspectratio : "16:9",
					width: "100%",   //播放器宽度
					height: "480px",  //播放器高度
					abouttext: "汇识学院",   //右键菜单文字
					aboutlink: "http://www.huishiatc.com",    //右键菜单链接地址
					autostart : "true", //是否自动播放
					primary : 'flash',
					repeat : "false" //是否循环播放
				});				
			});
		}); 
		$('#list-groups').scrollTop(0);
		function closedeng(){
			$('#bgbox').hide();
			$('#bgbox').css('z-index','-1');
			$('.video-play-header').css('z-index','10');
			$('.breadcrumb').css('position','relative');
			$('.breadcrumb').css('z-index','10');
			$('.deng-icon').find('p').html('关灯');
			$('.deng-icon').find('i').removeClass('ysc');
		}