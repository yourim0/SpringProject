/*!
* Start Bootstrap - Landing Page v6.0.5 (https://startbootstrap.com/theme/landing-page)
* Copyright 2013-2022 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-landing-page/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project


$(document).ready(function(){
   
   $("#bestview").show();
   $("#newview").hide();

   $("#best").on("click" , function(){
      $("#bestview").show();
      $("#newview").hide();
      console.log("click!");
   });
   
   $("#new").on("click" , function(){
      $("#newview").show();
      $("#bestview").hide();
      console.log("click!");
   });
});

$(function(){
	$(document).one('click', '.like-review', function(e) {
		$(this).html('<i class="fa fa-heart" aria-hidden="true"></i> You liked this');
		$(this).children('.fa-heart').addClass('animate-like');
	});
});
