<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mosaddek">
<meta name="keyword"
	content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<link rel="shortcut icon" href="img/favicon.html">

<title>Navigate</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!--right slidebar-->
<link href="css/slidebars.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="css/owl.theme.css" />




<!-- videoplayer script and style -->
<link rel="stylesheet" href="../videoplayer/libs/video-js/video-js.css">
<link rel="stylesheet" href="../videoplayer/src/videojs.logobrand.css">
<script src="../videoplayer/libs/video-js/video.js"></script>
<script src="../videoplayer/youtube.js"></script>
<link href="../videoplayer/css/bootstrap.min.css" rel="stylesheet">
<link href="../videoplayer/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="build/mediaelementplayer.min.css" />
<script src="../videoplayer/build/jquery.js"></script>
<script src="../videoplayer/build/mediaelement-and-player.min.js"></script>

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

<body onresize="srollhide()">
	<section id="container" class="">
		<!--header start-->
		<header class="header white-bg">
			<div class="sidebar-toggle-box" id="hideshow">
				<div data-original-title="Toggle Navigation" data-placement="right"
					class="fa fa-bars tooltips"></div>
			</div>
			<!--logo start-->
			<a href="index-2.html" class="logo">Khmer<span>Academy</span></a>

			<!--logo end-->

			<div class="top-nav ">
				<form class="navbar-form navbar-left" role="search" id="search">
					<div class="form-group">
						<input type="text" class="form-control input-sm"
							placeholder="Search">
					</div>
					<button type="submit" class="btn btn-primary btn-sm">Search</button>
				</form>
				<ul class="nav pull-right top-menu">

					<li class="dropdown language" id="languages"><a
						data-close-others="true" data-hover="dropdown"
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <img
							src="img/flags/us.png" alt=""> <span class="username">US</span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#"><img src="img/flags/us.png" alt="">
									English</a></li>
							<li><a href="#"><img src="img/flags/kh.png" alt="">
									Khmer</a></li>
							<li><a href="#"><img src="img/flags/kr.png" alt="">
									Korean</a></li>
						</ul></li>
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="img/avatar1_small.jpg"> <span class="username">Sophath
								Chan</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li><a href="profile.jsp"><i class=" fa fa-suitcase"></i>Profile</a></li>
							<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="#"><i class="fa fa-bell-o"></i>
									Notification</a></li>
							<li><a href="login.html"><i class="fa fa-key"></i> Log
									Out</a></li>
						</ul></li>
					<!-- user login dropdown end -->
					<li class="sb-toggle-right" id="sms"><i class="fa  fa-align-right"></i>
					</li>
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
				<!-- Include other page here -->
				
				<jsp:include page="../videoplayer/index.jsp"></jsp:include>	
							
				<!-- Right Slidebar start -->
				<div class="sb-slidebar sb-right sb-style-overlay">
					<h5 class="side-title">Messages</h5>
				</div>
				<!-- Right Slidebar end -->
				<!--footer start-->
				<footer class="site-footer">
					<div class="text-center">
						2015 &copy; KHMERA CADEMY<a href="#" class="go-top"> <i
							class="fa fa-angle-up"></i>
						</a>
					</div>
				</footer>
				<!--footer end-->
			</section>
		</section>
	</section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="js/respond.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!--right slidebar-->
	<script src="js/slidebars.min.js"></script>
	<!--common script for all pages-->
	<script src="js/common-scripts.js"></script>

	<script>
		$(document).ready(function() {
			viewCategory();
			$(".owl-demo").owlCarousel({
				autoPlay : 3000, //Set AutoPlay to 3 seconds
				stopOnHover : true,
				//items : 6,
				itemsDesktop : [ 1000, 6 ], //5 items between 1000px and 901px
				itemsDesktopSmall : [ 900, 3 ], // betweem 900px and 601px
				itemsTablet : [ 600, 2 ], //2 items between 600 and 0
				itemsMobile : false
			// itemsMobile disabled - inherit from itemsTablet option
			});

		});

		/* function viewCategory() {
			var str = "";
			$
					.ajax({
						url : "listAllCategory",
						method : "POST",
						dataType : "JSON",
						success : function(data) {
							var count = 0;
							var ind = 0;
							var strsup = "";
							var str = "";
							for ( var i in data) {
								//alert(i);

								strsup += '<li class="sub-menu"><a href="javascript:dopro('+count+');"><i class="fa fa-book"></i> <span>'+ i+'</span><span class="badge pull-right">'+ind+'</span></a>';

								for ( var j in data[i]) {
									//	alert(data[i][j].name);
									ind++;
									str += "<ul class='sub" +count +" sub'><li><a href='#'>"
											+ data[i][j].name
											+ "</a></li></ul>";

								}
								strsup += '<li class="sub-menu"><a href="javascript:dopro('
										+ count
										+ ');"><i class="fa fa-book"></i> <span>'
										+ i
										+ '</span><span class="badge pull-right">'
										+ ind + '</span></a>' + str;
								str = "";
								count++;
								ind = 0;
							}
							$("#nav-accordion").html(strsup + "</li>");
							$(".sub0").slideDown(1000);
							
							$("li .sub-menu").addClass("active");
						}
					});
		} */
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
								str += "<ul class='sub" +count +" sub'><li><a href='#'>"+ data[i][j].name+ "</a></li></ul>";
							}
							strsup += '<li class="sub-menu"><a href="javascript:dopro('+ count+ ');"><i class="fa fa-book"></i> <span>'+ i+ '</span><span class="badge pull-right">'+ ind + '</span></a>' + str;
							str = "";
							count++;
							ind = 0;
						}
						$("#nav-accordion").html(strsup + "</li>");
						$(".sub0").slideDown(1000);
						$("li .sub-menu").addClass("active");
					}
				});
			}

		function dopro(id) {
			$(".sub").slideUp();
			$(".sub" + id).slideToggle();
		}
				
	</script>
		<!-- hide some header when scroll less than 768px  -->
	<script>

		function srollhide() {
			var w = innerWidth;
			if (w < 768) {				
				$("#languages").hide();
				$("#search").hide();
				$("#sms").hide();
				$("#playlist_show").hide();

			}else{
				
				$("#languages").show();
				$("#search").show();
				$("#sms").show();
				$("#playlist_show").show();
			}
		}
	</script>



</body>
</html>
