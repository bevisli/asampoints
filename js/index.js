
/*====================================*/
/* 	  Authors BY KIMY	  */
/*====================================*/
	$(function(){  
		if (window.innerWidth){
			winWidth = window.innerWidth;
		}else if ((document.body) && (document.body.clientWidth)){
			winWidth = document.body.clientWidth;
		} 
		if(winWidth<728){
			var toTopHeight = $(".banner-search").offset().top;
		}else{
			if(winWidth<1410){
			var toTopHeight = 590+$(".banner-search").offset().top;
			}else{
			var toTopHeight = 780+$(".banner-search").offset().top;
			}
		}
		//监听页面滚动  
		$(window).scroll(function() {  
			//获取导航距离页面顶部的距离  
			var objWindow=$(window);
			if(winWidth<728){
				//判断页面滚动超过导航时执行的代码  
				if( objWindow.scrollTop() > toTopHeight ){  
						$(".banner-searchtop").css({'padding-top':'10px'}); 
						$(".banner-search").css({'position':'fixed','z-index':'10','top':'inherit','top':'0','height': '70px'}); 
				}else{//判断页面滚动没有超过导航时执行的代码  
						$(".banner-searchtop").css({'padding-top':''}); 
						$(".banner-search").css({'position':'','z-index':'10','top':'50%','bottom':'','height': 'auto'}); 
				}  
			}else{
				//判断页面滚动超过导航时执行的代码  
				if( objWindow.scrollTop() > toTopHeight ){  
						$(".banner-searchtop").css({'padding-top':''});
						$(".banner-search").css({'position':'fixed','z-index':'10','top':'0','bottom':'','height': ''}); 
				}else{//判断页面滚动没有超过导航时执行的代码  
						$(".banner-searchtop").css({'padding-top':''});
						$(".banner-search").css({'position':'','z-index':'10','top':'','bottom':'','height': ''}); 
				}  
			}
		});  
	});  
	function getautoCompletelist(){
		$.post("/ajax/", {
			act: 'getautoCompletelist',
			keyword: $(".tagkeydown").val()
		},
		function(data, status) {
			if (data) {
				$('.autoComplete-list').html(data);
				
					if (window.innerWidth){
						winWidth = window.innerWidth;
					}else if ((document.body) && (document.body.clientWidth)){
						winWidth = document.body.clientWidth;
					} 
					if(winWidth<728){
						$(".autoComplete-boxs").css({'top':'32px','bottom':''});
					}else{
						$(".autoComplete-boxs").css({'top':'32px','bottom':''});
						//$(".autoComplete-boxs").css({'top':'','bottom':($(".autoComplete-list").height()+44)+'px'});
					}

				$('.autoComplete-list').show();
			}else{
				$('.autoComplete-list').hide();
			}
		});
	}
	$(function(){
		$(".tagkeydown").keyup(function() {
			getautoCompletelist();
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