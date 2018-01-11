
/*====================================*/
/* 	  Authors Custom script Writing	  */
/*====================================*/

"use strict";



$(document).ready(function(){
	
	$('.banner_slider').bxSlider({
		  infiniteLoop: true,
		  hideControlOnEnd: true,
		  pager: false,
		  auto:true,
		  controls:false,
		  nextText: ' ',
		  prevText: ' '
	});
	
	$('.super-slider').bxSlider({
		  pagerCustom: '#bx-pager',
		  controls:false
	});
	
	$('.banner2slide').bxSlider({
		  pagerCustom: '#bx-pager',
		  controls:false
	});
	
	$('.blog-slide').bxSlider({
		  infiniteLoop: true,
		  hideControlOnEnd: true,
		  pager: false,
		  auto:true,
		  controls:true,
		  nextText: ' ',
		  prevText: ' '
	});
	
	$('.feature-slider').bxSlider({
		  infiniteLoop: true,
		  hideControlOnEnd: true,
		  pager: false,
		  auto:true,
		  controls:true,
		  nextText: ' ',
		  prevText: ' '
	});
	
	$('.happy-client-says').bxSlider({
		  minSlides: 2,
		  maxSlides: 2,
		  moveSlides:1,
		  slideWidth: 585,
		  slideMargin: 15,
		  pager:true,
		  auto:true,
		  controls:false
	});
	
	
     var owl = $("#owl-demo");
     
      owl.owlCarousel({
         
          itemsCustom : [
            [0, 1],
            [450, 1],
            [600, 2],
            [640, 1],
            [667, 2],
            [1024, 2],
            [1200, 2],
            [1600, 2]
          ],
          navigation : false,
		  pagination : true,
		  autoPlay : true,
		  
		 
     
      });
	  
	 $("#owl-example").owlCarousel({
     
        // Most important owl features
        items : 6,
        itemsCustom : false,
        itemsDesktop : [1199,4],
        itemsDesktopSmall : [980,3],
        itemsTablet: [768,2],
        itemsTabletSmall: false,
        itemsMobile : [479,1],
        singleItem : false,
        itemsScaleUp : false,
		slideBy: 1,
     
        //Basic Speeds
        slideSpeed : 200,
        paginationSpeed : 800,
        rewindSpeed : 1000,
     
        //Autoplay
        autoPlay : true,
        stopOnHover : false,
     
        // Navigation
        navigation : false,
        rewindNav : true,
        scrollPerPage : false,
     
        //Pagination
        pagination : true,
        // Responsive 
        responsive: true,
        responsiveRefreshRate : 200,
        responsiveBaseWidth: window,
     

    })
  
  $('.our-team-members').bxSlider({
		infiniteLoop: true,
		hideControlOnEnd: true,
		moveSlides:1,
		minSlides: 1,
		maxSlides: 4,
		pager:false,
		auto:true,
		nextText: ' ',
		prevText: ' '
  });
  
    $("#owl-demo2").owlCarousel({
 
      navigation : false, // Show next and prev buttons
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem:true,
	  autoPlay : true,
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
 
  });
  
  $('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
  

}); 

