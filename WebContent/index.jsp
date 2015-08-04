<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Elearning</title>

 <!-----CSS Main Style------>
   <link rel="stylesheet" href="Elearning/templates/css/template-default.css" type="text/css" />
    <!-------CSS Bootstrap-------->    
  <link rel="stylesheet" href="Elearning/templates/asset/bootstrap/css/bootstrap.min.css" type="text/css" /> 
     <link rel="stylesheet" href="Elearning/templates/asset/fonts/awesome/css/font-awesome.min.css" type="text/css" /> 
    <!----Import Font from Google----->
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700&amp;subset=latin,latin-ext" type="text/css" />   
    <!----CSS SliderShow TOP----->
  <link rel="stylesheet" href="Elearning/sliders/slickslider/assets/css/sj-slickslider.css" type="text/css" />
  <link rel="stylesheet" href="Elearning/templates/css/responsive.css" type="text/css" />
    <!---CSS Slider Button----->
  <link rel="stylesheet" href="Elearning/plugins/assets/css/shortcodes.css" type="text/css" />
    
    <!-- Owl Carousel Assets -->
    <link href="Elearning/owl-carousel-plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="Elearning/owl-carousel-plugins/owl-carousel/owl.theme.css" rel="stylesheet">

<!-----Javascript----->
 <script src="Elearning/media/js/jquery.min.js" type="text/javascript"></script>  
  <!-----JS Bootstrap----->
 <script src="Elearning/templates/asset/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-----JS Slider top----->
<script src="Elearning/templates/menusys/jquery.megamenu.js" type="text/javascript"></script>
<script src="Elearning/sliders/slider/assets/js/slider.js" type="text/javascript"></script>    
<script src="Elearning/sliders/slickslider/assets/js/jcarousel.js" type="text/javascript"></script>
    <!----JS Slider Button----->
<script src="Elearning/plugins/assets/js/shortcodes.js" type="text/javascript"></script>
   
	<!-- LINK FOR FAVICON -->
			<link rel="icon" type="image/x-icon" href="Elearning/images/logo.ico" />
			
</head>
<body id="bd" class="homepage home-layout1 res" >	
	<div id="yt_wrapper" class="layout-wide">		
					<nav id="yt_menuwrap" class="block" style="background-color: #0C959A;">
                        <div class="container">
							<div class="row">
									<div id="yt_logo" class="col-md-3 col-sm-12" >						
			<a class="logo" href="index.html" title="HRD CENTER">
				<img data-placeholder="no" src="Elearning/templates/images/styling/default/logo.png" alt="sj univercityii" style="width:246px;height:100px;"  />
			</a>           
                </div>
				<div id="yt_mainmenu" class="col-md-9 col-sm-12 "  >
			<ul id="meganavigator" class="clearfix navi "><li class=" level1 first ">
	<a title="Home " class=" level1 first  item-link" href="index.html"><span class="menu-title">Home </span></a>	
	</li>
<li class="level1 havechild ">
	<a title="Elearning" class="level1 havechild  item-link" href="#">
        <span class="menu-title">Elearning </span>
    </a>	
</li>

<li class="level1 havechild ">
	<a title="Tutorials" class="level1 havechild  item-link" href="#"
       ><span class="menu-title">Tutorails</span>
    </a>	
</li>

<li class="level1 havechild ">
	<a title="Login" class="level1 havechild  item-link" href="#">
        <span class="menu-title">Login</span>
    </a>	
</li>

<li class="level1 havechild mega1">
	<a title="Sign Up" class="level1 havechild mega1 item-link" href="#">
        <span class="menu-title">Sign Up</span>
    </a>
</li>

<li class="level1 ">
	<a title="" class="level1  item-link" href="#">
        <img src="Elearning/media/images/khmer.png" alt="Arabic" title="Arabic" />
        <img src="Elearning/media/images/English.png" alt="English " title="English " />
    </a>	
</li>

<!------//Meun Normal------>

</ul>
	   <!------Collapse Menu------>
		<div id="yt-responivemenu" class="yt-resmenu ">
			<button data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar collapsed" type="button">
				<i class="fa fa-bars"></i> Menu			</button>
			<div id="resmenu_sidebar" class="nav-collapse collapse" >
				<ul class="nav resmenu">
				    <li><a title="Home " href='index.html' class="active">Home </a></li>
        <li class="haveChild level1"><a title="" href='#'>Elearning </a></li>
            <li class="haveChild level1"><a title="" href='#'>Tutorails</a></li>
            <li class="haveChild level1"><a title="" href='#'>Login</a></li>
            <li><a title="" href='#'>Sing Up</a>        </li>
        <li>
            <a title="" href='#'>            
                <img src="Elearning/media/images/English.png" alt="English " title="English " />
            </a>
        </li>
        <li>
            <a title="" href='#'>
             <img src="Elearning/media/images/khmer.png" alt="KHMER" title="KHMER" />
            </a>
        </li>
            
            
    </ul>
    </div>			
    </div>
<!------//CollapseMenu------>
	<script type="text/javascript">

	jQuery(document).ready(function($) {
		$('.btn-navbar').click(function(){
				$(this).children().toggleClass('fa-times');
		});
		$("ul.resmenu li.haveChild").each(function() {
			$(this).children(".res-wrapnav").css('display', 'none');
			var ua = navigator.userAgent,
			event = (ua.match(/iPad/i)) ? "touchstart" : "click";
			$(this).children(".menuress-toggle").bind(event, function() {
				
				$(this).siblings(".res-wrapnav").slideDown(350);
				$(this).parent().siblings("li").children(".res-wrapnav").slideUp(350);
				$(this).parent().siblings("li").removeClass("active");
				
				$(this).parent().addClass(function(){
					if($(this).hasClass("active")){
						$(this).removeClass("active");
						$(this).children(".res-wrapnav").slideToggle();
						return "";
					}
					return "active";
				});
			});
		});
	});
</script>        </div>
									</div>
						</div>
						
                    </nav>		
        
        <!----Slideshow sections------>
        <section id="yt_spotlight1" class="block">						
                        
        <div class="container">
							<div class="row">
									<div id="slideshow"  class="col-sm-12" >
			<div id="sj_slickslider" class="sj-k2slickslider  slide slickslider-right"  data-interval="5000" data-pause="hover" >
	<!-- Carousel items -->
    <div class="slickslider-items bg-style1">
    	    	<div class="slickslider-item item clearfix active ">
									
				<div class="images-slideshow">
					<img alt="A Responsive Education Joomla Theme" src="Elearning/cache/resized/1111.jpg"/>					
				</div>		
						
			<div class="item-content">
				<div class="item-content-inner">
										
					<h3 class="item-title">
						<a href="#" title="" target="_blank" >
							<span>A </span><span>Online</span><span> Training </span><span>Courses </span><span>here</span>
						</a>
						<span class="line"></span>
					</h3>
                    <div class="item-description">
						The first E-learnign in cambodia, You can study IT, Maths, English					    
                    </div>
										<div class="item-readmore">
						<a href="#" title="" target="_blank" >							
							find out more						
                        </a>
					</div>
				</div>
			</div>
    	</div>
    	    	<div class="slickslider-item item clearfix ">
									
				<div class="images-slideshow">
					<img alt="" src="Elearning/cache/resized/2222.jpg"/>					
				</div>						
			<div class="item-content">
				<div class="item-content-inner">
										
					<h3 class="item-title">
						<a href="#" title="#" target="_blank" >
							<span>HRD CENTER </span><span>provide you  </span><span>the best </span><span>Education</span>
						</a>
						<span class="line"></span>
					</h3>
										<div class="item-description">
				    HRD Center always be your best website for learning and research for your Educations anywhere, anytime...	
                    </div>
										<div class="item-readmore">
						<a href="" title="" target="_blank" >							
							find out more						
                        </a>
					</div>
				</div>
			</div>
		
    	</div>
    	    	<div class="slickslider-item item clearfix  ">
									
				<div class="images-slideshow">
					<img alt="" src="Elearning/cache/resized/3333.jpg"/>					
				</div>
			<div class="item-content">
				<div class="item-content-inner">										
					<h3 class="item-title">
						<a href="#" title="" target="_blank" >
							<span></span><span>HRD </span><span>Trainning  </span><span>about all you need</span>
						</a>
						<span class="line"></span>
					</h3>
										<div class="item-description">
						HRD is the best trainning course that your real life needs					</div>
										<div class="item-readmore">
						<a href="#" title="" target="_blank" >							
							find out more						</a>
					</div>
										
				
				</div>
			</div>
		
    	</div>
    	    	<div class="slickslider-item item clearfix  ">
									
				<div class="images-slideshow">
					<img alt="Curabitur luctus tortor non quam" src="Elearning/cache/resized/4444.jpg"/>					
				</div>
			<div class="item-content">
				<div class="item-content-inner">
										
					<h3 class="item-title">
						<a href="=#" title="Curabitur luctus tortor non quam" target="_blank" >
							<span> </span><span>Your Future will be go fast </span><span>be go fast  </span><span>fast </span>
						</a>
						<span class="line"></span>
					</h3>
										<div class="item-description">
						Your future will be better if you go to HRD website					</div>
										<div class="item-readmore">
						<a href="#" title="" target="_blank" >							
							find out more						</a>
					</div>
				</div>
			</div>
    	</div>
    	    </div>
 
	<!-- Carousel nav -->
	<div class="nav-pagination conner-tl bg-style1" >
		<a class="left" href="#sj_slickslider" data-jslide="prev">
			Prev			<span class="over-row"></span>
		</a>
		<a class="right" href="#sj_slickslider" data-jslide="next">
			Next			<span class="over-row"></span>
		</a>
	</div>
	<div class="pag-item">
		<a class=" sel" href="#sj_slickslider" data-jslide="0">1</a>
		<a class=" " href="#sj_slickslider" data-jslide="1">2</a>
		<a class=" " href="#sj_slickslider" data-jslide="2">3</a>
		<a class=" " href="#sj_slickslider" data-jslide="3">4</a>
		</div>
</div>

<script>
//<![CDATA[    					
	jQuery(document).ready(function($){
		
		$('#sj_slickslider').each(function(){
			var $this = $(this), options = options = !$this.data('modal') && $.extend({}, $this.data());
			$this.jcarousel(options);
			
			$this.bind('jslide', function(e){
				var index = $(this).find(e.relatedTarget).index();
				// process for nav
				$('[data-jslide]').each(function(){
					var $nav = $(this), $navData = $nav.data(), href, $target = $($nav.attr('data-target') || (href = $nav.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, ''));
					if ( !$target.is($this) ) return;
					if (typeof $navData.jslide == 'number' && $navData.jslide==index){
						$nav.addClass('sel');
					} else {
						$nav.removeClass('sel');
					}
				});
			});
		
				$this.touchSwipeLeft(function(){
					$this.jcarousel('next');
					}
				);
				$this.touchSwipeRight(function(){
					$this.jcarousel('prev');
					}
				);				
		});
		return ;
	});
//]]>	
</script>



		</div>
									</div>
						</div>
        <!------/SlideShow-------->
		
        </section>
        
        <!-------Category-------->
            <div class="container text-center">
                <div class="row">
                    <h1>All Courses</h1>
                </div>
                <div class="row center-of-box" >
                    <div class="category-box col-md-3 col-sm-6" id="category-programming">
                        <h3>Programming</h3>
                       <span><img src="Elearning/cache/categories/programmin%20.png" /></span>
                        <p>This is a programming languages</p>
                    </div>
                    <div class="category-box col-md-3 col-sm-6" id="category-design" style="background-color:#149671;">
                      <h3>Graphic Design</h3>
                       <span><img src="Elearning/cache/categories/Design.png" /></span>
                        <p>This is a Design graphic</p>
                    </div>
                     <div class="category-box col-md-3 col-sm-6" id="category-mathematics" style="background-color:#6B80DD;">
                       <h3>Mathematics</h3>
                       <span><img src="Elearning/cache/categories/Math.png" /></span>
                        <p>This is a Mathatics Skill</p>
                    </div>
                     <div class="category-box col-md-3 col-sm-6" id="category-mobile">
                      <h3>Mobile Application</h3>
                       <span><img src="Elearning/cache/categories/Mobile.png" /></span>
                        <p>This is a mobile programming languages</p>
                    </div>
                </div>
                </div>
            <hr class="lineHr" />
            <!-------------Category Details--------------->
            <div class="container">
                <div class="form-inline">                    
                    <div id="category-programming-details">
                        <div style="margin: 0 auto;">
                        <h1 class="text-center"><a href="#" >Programming</a></h1>
                        <div class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p class="course-text">Learng Java</p>
                        </div>
                        <div  class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>Learn C#</p>
                        </div>
                         <div class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>Learn C# Advance</p>
                        </div>
                        <div  class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg" />    
                            <p>Learng SQL</p>
                        </div>  
                        </div>
                    </div>
                       
                </div>
            </div>
               
             <div class="container">
                <div class="row">
                    <div id="category-design-details">
                        <div>
                        <h1 class="text-center"><a href="#" >Design</a></h1>
                        
                        <div class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>Learng Photoshop</p>
                        </div>
                        <div  class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>Learng Illustrator</p>
                        </div>
                         
                    </div>
                </div>
            </div>
            </div>
            </div>
                <div class="container">
                <div class="row">
                    <div id="category-mathematics-details" >
                        <h1 class="text-center"><a href="#" >Mathematics</a></h1>
                        <div class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>រៀនពិជគណិត</p>
                        </div>
                        <div  class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>រៀនធរណីមាត្រ</p>
                        </div>
                         <div class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>កំណែវិញ្ញាសារប្រលងបឋមភូមិ</p>
                        </div>
                        <div  class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg" />    
                            <p>កំណែវិញ្ញាសារប្រលងទុតិយភូមិ</p>
                        </div>
                         
                    </div>
                </div>
            </div>
                    </div>
        </div>
                     <div class="container">
                <div class="row">
                    <div id="category-mobile-details">
                        <h1 class="text-center"><a href="#" >Mobile</a></h1>
                       <div class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>Learng IOS</p>
                        </div>
                        <div  class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>Learng Objective C</p>
                        </div>
                         <div class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg"/>    
                            <p>Learng Android</p>
                        </div>
                        <div  class="course-box text-center">
                            <img src="Elearning/cache/OK/1.jpg" />    
                            <p>Learng Android (Project)</p>
                        </div>
                         
                    </div>
                </div>
            </div>
                         </div>
        </div>
               
               
            <!-------Owl------->
            <section class="owl-carousel-bg block">
            
        <div id="title">
          <div class="container">
            <div class="row">
              <div class="span12 text-center">
                <h1>What's New</h1>
              </div>
            </div>
          </div>
        </div>
        
      <div id="demo">
        <div class="container">
          <div class="row">
            <div class="span12">

              <div id="owl-demo" class="owl-carousel">
                <div class="item ">                    
                    <img src="Elearning/owl-carousel-plugins/images/1.jpg" alt="">
                     <h4 class="black-color">Ubuntu</h4>
                    <p class="black-color">There's a kind of war going on and we're all caught in the middle. In that war, the two superpowers are Microsoft and Apple. The battlefield is the operating system.</p>
                </div>
                <div class="item"><img src="Elearning/owl-carousel-plugins/images/2.jpg" alt="">
                  
                  <h4 class="black-color">Mathematics</h4>
                    <p class="black-color">Mathematics as a formal area of teaching and learning was developed about 5,000 years ago by the Sumerians.</p>
                  </div>
                <div class="item"><img src="Elearning/owl-carousel-plugins/images/3.jpg" alt="">
                  <h4 class="black-color">Oracle and Sun Microsystems</h4>
                    <p class="black-color">Oracle acquired Sun Microsystems in 2010, and since that time Oracle's hardware and software engineers have worked side-by-side to build fully integrated systems and optimized solutions designed to achieve performance levels that are unmatched in the industry</p>
                  </div>
                <div class="item"><img src="Elearning/owl-carousel-plugins/images/4.jpg" alt="">
                  
                  <h4 class="black-color">Java</h4>
                    <p class="black-color">Java allows you to play online games, chat with people around the world, calculate your mortgage interest, and view images in 3D, just to name a few. It's also integral to the intranet applications and other e-business solutions that are the foundation of corporate computing.</p>
                  
                  </div>
                   <div class="item ">                    
                    <img src="Elearning/owl-carousel-plugins/images/1.jpg" alt="">
                     <h4 class="black-color">Ubuntu</h4>
                    <p class="black-color">There's a kind of war going on and we're all caught in the middle. In that war, the two superpowers are Microsoft and Apple. The battlefield is the operating system.</p>
                </div>
                <div class="item"><img src="Elearning/owl-carousel-plugins/images/2.jpg" alt="">
                  
                  <h4 class="black-color">Mathematics</h4>
                    <p class="black-color">Mathematics as a formal area of teaching and learning was developed about 5,000 years ago by the Sumerians.</p>
                  </div>
                <div class="item"><img src="Elearning/owl-carousel-plugins/images/3.jpg" alt="">
                  <h4 class="black-color">Oracle and Sun Microsystems</h4>
                    <p class="black-color">Oracle acquired Sun Microsystems in 2010, and since that time Oracle's hardware and software engineers have worked side-by-side to build fully integrated systems and optimized solutions designed to achieve performance levels that are unmatched in the industry</p>
                  </div>
                <div class="item"><img src="Elearning/owl-carousel-plugins/images/4.jpg" alt="">
                  
                  <h4 class="black-color">Java</h4>
                    <p class="black-color">Java allows you to play online games, chat with people around the world, calculate your mortgage interest, and view images in 3D, just to name a few. It's also integral to the intranet applications and other e-business solutions that are the foundation of corporate computing.</p>
                  
                  </div>
              </div>
            </div>
          </div>
        </div>
    </div> 

    
    <script src="Elearning/owl-carousel-plugins/assets/js/jquery-1.9.1.min.js"></script> 
    <script src="Elearning/owl-carousel-plugins/owl-carousel/owl.carousel.js"></script>


    <!-- Demo -->

    <style>
    #owl-demo .item{  
        margin: 5px;
        color: #FFF;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        text-align: center;
    }
     
    </style>
    <script>
    $(document).ready(function() {
      var owl = $("#owl-demo");

      owl.owlCarousel({

        itemsCustom : [
          [0, 2],
          [450, 3],
          [600, 4]
        ],
        navigation : true,
        autoPlay: true,
        StopOnOver:true

      });
    });
    </script>
        <!-----Category details show------>
        <script>

                $(document).ready(function(){
                   
                    function hideAll(){
                    $("#category-programming-details").hide();
                    $("#category-design-details").hide();
                    $("#category-mathematics-details").hide();
                    $("#category-mobile-details").hide();
                    }
                    
                    hideAll();
                    
                    $("#category-programming").hover(function(){
                        hideAll();
                        $("#category-programming-details").show(); 
                        
                    });
                    $("#category-design").hover(function(){
                        hideAll();
                        $("#category-design-details").show(); 
                        
                    });
                     $("#category-mathematics").hover(function(){
                        hideAll();
                        $("#category-mathematics-details").show(); 
                        
                    });
                     $("#category-mobile").hover(function(){
                        hideAll();
                        $("#category-mobile-details").show(); 
                        
                    });
                    
                    

                });
            </script>
    <script src="Elearning/owl-carousel-plugins/assets/js/bootstrap-collapse.js"></script>
    <script src="Elearning/owl-carousel-plugins/assets/js/bootstrap-transition.js"></script>
    <script src="Elearning/owl-carousel-plugins/assets/js/bootstrap-tab.js"></script>
    <script src="Elearning/owl-carousel-plugins/assets/js/google-code-prettify/prettify.js"></script>
    <script src="Elearning/owl-carousel-plugins/assets/js/application.js"></script>
    </section>
             <!------/owl-carousel-plugins------>
    </section>
   
            </div>
        
        <section id="content" class="no-left  no-right block com_content">						
						<div  class="container">
							
						</div >
						
                    </section>					
        		<section id="yt_spotlight8" class="block">						<div class="container">
							<div class="row">
				
				<div id="bottom2"  class="col-md-4 col-sm-6" >
			    	
	<div class="module  get-in-touch " >
	    		    <h3 class="modtitle">Get In Touch</h3>
	    	    <div class="black-P clearfix">
			
<p>Address: #12, St 323, Sangkat Boeung Kak II,KhanToul Kork, Phnom Penh, Cambodia.</p>
<ul>
<li><span class="lea">Tel:</span>(855)23 99 13 14</li>
<li><span class="lea">Tel:</span>(855)77 77 12 36 (Khmer, English)</li>
<li><span class="lea">Tel:</span>(855)15 4 5555 2 (Khmer, English)</li>
<li><span class="lea">Tel:</span>(855)17 52 81 69(Korean, English))</li>
<li><span class="lea">Email:</span>Email: info.kshrd@gmail.com
phirum.gm@gmail.com</li>
</ul>
	    </div>
	</div>
    
		</div>
				<div id="bottom3"  class="col-md-4 col-sm-6" >
			    	
	<div class="module  useful-link " >
	    		    <h3 class="modtitle">ABOUT US</h3>
	    	    <div class="clearfix">
			
<ul class="menu ">
<li class="item-1537">
    <p class="black-P">Khmer Academy is the first e-learning platform for knowledge sharing in Cambodia. It is developed by Korea Software HRD Center in 2015. All contents are in Khmer language for easy knowledge acquisition. Most contents are related to IT fields and plan to extend more topics. Our mission is to improve education environments of Cambodia by means of IT technologies. Khmer Academy will be a significant education platform which accumulates and shares all kinds of knowledge on internet.</p>
    </li></ul>
	    </div>
	</div>
    
		</div>
				<div id="bottom4"  class="col-md-4 col-sm-6" >
			    	
	<div class="module  clients-say " >
	    		    <h3 class="modtitle">Head Department of korea HRD Center</h3>
	    	    <div class="modcontent clearfix">
			
<div class="carousel-custommer"><div id="yt-extra-carousel" style="width:100%; height:100%" class="yt-extra-carousel carousel slide pull-center" data-ride="carousel" data-interval='false'><div class="carousel-inner"> <div class='item'>
<div class="customslider">
<div class="item-image"><img src="Elearning/images/slide-button/customer1.png" alt="" />
<div class="over-image"> </div>
</div>
<div class="content-main black-P">
<p class="post-commnets">“Dr. Kim is come from South Korea and he want to improve IT in cambodia by create HRD Center”</p>
    <h3 class="title"><span class="use"><i class="black-P"><b>Dr. Kim TaeKyung</b></i> </span> - <b class="white">Director of Korea Software HRD Center</b></h3>
</div>
</div>
</div> <div class='item'>
<div class="customslider">
<div class="item-image"><img src="Elearning/images/slide-button/customer2.png" alt="" />
<div class="over-image"> </div>
</div>
<div class="content-main">
<p class="post-commnets black-P">“ Mr. Chen Phirum is one member in Korea Software HRD Center, He is an Admin Manager sine HRD opened...”</p>
<h3 class="title"><span class="use"><i class="black-P"><b>Mr. Chen Phirum</b></i> </span> - <b class="white">Admin Manager of Korea Software HRD Center</b></h3>
</div>
</div>
</div> <div class='item'>
<div class="customslider">
<div class="item-image"><img src="Elearning/images/slide-button/customer3.png" alt="" />
<div class="over-image"> </div>
</div>
<div class="content-main">
<p class="post-commnets black-P">“Harum congue adipisci nostrum laborum luctus nibh, nihil malesuada modi! Voluptate, eleifend! Excepturi mattis”</p>
<h3 class="title"><span class="use"><i class="black-P">Dr. Kim TaeKyung </span> - Director of Korea Software HRD Center</i></h3>
</div>
</div>
</div> </div><a class="carousel-control left" href="#yt-extra-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a><a class="carousel-control right" href="#yt-extra-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a><ol class="carousel-indicators" ><li data-slide-to="0" data-target="#yt-extra-carousel"></li><li data-slide-to="1" data-target="#yt-extra-carousel"></li><li data-slide-to="2" data-target="#yt-extra-carousel"></li></ol></div></div>
	    </div>
	</div>
    
		</div>
									</div>
						</div>
						
                    </section>			<footer id="yt_footer" class="block">						<div class="container">
							<div class="row">
									<div id="yt_copyright" class="col-sm-12"  >
					
       
		
	
					<div class="copyright">
				Copyright © 2015 Korean HRD Center. All Rights Reserved			</div>
		<div class="designby ">
			Designed by <a target="_blank" title="Vidoes Management" href="#">Group 2 Class BTB</a>
		</div>
			  </div>
									</div>
						</div>
						
                    </footer>			        
		
    		<div id="yt_sticky_right" class="yt-slidePanel hidden-sm hidden-xs" >
			<div class="yt-sticky">
    
			</div>
		</div>
		
        
	<script type="text/javascript">
		
		jQuery(document).ready(function($){
			var events = 'click';
							YTScript.slidePositions('#yt_sticky_right .yt-sticky', 'right', events);
							
		});
		
		
		
	</script>




	<a id="yt-totop" class="backtotop" href="#"><i class="fa fa-angle-up"></i> Top </a>
    <script type="text/javascript">
		jQuery('.backtotop').click(function () {
			jQuery('body,html').animate({
					scrollTop:0
				}, 1200);
			return false;
		});
    </script>


	</div>
	

	
<script type="text/javascript" src="Elearning/plugins/system/EUCookieDirectiveLite/EUCookieDirectiveLite/EUCookieDirective.js"></script>
<script  type="text/javascript">
						function jSelectShortcode(text) {
							jQuery("#yt_shorcodes").removeClass("open");
							text = text.replace(/'/g, '"');
							
							//1.Editor Content
							if(document.getElementById('jform_articletext') != null) {
								jInsertEditorText(text, 'jform_articletext');
							}
							if(document.getElementById('jform_description') != null) {
								jInsertEditorText(text, 'jform_description');
							}
							
							//2.Editor K2
							if(document.getElementById('description') != null) {
								jInsertEditorText(text, 'description');
							}
							if(document.getElementById('text') != null) {
								jInsertEditorText(text, 'text');
							}
							
							//3.Editor VirtueMart 
							if(document.getElementById('category_description') != null) {
								jInsertEditorText(text, 'category_description');
							}
							if(document.getElementById('product_desc') != null) {
								jInsertEditorText(text, 'product_desc');
							}
							
							//4.Editor Contact
							if(document.getElementById('jform_misc') != null) {
								jInsertEditorText(text, 'jform_misc');
							}
							
							//5.Editor Easyblog
							if(document.getElementById('write_content') != null) {
								jInsertEditorText(text, 'write_content');
							}
							
							//6.Editor Joomshoping
							if(document.getElementById('description1') != null) {
								jInsertEditorText(text, 'description1');
							}
							
							//6.Editor HTML
							if(document.getElementById('jform_content') != null) {
								jInsertEditorText(text, 'jform_content');
							}
							
							SqueezeBox.close();
						}
				   </script></body>
</html>