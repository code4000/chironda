// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
// = require jquery.flexslider-min
// = require bxslider
// = require jquery.sticky
// = require wow
// = require owl.carousel
// = require modernizr.custom.28468
// = require jquery.cslider
// = require jquery.mixitup.min
// = require magnific-popup
//= require rails-ujs
//= require_tree .

$(window).load(function() {
	$(".loader-item").delay(500).fadeOut();
	$("#pageloader").delay(1500).fadeOut("slow");

});

$(document).ready(function(){ 

	$('.flexslider').flexslider({
		animation: "fade", 
		controlNav: false,
		directionNav: false,
		slideshowSpeed:5000,
	});
});
	$(document).ready(function(){
	  $('#text-slider').bxSlider({
		mode: 'fade',
		pager: false,
		auto: true,
		controls: false
	});
	  
	});

$(document).ready(function(){ 
	$('#header').sticky({
		topSpacing: 0
	});
});

new WOW().init();
$(".owl-carousel").owlCarousel();

$(window).bind(function() {
	if(!onMobile)
		parallaxInit();
});

function parallaxInit() {
	$('#facts').parallax("50%", 0.2);
	$('#cta').parallax("50%", 0.2);
	$('#pricing').parallax("50%", 0.2);
	$('#contact').parallax("50%", 0.2);
	$('#banner').parallax("50%", 0.2);

	/*add as necessary*/
}
var onMobile = false;
if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
	onMobile = true;
}

$(document).ready(function(){
		$('.work-grid').mixitup({
		targetSelector: '.mix',
		});
});
$(document).ready(function(){
		$('.popup-image').magnificPopup({
		type: 'image',
		closeOnContentClick: true,
		mainClass: 'mfp-img-mobile',
		image: {
			verticalFit: true
		}
		
	});
});
$(document).ready(function(){
	 $(".testimonials-carousel").owlCarousel({
	autoPlay: 5000,
	slideSpeed: 200,
	items: 1,
	itemsDesktop: [1199, 1],
	itemsDesktopSmall: [979, 1],
	itemsTablet: [768, 1],
	itemsMobile: [479, 1],
	autoHeight: true,
	navigation: false,
    });
});
$(document).ready(function(){
     $(".single-work-slider").owlCarousel({
 
		navigation : false, // Show next and prev buttons
		slideSpeed : 400,
		pagination : false,
		singleItem:true,
		autoPlay: true,
		navigation : true,
		 navigationText: [
      "<i class='fa fa-angle-left'></i>",
      "<i class='fa fa-angle-right'></i>"
      ] ,

 
	});
});
$(document).ready(function(){
	 $('.related-project-carousel').owlCarousel({
	 autoPlay:3000,
	 slideSpeed: 200,
	  items : 4,
	  itemsDesktop : [1199,4],
	  itemsDesktopSmall : [979,3],
	  stopOnHover:true,
	  pagination:false,
	  navigation : true,
	   navigationText: [
      "<i class='fa fa-angle-left'></i>",
      "<i class='fa fa-angle-right'></i>"
      ],   

	});
});

$(document).ready(function(){
      (function($) { "use strict";
		$(".scroll a[href^='#']").on('click', function(e) {
		   e.preventDefault();
		   var hash = this.hash;
		   $('html, body').stop().animate({
			   scrollTop: $(hash).offset().top}, 1500, 'easeInOutExpo');
		});
		 })(jQuery);

		$('.collapse ul li a').click(function(){ 
		$('.navbar-toggle:visible').click();
	   });	
});
$(document).ready(function(){
	$(window).scroll(function(){
	  if ($(this).scrollTop() > 1000) {
	$('.scrollup').fadeIn();
	} else {
 	  $('.scrollup').fadeOut();
	}
}); 
	
		$('.scrollup').click(function(){
		$("html, body").animate({ scrollTop: 0 }, 1000);
	return false;
	});
});