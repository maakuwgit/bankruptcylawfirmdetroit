// Copyright 2014-2017 The Bootstrap Authors
// Copyright 2014-2017 Twitter, Inc.
// Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
  var msViewportStyle = document.createElement('style')
  msViewportStyle.appendChild(
	document.createTextNode(
	  '@-ms-viewport{width:auto!important}'
	)
  )
  document.head.appendChild(msViewportStyle)
}

(function ($) {
//	console.log('Backgrounder Loaded');
	//Dev Note: going to move this into the Backgrounder component for reusability
	//BEOF Backgrounder
	var vh,vw;
	//Media Query (match the _variables.less breakpoints)
	var breakpoints = {};
	breakpoints.xxs = 399;
	breakpoints.xs  = 479;
	breakpoints.sm  = 767;
	breakpoints.md  = 991;
	breakpoints.lg  = 1239;
	breakpoints.xl  = 1599;
	
	//Padding *Dev Note* Should match the Bootstrap padding
	var padding_xsmall   = 18.5,
	    padding_small    = 37,
	    padding_medium 	 = 61,
	    padding_large    = 106,
	    padding_xlarge   = padding_small + padding_large;
	
	var speed = 300;
	
	//Convert a number into a rem based string and return it
	function rem_calc(num) {
	  return num/16;
	}
	
	/* Dev Note: need an xs, xxs size, as well as new xxl xxxl */
	function getSize(){
	  if(vw >= breakpoints.xl){
	    return 'xl';
	  }else if(vw >= breakpoints.lg && vw < breakpoints.xl) {
	    return 'lg';
	  }else if(vw > breakpoints.sm && vw < breakpoints.lg) {
	    return 'md';
	  }else{
		  return 'small';
	  }
	}	
	//Re-Log the screen dimensions and set all our image sizes
	function refactor(e){
	  vw = window.innerWidth;
	  vh = window.innerHeight;
	  
	  var size = getSize();
	  //Dev Note: Create a date attr for the size and only call 'makeBg' oncer per size.
	  makeBg(size);
	  
		
		reflow();
	}
	
	//Reset all appropriate bindings
	function reflow() {	
		//Nothing to do for this component
	}
		
	//Reads the "featured" image (class based) and sets the target background to whatever image is dynamically loaded then animates it in.
	function makeBg(size){
	  if(!size){
	    size = getSize();
	  }
	
	  $('[data-backgrounder]').each(function(args){
	    var feat    = $(this).find('.feature');
	    var target  = feat;//See if there's a featured image here, if not, just use the parent
	    
	    if(feat.length <= 0) {
	      target = $(this);
	    }
	
	    var img     = false;
	
	    if(feat.length > 0) {
	      img = $(feat).find('img');
	    }else{
	      img = $(this).find('img');
	    }
	    
//	    console.log('Feat:',feat);
//	    console.log('Img:', img);
	
	    if(img.length > 0) {
	      var src = $(img).attr('src');
	      
	      $(this).css('background-color', $(this).attr('data-bg-color'));

	      
	      if($(img).attr('data-src-xl') && size === 'xl') {
	        src = $(img).attr('data-src-xl');
	      }
	      if($(img).attr('data-src-lg') && size === 'lg') {
	        src = $(img).attr('data-src-lg');
	      }
	      if($(img).attr('data-src-md') && size === 'md') {
	        src = $(img).attr('data-src-md');
	      }

	      if ($(this).attr('style')) {
	        if (feat.length > 0) {
	            if( $(this).attr('data-bg-color') ) {
		            $(feat).css('background-color', $(this).css('background-color'));
	            }

	            //$(feat).delay(300).fadeOut(300);
	          }
	          $(this).css({'background-image': 'url('+src+')'});
	      } else {
	        if( $(this).attr('data-bg-color') ) {
	        	$(this).css({'background-image':'url('+src+')', 'background-color':$(this).css('background-color')});
	        }else{
		        $(this).css({'background-image':'url('+src+')'});
	        }
	        
	        if(feat.length > 0) {
	          //$(feat).delay(300).fadeOut(300);
	        }
	      }
	    }
	  });
	}
  	
	//Init
	$(window).on('resize.refactor', refactor);
	
	refactor();
	
	//Google Tracking
	window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-145155304-1');
  $('body').addClass('google-tracking');

	//Legacy
  var url = window.location.pathname;  
  $('.navbar-nav a[href="'+ url +'"]').addClass('active');
	$('.nav .nav-item a[href="'+ url +'"]').addClass('active');
	
})(jQuery);
