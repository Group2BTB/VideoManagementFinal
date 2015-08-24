<!DOCTYPE html>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mosaddek">
<meta name="keyword"
	content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<link rel="shortcut icon" href="img/favicon.html">

<title>Learning Room</title>

<!-- Bootstrap core CSS -->
<link href="Dashboard/css/bootstrap.min.css" rel="stylesheet">
<link href="Dashboard/css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="Dashboard/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!--right slidebar-->
<link href="Dashboard/css/slidebars.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="templates/css/style.css" rel="stylesheet">
<link href="Dashboard/css/style-responsive.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="Dashboard/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="Dashboard/css/owl.theme.css" />

<style>
.owl-demo .item {
	margin: 3px;
}

.owl-demo .item img {
	display: block;
	width: 100%;
	height: auto;
}
</style>

</head>

<body>
	<section id="container" class="">
		<!--header start-->
		<header class="header white-bg">
			<div class="sidebar-toggle-box" id="hideshow">
				<div data-original-title="Toggle Navigation" data-placement="right"
					class="fa fa-bars tooltips"></div>
			</div>
			<!--logo start-->
			<a href="http://localhost:8080/VideoManagementFinal/ELearning/index.jsp" class="logo"><span>KHEAV</span></a>

			<!--logo end-->

			<div class="top-nav ">

				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control input-sm"
							placeholder="Search">
					</div>
					<button type="submit" class="btn btn-primary btn-sm">Search</button>
				</form>
				<ul class="nav pull-right top-menu">

					<!-- <li class="dropdown language"><a data-close-others="true"
						data-hover="dropdown" data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img src="Dashboard/img/flags/us.png"
							alt=""> <span class="username">US</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#"><img src="Dashboard/img/flags/us.png" alt="">
									English</a></li>
							<li><a href="#"><img src="Dashboard/img/flags/kh.png" alt="">
									Khmer</a></li>
							<li><a href="#"><img src="Dashboard/img/flags/kr.png" alt="">
									Korean</a></li>
						</ul></li> -->
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="Dashboard/img/avatar1_small.jpg"> <span class="username"><%=session.getAttribute("user")%></span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li><a href="http://localhost:8080/VideoManagementFinal/ELearning/Dashboard/profile.jsp"><i class=" fa fa-suitcase"></i>Profile</a></li>
							<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="#"><i class="fa fa-bell-o"></i>
									Notification</a></li>
							<li><a href="logout"><i class="fa fa-key"></i> Log Out</a></li>
						</ul></li>
					<!-- user login dropdown end -->
					<!-- <li class="sb-toggle-right"><i class="fa  fa-align-right"></i>
					</li> -->
				</ul>
			</div>
		</header>
		<!--header end-->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<li class="sub-menu text-center" style="color: #fff;">All
						Category</li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div class="row">
					<div class="col-lg-12">
						<!--breadcrumbs start -->
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li class="active">Courses</li>
						</ul>
						<!--breadcrumbs end -->
					</div>
				</div>
				<section class="panel">
					<header class="panel-heading"> Popular Courses </header>
					<div class="panel-body">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div id="videopopular"></div>
						</div>
					</div>
				</section>
				
				<section class="panel">
					<header class="panel-heading"> Recommended Courses </header>
					<div class="panel-body">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div id="videorecomment"></div>
						</div>
					</div>
				</section>

				<!--main content end-->
				<!-- Right Slidebar start -->
				<div class="sb-slidebar sb-right sb-style-overlay">
					<h5 class="side-title">Messages</h5>
				</div>
				<!-- Right Slidebar end -->
				
			</section>
		</section>
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				2015 &copy; KHMERACADEMY<a href="#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	
	
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="Dashboard/js/jquery.js"></script>
	<script src="Dashboard/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="Dashboard/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="Dashboard/js/jquery.scrollTo.min.js"></script>
	<script src="Dashboard/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="Dashboard/js/respond.min.js"></script>
	<script src="Dashboard/js/owl.carousel.js"></script>
	<!--right slidebar-->
	<script src="Dashboard/js/slidebars.min.js"></script>
	<!--common script for all pages-->
	<script src="Dashboard/js/common-scripts.js"></script>

	<script>
			
		$(document).ready(function() {
			viewCategory();
			getRecommentVideo();
			getVideoPopular();
		});
		
		function popularvideo(){
			$("#popularcarosel").owlCarousel({
				autoPlay : 3000, //Set AutoPlay to 3 seconds
				stopOnHover : true,
				//items : 6,
				itemsDesktop : [ 1000, 6 ], //5 items between 1000px and 901px
				itemsDesktopSmall : [ 900, 3 ], // betweem 900px and 601px
				itemsTablet : [ 600, 2 ], //2 items between 600 and 0
				itemsMobile : false
			// itemsMobile disabled - inherit from itemsTablet option
			});
		}
		
		function getVideoPopular(){
			$.ajax({
				url : "getPopVideo",
				method : "POST",
				dataType: "JSON",
				success: function(data){
					var str = "";
					str += '<div class="product-list" id="popularcarosel">';
					for ( var i in data) {
						str+='<div class="item" style="margin-right: 10px;">';
							str+='<section class="panel">';
								str+='<div class="pro-img-box">';
									str+='<a href="playervideo?p='+data[i].playlist_id+'&v='+data[i].video_id+'"><img src="https://i.ytimg.com/vi/'+data[i].youtube_url+'/mqdefault.jpg"><i class="fa-graduation-cap"></i></a>';
								str+='</div>';
								str+='<div class="panel-body text-center">';
									str+='<h4>';
										str+='<a href="playervideo?p='+data[i].playlist_id+'&v='+data[i].video_id+'" class="pro-title">'+data[i].video_name+'</a>';
									str+='</h4>';
								str+='</div>';
							str+='</section>';
						str+='</div>';
					}
					str +='</div>';
					$("#videopopular").html(str);
					popularvideo();
				}
			});
		}

		function viewCategory() {
			$.ajax({
					url : "listAllCategory",
					method : "POST",
					dataType : "JSON",
					success : function(data) {
						var count = 0;
						var ind = 0;
						var strsup = "";
						var str = "";
						for ( var i in data) {
							for ( var j in data[i]) {
								ind++;
								str += "<ul class='sub" +count +" sub'><li><a href='playlist?p="+ data[i][j].plId +"'>"+ data[i][j].name+ "</a></li></ul>";
								//alert(data[i][j].name);
							}
							strsup += '<li class="sub-menu"><a href="javascript:dopro('+ count+ ');" onclick="doAddClass(this)"><i class="fa fa-book"></i> <span>'+ i + '</span><span class="badge pull-right">'+ ind + '</span></a>' + str;
							str = "";
							count++;
							ind = 0;
						}
						$("#nav-accordion").html(strsup + "</li>");						
					}
				});
			}

		function dopro(id) {
			$(".sub").slideUp();
			$(".sub" + id).slideToggle();
		}
		function doAddClass(obj){
			$(".active").removeClass("active");
			$(obj).addClass("active");
		}
		/* $("#nav-accordion").click(function(){
			$(".sub").slideToggle(1000);
			//alert(12345);
		}); */
		function myrecommendvideo(){
			$("#recommendvideo").owlCarousel({
				autoPlay : 3000, //Set AutoPlay to 3 seconds
				stopOnHover : true,
				//items : 6,
				itemsDesktop : [ 1000, 6 ], //5 items between 1000px and 901px
				itemsDesktopSmall : [ 900, 3 ], // betweem 900px and 601px
				itemsTablet : [ 600, 2 ], //2 items between 600 and 0
				itemsMobile : false
			// itemsMobile disabled - inherit from itemsTablet option
			});
		}
		function getRecommentVideo() {
			var str = "";
			$.ajax({
				url : "getRecVideo",
				method : "POST",
				dataType : "JSON",
				success : function(data) {
					
					str += '<div class="product-list" id="recommendvideo">';
					for ( var i in data) {
						str+='<div class="item" style="margin-right: 10px;">';
							str+='<section class="panel">';
								str+='<div class="pro-img-box">';
									str+='<a href="playervideo?p='+data[i].playlist_id+'&v='+data[i].video_id+'"> <img src="https://i.ytimg.com/vi/'+data[i].youtube_url+'/mqdefault.jpg"><i class="fa-graduation-cap"></i></a>';
								str+='</div>';
								str+='<div class="panel-body text-center">';
									str+='<h4>';
										str+='<a href="playervideo?p='+data[i].playlist_id+'&v='+data[i].video_id+'" class="pro-title">'+data[i].video_name+'</a>';
									str+='</h4>';
								str+='</div>';
							str+='</section>';
						str+='</div>';
					}
					str +='</div>';
					$("#videorecomment").html(str);
					myrecommendvideo();
				}
			});
		}
	</script>
</body>
</html>
