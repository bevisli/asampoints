jQuery(function($) {'use strict',

	//#main-slider
	$(function(){
		$('.carousel').carousel({
			interval: 4000,
			pause: "false"
		});
	});


	// accordian
	$('.accordion-toggle').on('click', function(){
		$(this).closest('.panel-group').children().each(function(){
		$(this).find('>.panel-heading').removeClass('active');
		 });

	 	$(this).closest('.panel-heading').toggleClass('active');
	});


	// testimonial slider
  	$(document).ready(function() {
  	    $("#testimonial").owlCarousel({
        navigation : false, // Show next and prev buttons
        slideSpeed : 300,
        paginationSpeed : 400,
        singleItem:true
        });

  	});

	//pretty photo
	$("a[rel^='prettyPhoto']").prettyPhoto({
		social_tools: false
	});	
});