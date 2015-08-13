<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">

<link rel="shortcut icon" href="">

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
				<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<!--====== Videos Play ======-->
					<div class="col-md-8" id="videos_play">
						<div id="myplayerwrapper">
							<video id="vid1" class="video-js vjs-default-skin" controls
								preload="auto" width="640" height="360"></video>
						</div>
						<div style="margin-top: 5px;" class="col-md-12 col-sm-12">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<h2>1.1. Jquery tutorials for beginner students</h2>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<span><img src="../videoplayer/avatar.png" width="50"
										height="50" /><b>Admin</b></span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12" style="text-align: right;">
									<p>
										<img alt="views" src="../videoplayer/eyes.png" width="35"
											style="margin-left: 20px;"> <b style="font-size: 16px;">Veiws:</b>
										989007
									</p>
								</div>
							</div>

							<hr style="border-color: #545D61; height: 1px; margin-top: 0px;" />
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<span class='st_sharethis_large' displayText='ShareThis'></span>
									<span class='st_facebook_large' displayText='Facebook'></span>
									<span class='st_twitter_large' displayText='Tweet'></span> <span
										class='st_linkedin_large' displayText='LinkedIn'></span> <span
										class='st_pinterest_large' displayText='Pinterest'></span> <span
										class='st_email_large' displayText='Email'></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12 pull-right">
									<div class="col-md-12 col-sm-12 col-xs-12 ">
										<div class="pull-right">
											<a style="cursor: pointer;"><i
												class="fa fa-thumbs-up fa-2x"
												style="padding: 0px 10px; color: #3BAFDA;"></i> <span>10398</span>

												<i class="fa fa-thumbs-down fa-2x"
												style="padding: 0px 10px; color: #3BAFDA;"></i><span>10398</span></a>
										</div>

									</div>
								</div>
							</div>

							<div class="row">
								<hr style="padding-top: 30px;">
								<div class="col-md-12">

									<div class="row comments">
										<div class="col-md-12">
											<div class="well">
												<b>Public on June 13, 2015</b> <br /> Learn four methods
												for passing values from one page to another. You'll work
												with Session...PreviousPage...QueryString... the Profile
												Object. For more tips and tutorials, visit
												www.detacheddesigns.com/blog
											</div>

											<form role="form" action="" method="get">
												<div class="form-group">
													<label for="comment">Comment:</label>
													<textarea class="form-control" rows="5" id="comment"></textarea>
												</div>
												<input type="button" value="Comment" id="btnComments"
													class="pull-right btn btn-default" />

											</form>

										</div>
									</div>
									<div id="show_comments"></div>
									<div class="col-md-12 comments box_comment" id="comment_box">
										<div class="row wells">
											<div class="col-md-1">
												<img src="../videoplayer/avatar.png" width="50">
											</div>
											<div class="col-md-11">
												<div class="col-md-4 col-xs-6">
													<span><b>Prem Chanthorn</b></span>
												</div>
												<div class="col-md-4 col-xs-6">10 minutes ago</div>
												<div class="col-md-12 col-xs-12">I really like this
													website.</div>

												<div class="row">
													<div>
														<button class="btn" id="btn_reply">Reply</button>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
								<!------End of Comment------>
							</div>
						</div>
					</div>
					<!--====== PlayList and questions ======-->
					<div class="col-md-4 scrollbar col-sm-12 col-xs-12 bg_black"
						id="playlist_show">
						<div class="tabbable" id="tabs-161102">
							<div>
								<ul class="nav nav-tabs">
									<li class="active"><a class="color_white"
										href="#panel-590992" data-toggle="tab">Playlist</a></li>
									<li><a href="#panel-560832" data-toggle="tab"
										class="color_white">Quiz</a></li>
								</ul>
							</div>
							<div class="tab-content color_white">
								<div class="tab-pane active" id="panel-590992">
									<div id="list_video">

										<!-- 	<a href="#"> <img src="https://i.ytimg.com/vi/DmUv8fwRpXE/default.jpg" width="100" height="60"/>
											<span class="color_white" style="padding-left: 20px;"></span>
										</a> -->


									</div>

								</div>
								<!-- Questions in Playlist -->
								<div class="tab-pane" id="panel-560832">
									<div id="question"></div>

									<div id="answer">

										<button class="btn btn-success" id="btnok" onclick="doOk()">OK</button>
										<button class="btn btn-success" id="btnnext"
											onclick="doNext()">NEXT</button>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
			if (w < 990) {				
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
	<!--====== Video script ======-->
	<script>
		// save a reference to the video element
		video = document.querySelector('video'),
		// save a reference to the video.js player for that element
		player = videojs(video, {
			'techOrder' : [ 'youtube' ],
			'src' : 'https://youtu.be/Wkkshutyv0g'
				<%-- //'src' : 'https://youtu.be/<%=session.getAttrbute("video");%>' --%>
		});

		// initialize the plugin with some custom options:
		player.logobrand({
			image : "logoka.png",
			destination : "http://www.khmeracademy.org/"
		});
	</script>
	<script>
		//var vmgr = document.getElementById("vplayer");

		$('video').mediaelementplayer({
			success : function(media, node, player) {
				$('#' + node.id + '-mode').html('mode: ' + media.pluginType);

				var events = [ 'loadstart', 'play', 'pause', 'ended' ];

				for (var i = 0, il = events.length; i < il; i++) {

					var eventName = events[i];

					media.addEventListener(events[i], function(e) {
						$('#output').append($('<div>' + e.type + '</div>'));
						if (e.type == 'ended') {
							$("#playlistshow").hide();
							$("#quizshow").show();
						}
					});
				}
			}
		});
	</script>
	<!--===== collapse category======-->
	<script>
		//hide button comment
		$(document).ready(function() {
			$("#btnComments").hide();
		});
		//show button comment when cussor in the textarea
		$(document).ready(function() {
			$("#comment").focusin(function() {
				$("#btnComments").fadeIn(1000);
				$("#btnComments").css("margin-bottom", "10px");
			});
			$("#comment").focusout(function() {
				$("#btnComments").fadeOut(500);
				$("#btnComments").css("margin-bottom", "10px");
			});
		});

		//add text form textarea to the div below
		$(document)
				.ready(
						function() {
							$("#btnComments")
									.click(
											function() {
												var a = '<div class="col-md-12 comments box_comment" id="comment_box"><div class="row wells"><div class="col-md-1"><img src="../videoplayer/avatar.png" width="50"></div><div class="col-md-11"><div class="col-md-4 col-xs-6"><span><b>Prem Chanthorn</b></span></div>';
												var b = '<div class="col-md-4 col-xs-6">Just now</div>';
												var c = '<div class="col-md-12 col-xs-12">'
														+ $("#comment").val()
														+ '</div></div></div>';
												$("#comment").val("");

												$("#show_comments").prepend(
														a + b + c);
											});
						});

		var userlike = document.getElementById("UserLike");
		function likeIncrement() {
			$("#ThumbLike").click(function() {
				userlike += 1;
				/*$("#Userlike").text(userlike);*/
				alert(userlike);
			});
		}
	</script>


	<script>
		var answerCorrect = [];
		var question = [];
		var answer = [];
		var nextAnswer = 0;
		var answerStatus = false;
		var childQuestion = [];
		var objAnswer;

		function viewQuestionAnswer() {
			var str = "";
			$.ajax({
				url : "getQandA",
				method : "POST",
				dataType : "JSON",
				data : {
					video_id : 17
				},
				success : function(data) {
					var str = "";
					for ( var i in data) {
						str += i;
					}
				}
			});

		}
		function doCorrect(obj) {
			objAnswer = obj;
		}

		function checkAnswer(correct, obj) {

			objAnswer = obj;
			if (correct == answerCorrect[nextAnswer]) {
				answerStatus = true;
				alert("");
			} else {
				answerStatus = false;

			}
		}

		function doOk() {

			var obj = document.getElementsByClassName("answer");
			obj[answerCorrect[nextAnswer] - 1].style.color = "blue";

			if (answerStatus == false) {

				objAnswer.style.color = "red";

			}

		}
		function doNext() {
			nextAnswer++;
			question[nextAnswer];
		}

		function getVideoPlaylist(){
			var str = "";
			$.ajax({
				url : "getPlayList",
				method : "POST",
				dataType : "JSON",
				data:{
					playlist_id : 1
					},
				success : function(data) {
					for ( var i in data) {
						for(var j in data[i]){
							str +='<div class="bg_playlist" style ="margin-top: 10px;"onclick="window.location= ' + "'?v=" + data[i][j].video_id + "'" + '" > <img src="https://i.ytimg.com/vi/'+ data[i][j].youtube_url +'/mqdefault.jpg" width="100" height="60"/><span class="color_white" style="padding-left: 20px;">'+ data[i][j].video_name+'</span></div>';
							}
					
					}	$("#list_video").html(str);
				}
			});
		}	


		$(document).ready(function() {
			getVideoPlaylist();
			viewQuestionAnswer();
		});
	</script>
</body>
</html>
