<!DOCTYPE html>
<%@page import="model.dto.Video"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<link rel="shortcut icon" href="">
<title>Video Player</title>
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
<script src="../videoplayer/libs/video-js/video.dev.js"></script>
<script src="../videoplayer/youtube.js"></script>
<link href="../videoplayer/css/bootstrap.min.css" rel="stylesheet">
<link href="../videoplayer/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="build/mediaelementplayer.min.css" />
<script src="../videoplayer/build/mediaelement-and-player.min.js"></script>
<!-- cdn jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

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



	<%
		String str;
		String title = "1.1. Jquery tutorials for beginner students";
		long view = 10l;
		long video_id = 0;
		int pl = 1;

		str = "Wkkshutyv0g";

		try {
			Video obj = (Video) session.getAttribute("url");
			if (session.getAttribute("pl") != null)
				pl = Integer
						.parseInt(session.getAttribute("pl").toString());
			//System.out.println(obj.getUrl());
			if (obj == null) {
				str = "Wkkshutyv0g";
				title = "1.1. Jquery tutorials for beginner students";
				view = 10l;
				video_id = 0;
			} else {
				str = obj.getUrl();
				title = obj.getName();
				view = obj.getView();
				video_id = obj.getId();
			}

		} catch (Exception ex) {
			ex.printStackTrace();
			title = "1.1. Jquery tutorials for beginner students";
			view = 10l;
			video_id = 0;
			pl = 1;
			str = "Wkkshutyv0g";
		}
		%>

	<section id="container" class="">
		<!--header start-->
		<header class="header white-bg">
			<div class="sidebar-toggle-box" id="hideshow">
				<div data-placement="right"
					class="fa fa-bars tooltips"></div>
			</div>
			<!--logo start-->
			<a href="#" class="logo"><span>KHEAV</span></a>

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
							src="img/avatar1_small.jpg"> <span class="username"><%=session.getAttribute("user")%></span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li><a href="profile.jsp"><i class=" fa fa-suitcase"></i>Profile</a></li>
							<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="#"><i class="fa fa-bell-o"></i>
									Notification</a></li>
							<li><a href="logout"><i class="fa fa-key"></i> Log Out</a></li>
						</ul></li>
					<!-- user login dropdown end -->
					<li class="sb-toggle-right" id="sms"><i
						class="fa  fa-align-right"></i></li>
				</ul>
			</div>
		</header>
		<!--header end-->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<li class="sub-menu text-center" style="color: #fff;">All Category</li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<!-- <div class="row">
					<div class="col-lg-12">
						breadcrumbs start
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li class="active">Courses</li>
						</ul>
						breadcrumbs end
					</div>
				</div> -->
				<!-- Include other page here -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<!--====== Videos Play ======-->
								<div class="col-md-8" id="videos_play" style="padding:0px;">
									<div id="myplayerwrapper">
										<video id="vid1" class="video-js vjs-default-skin" controls
											preload="auto" autoplay width="640" height="360"
											currentTime="60">
										</video>
									</div>
									<div style="margin-top: 5px;" class="col-md-12 col-sm-12">
										<div class="row" >
											<div class="col-md-12 col-sm-12 col-xs-12 title_video">
												<h2 id="video_title"></h2>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<span><img src="../videoplayer/avatar.png" width="50"
													height="50" /><b>Admin</b></span>
											</div>
											<div class="col-md-6">
											
												<span class=" pull-right" id="lastwatched">Last watched:</span>												 
												
											 </div>
										</div>
										<div class="row">
											<div class="col-md-12" style="text-align: right;">
												<p>
													<b style="font-size: 16px;">Veiws:</b><%=view%>
												</p>
											</div>
										</div>

										<hr
											style="border-color: #545D61; height: 1px; margin-top: 0px;" />
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<span class='st_sharethis_large' displayText='ShareThis'></span>
												<span class='st_facebook_large' displayText='Facebook'></span>
												<span class='st_twitter_large' displayText='Tweet'></span> <span
													class='st_linkedin_large' displayText='LinkedIn'></span> <span
													class='st_pinterest_large' displayText='Pinterest'></span>
												<span class='st_email_large' displayText='Email'></span>
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

														<form role="form" action="" method="post">
															<div class="form-group">
																<label for="comment">Comment:</label>
																<textarea class="form-control" rows="5" id="comment"
																	name="comment"></textarea>
															</div>
															<input type="button" value="Comment" id="btnComments"
																class="pull-right btn btn-default"
																onclick="addComment()" />

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
																	<button class="btn-sm pull-right" id="btn_reply"
																		style="margin: 20px; ">Reply</button>
															<form role="form" action="" method="post" id="form_reply">
															<div class="form-group">
																<label></label>
																<textarea class="form-control" rows="5" id="comment_reply"
																	name="comment"></textarea>
															</div>
															<input type="button" value="Reply" id="btnComments"
																class="pull-right btn btn-default"
																onclick="addComment()" style="margin-right: 20px;"/>
															</form>
															
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
								<div class="col-md-4"
									style="background-color: #337AB7; height: 55px; color: white;" id="playlist_show_header">
									<span class="pull-right text-center"
										style="color: white; margin-top: 13px;" id="totalvideo">Result
										: 0 Videos</span> <span class="text-center pull-left"
										style="color: white; margin-top: 13px;">Learn Java</span>
								</div>
								<div class="col-md-4 scrollbar col-sm-12 col-xs-12 bg_black"
									id="playlist_show">									
											 <div id="list_video" class="color_white"></div>
								</div>	
								
								<!-- bar proccess -->	
								<div id="bar_proccess">
								
								<h1>Total watched</h1>							
								 <div class="progress">
									  <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar"
 											 aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%;" id="totalwatched">
									   50%
									  </div>
								</div>	
								</div>
								<!-- End proccess bar -->				
							</div>
						</div>
					</div>
					
					<!-- Right playlist -->
										
					<div class="sb-slidebar sb-right sb-style-overlay" style="padding:15px;">
					
						<div style="padding-bottom:20px;">						
							<div class="col-md-6 col-sm-6 col-xs-12" id="category_title"></div>					
							<div class="col-md-6 col-sm-6 col-xs-12" id="totalvideo_small"></div>
							
						</div>
						<hr />
						<div id="list_video_small" class="color_white title_playlist">
						
						</div>
					</div>
					<!-- Right Slidebar end -->
			</section>
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
		
		//var vPlayer = document.getElementById("vid1");
				
		/*
			vPlayer.loop = true;
		*/
		$(document).ready(function() {	
			 
			 
			srollhide();
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
			$("#btn_reply").click(function(){
				$("#form_reply").show();
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
	</script>
	<!-- hide some header when scroll less than 768px  -->
	<script>
		function srollhide() {
			var w = innerWidth;
			if (w < 990) {				
				$("#languages").hide();
				$("#search").hide();				
				$("#playlist_show").hide();
				$("#playlist_show_header").hide();
				$("#sms").show();

			}else{
				
				$("#languages").show();
				$("#search").show();
				$("#sms").hide();
				$("#playlist_show").show();
				$("#playlist_show_header").show();
			}			
		}
	</script>
	<!--====== Video script ======-->
	<script>
		// save a reference to the video element
		<%-- video = document.querySelector('video');
		player = videojs(video, {
			'techOrder' : [ 'youtube' ],			
			'src' : 'https://youtu.be/<%=str%>'
		}); --%>

		$(function() {
			var vid = document.getElementById("vid1");
			vid.defaultMuted = false;
		});
		
		function che() {
			var strcurrent = $(".vjs-current-time-display").text();
			strcurrent = strcurrent.replace("Current Time", "");
			//alert(strcurrent);
			//alert($(".vjs-duration-display").text());

			//video.currentTime();
		}
	</script>
	
	<!--===== collapse category======-->
	<script>
	
		//hide button comment
		$(document).ready(function() {			
			
			$("body").click(function(){
				
				//location.href= "www.google.com";
				//alert(11);
			});
			//$("body").mousemove(function(){
			
			setInterval(function(){
				
				var end_time = ($(".vjs-duration-display").text());
				var current_time = ($(".vjs-current-time-display").text());
				var cur_min = 0;
				var cur_sec = 0;
				var end_min = 0;
				var end_sec = 0;
				
				end_time = end_time.replace("Duration Time ","");
				current_time = current_time.replace("Current Time ","");
				
				if(end_time.length<5)
					end_time = "0" + end_time;
				if(current_time.length < 5)
					current_time = "0" + current_time;
				
				//cur_min = current_time.substr(0,2);				
				
				if(end_time != "Duration Time 0:00"){
					
					//addWatched(<%=session.getAttribute("userID")%>, <%=video_id%>,current_time);
					//alert("date is added");
										
				}				
			},10000); //redo for 30s 30000
			
			$("#form_reply").hide();
			$("#btnComments").hide();
		});
		
		
		function addWatched(user_id, video_id, time){
			
			$.ajax({
				url : "addWatched",
				method : "POST",
				dataType : "JSON",
				data : {
					user_id : user_id,
					video_id: video_id,
					time: time				
				},
				success : function(data) {
					//alert(data);
				}
			});	
			
		}
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
		$(document).ready(function() {
				$("#btnComments").click(function() {
						var a = '<div class="col-md-12 comments box_comment" id="comment_box"><div class="row wells"><div class="col-md-1"><img src="../videoplayer/avatar.png" width="50"></div><div class="col-md-11"><div class="col-md-4 col-xs-6"><span><b>Prem Chanthorn</b></span></div>';
						var b = '<div class="col-md-4 col-xs-6">Just now</div>';
						var c = '<div class="col-md-12 col-xs-12">'
								+ $("#comment").val()
								+ '</div></div>';
						$("#comment").val("");
						$("#show_comments").prepend(a + b + c);
				});
			});
		//function for list playlist 
		function getVideoPlaylist() {
			var str = "";
			var user_id_playlist = <%=session.getAttribute("userID")%>;
			<%int playlist_id=Integer.parseInt(request.getParameter("p"));%>
			$.ajax({
					    url : "getPlayList",
						method : "POST",
						dataType : "JSON",
						data : {
							playlist_id :<%=playlist_id%>
					},
						success : function(data) {
							var substring = "";
							var video_watched = "";
							var count = 0;
							var img_style;
							var totalwatch = 0;
							var lastwatched = "Just watch!!!";
							
							for ( var i in data) {
								for ( var j in data[i]) {
									substring = data[i][j].video_name;
									//alert(substring);
									if (substring.length > 32) {
										substring = substring.substr(0, 29)
												+ "...";
									}
									if(data[i][j].user_id == user_id_playlist){
										
										var str1 = '<b> Watched </b>';
										totalwatch++;
										
										if(data[i][j].time.length < 5){
											str1 += '0';	
										}	
										
										video_watched = str1 + data[i][j].time ;																
												if(data[i][j].time == "completed"){															
												video_watched = '<b style=" margin-left: 15px; margin-right: 10px;">Completed</b>';	
											}
										img_style ='style="opacity:0.8;"';
									}
									else{
										video_watched='<span style="visibility:hidden;"><b> Watched </b>09:00</span>';
										img_style = 'style="opacity:1;"';
									}
									if((data[i][j].user_id == <%=session.getAttribute("userID")%>) && (data[i][j].video_id == <%=video_id%>)) {
										lastwatched = "Last watched : " + data[i][j].time + " minute(s)" ;	
										if(data[i][j].time =="completed"){lastwatched = data[i][j].time + " watch!";}
										
									}
									
									str += '<div class="bg_playlist title_playlist playlist_display"onclick="window.location= '
											+ "'playervideo?p="+<%=playlist_id%>+"&v="
											+ data[i][j].video_id
											+ "'"
											+ '"><span class ="watched_Video" onclick="che()">'+ video_watched +'</span><img src="https://i.ytimg.com/vi/'+ data[i][j].youtube_url+'/mqdefault.jpg" width="150" height="80"'+ img_style +'/><span style="padding-left:15px;">'
											+ substring + '</span></div>';
									count++;
								}	
							}
							var percentwatch = Math.ceil((totalwatch*100)/count) + "%";
							$("#totalvideo").html(
									"Result : " + count + " videos");
							$("#totalvideo_small").html(
									"Result : " + count + " videos");
							$("#list_video").html(str);
							$("#list_video_small").html(str);							
							$("#totalwatched").html( totalwatch+ " video(s) " + " (" +percentwatch +")");
							$("#totalwatched").attr("style", " color:#000000; width: " + percentwatch);
							$("#lastwatched").html(lastwatched);
							
						}
					});
		}
		
		function getDefaultVideo(){
			var video_title = "";
			$.ajax({
				url : "getDefaultVideo",
				method : "POST",
				dataType: "JSON",
				data:{
					playlist_id : <%=request.getParameter("p")%>
				},
				success: function(data){
					video = document.querySelector('video');
					player = videojs(video, {
						'techOrder' : [ 'youtube' ],			
						'src' : 'https://youtu.be/'+data.url+''
					});
					video_title += data.name;
					$("#video_title").html(video_title);
				}
			});			
		}
		 
		/* $(document).ready(function(){
			$("")
			
		});  */
		
		//function for get videos play when 
		function getVideoPlay(playlist_id) {
			$.ajax({
				url : "playVideo",
				method : "POST",
				dataType : "JSON",
				data : {
					playlist_id : playlist_id
				},
				success : function(data) {
					//alert(data);
				}
			});
		}
		//increase 1 for view once videos
		function upVideoView() {
			$.ajax({
				url : "getViewVideo",
				method : "POST",
				dataType : "JSON",
				data : {
					video_id :<%=video_id%>
				},
				success : function(data) {
					//alert(data);
				}
			});
		}

		//function for add comment
		function addComment() {
			$.ajax({
				url : "addComment",
				method : "POST",
				data : {
					comment : $("#comment").val(),
					user_id : <%=session.getAttribute("userID")%>,
					video_id :<%=video_id%>,
				}
			});
		}
		getDefaultVideo();
		upVideoView();
		getVideoPlaylist();
	</script>

</body>
</html>
