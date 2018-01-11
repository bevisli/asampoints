$(function(){
	//导航
	$('.navBtn').on('click',function(){
		$(this).next().toggle()
	})
	//弹窗
	$('.loginBtn').click(function(){
        $('.loginReg,.modal-bg').show();
        $('body').addClass('popOpen');
        $('.modal-bg').css('height',$(document).height())
    })
    //关闭弹窗
    $('.lTitle span').click(function(){
         $('.loginReg,.modal-bg').hide();
         $('.login').show().siblings('.reg').hide();
         $('body').removeClass('popOpen');
    })
    //注册or登陆
    $('.login .bc').on('click',function(){
        $(this).closest('.login').hide().next().show();
        $('.modal-dialog').width(400)
        return false;
    })
    //返回登陆
    $('.reg .gyc').on('click',function(){
        $(this).closest('.reg').hide().prev().show();
        $('.modal-dialog').width(670)
        return false;
    })
    //忘记密码
    $('.login .forgetBtn').on('click',function(){
        $(this).closest('.login').hide().nextAll('.forget').show();
    })
	//课程页
	$('.mList li').hover(function(){
		$(this).find('.t,.play').toggle()
		$(this).find('.h').toggle()
	})

    //在线客服
    $('.serBtn').on('click',function(){
        if($(this).next().width() == 0) {
            $(this).next().stop().animate({'width':'145px'},'fast') 
        }else {
            $(this).next().stop().animate({'width':'0'},'fast') 
        }
    })

    // 扫描微信
    $('.wx').hover(function(){
        $(this).children('a').addClass('on');
        $(this).find('.wxCont').show()
    },function(){
        $(this).children('a').removeClass('on');
        $(this).find('.wxCont').hide()
    })

    //返回顶部
    var ie6=!-[1,]&&!window.XMLHttpRequest;
    $(window).scroll(function(){
        var $top = $(window).scrollTop();
        if (ie6) {
            $('.returnTop').css('top',$top + $(window).height() - 200 + 'px')
            $('.server').css('top',$top + 150 + 'px')
        }
        if($top >= 250){
            $('.returnTop').show();
        }else if ($top <= 0) {
            $('html,body').stop(true);
        }else{
           $('.returnTop').hide(); 
        }
        $('.rt a').click(function(){
            $('html,body').animate({scrollTop:0},'fast');
            return false;
        })
    })
    
})






