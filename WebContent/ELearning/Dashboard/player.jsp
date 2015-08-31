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
<link rel="stylesheet" href="../videoplayer/build/mediaelementplayer.min.css" />
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
										<video id="vid1" class="video-js vjs-default-skin vjs-big-play-centered" controls
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
													height="50" /><b id="uploader">Admin</b></span>
											</div>
											<div class="col-md-6">
											
												<span class=" pull-right" id="lastwatched">Last watched:</span>												 
												
											 </div>
										</div>
										<div class="row">
											<div class="col-md-12" style="text-align: right;">
											
												<p>	
											
													<b id="count_comment" style="font-size: 16px; border-right:1px solid #000;">Comments: </b><b id="count_views" style="font-size: 16px;">Veiws:</b> 
												</p>
											</div>
										</div>
										<button class="btn" id="show_study_process">Show study process</button>
										<div id="study_process">
												
										</div>
										<hr style="border-color: #545D61; height: 1px; margin-top: 0px;" />
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
										
										
										<div class="row container-full">
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
																<textarea class="form-control" rows="3" id="comment"
																	name="comment"></textarea>
															</div>
															<p id="comment_empty"></p>
															<input type="button" value="Comment" id="btnComments"
																class="pull-right btn btn-default"
																/>
														</form>
													</div>
												</div>
												
												 <div class="col-md-12 comments" id="comment_box">
													
												</div> 
											</div>
											<!------End of Comment------>
										</div>
									</div>
								</div>
								<!--====== PlayList and questions ======-->
								<div class="col-md-4"
									style="background-color: #1A1A1A; height: 55px; color: white;   border-bottom:1px solid #fff;"  id="playlist_show_header">
									<span class="pull-right text-center"
										style="color: white; margin-top: 13px;" id="totalvideo">Result
										: 0 Videos</span> <span class="text-center pull-left"
										style="color: white; margin-top: 13px;">Video Playlist</span>
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
<script src="../js/videojs-seek.js"></script>
<script src="../js/Gruntfile.js"></script>


	<script>
	    var times = 0;
		var new_video_id = 0;
		var new_playlist_id  = <%=request.getParameter("p")%>;
		var count_views = 0;
		
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
								str += "<ul class='sub" +count +" sub'><li><a href='../playlist?p="+ data[i][j].plId +"'>"+ data[i][j].name+ "</a></li></ul>";
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
	
	//convert time		
	function convert_time(str_time){	
		//alert(str_time);
		str_time = str_time+"";
		var s=(str_time.split(":"));
		var sec=(Number(s[0]*60))+Number(s[1]);
		
		return (sec);
		
	}
	function myplayers(url, time){
		video = document.querySelector('video');
		player = videojs(video, {
			'techOrder' : [ 'youtube' ],			
			'src' : 'https://youtu.be/'+url+''
			//'preload': 'auto'
		},
		function() {
			  this.seek({ 'seek_param': time });
			}
		);		
	}
	function getVideoPlay(video_id, times){
		//player.pause();
		//var video_title = "";
		
		$.ajax({
			url : "playVideo",
			method : "POST",
			dataType : "JSON",
			data : {
			video_id : video_id
			},
			success : function(data) {
				
				new_video_id = video_id; 
				count_views = data.view;
				$("#count_views").html( "  View : " +count_views);
				upVideoView();

				//alert(  " vdo id " + new_video_id);
				getVideoPlaylist();
				//alert(data.url);
				//getCommentWithSub(video_id);
				addVideoHistory(video_id);
				$("#video_title").html(data.name);
				getVideoPlaylist();
				player.src('https://www.youtube.com/watch?v='+data.url+'');
				player.ready(function(){
					player.currentTime(times);
				});
			 	player.load();
				player.play();
				player.show(); 	 			
				//action click
				getCommentWithSub(video_id);
				
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
				new_video_id = data.id;	
				count_views = data.view;
				$("#count_views").html( "  View : " +count_views);
				video_title += data.name;
				$("#video_title").html(video_title);
				getCommentWithSub(data.id);
				addVideoHistory(data.id);
				myplayers(data.url,convert_time(data.time));
			}
		});			
	}
		function srollhide() {
			var w = innerWidth;
			if (w < 990) {
				
				$("#languages").hide();
				$("#search").hide();				
				$("#playlist_show").hide();
				$("#playlist_show_header").hide();
				$("#sms").show();
				$("#bar_proccess").hide();
				$("#show_study_process").show();
				$("#study_process").html("");
				$("#study_process").append($("#bar_proccess").html());				

			}else{
				
				$("#languages").show();
				$("#search").show();
				$("#sms").hide();
				$("#playlist_show").show();
				$("#playlist_show_header").show();
				$("#show_study_process").hide();
				$("#bar_proccess").show();
				$("#study_process").hide();
				
			}			
		}
		
		$("#show_study_process").click(function(){
			$("#study_process").toggle();
			
			
			if($("#show_study_process").text()=="Show study process")
			{$("#show_study_process").text("Hide process bar")}
				else{$("#show_study_process").text("Show study process")}			
		});
		
		
		
	</script>
	<!--====== Video script ======-->
	<script>
		// save a reference to the video element
		$(function() {
			var vid = document.getElementById("vid1");
			vid.defaultMuted = false;
		});
		
		function che() {
			var strcurrent = $(".vjs-current-time-display").text();
			strcurrent = strcurrent.replace("Current Time", "");
		}
	</script>	
	
		<!--===== collapse category ======-->
	
	<script>
	
		//hide button comment
		$(document).ready(function() {			
			
			$("body").click(function(){
				
				//location.href= "www.google.com";
				//alert(11);
			});
			//$("body").mousemove(function(){
		function set_time(){					
			var cur_min = 0;
			var cur_sec = 0;
			var end_min = 0;
			var end_sec = 0;
			var old_cur_time = "";			
			
			setInterval(function(){
				
				var end_time = ($(".vjs-duration-display").text());
				var current_time = ($(".vjs-current-time-display").text());
			
				
				if(end_time != "Duration Time 0:00"){				
					
					end_time = end_time.replace("Duration Time ","");
					current_time = current_time.replace("Current Time ","");
					
					if(end_time.length<5)
						end_time = "0" + end_time;
					if(current_time.length < 5)
						current_time = "0" + current_time;
					
					if(current_time == end_time){ addWatched(<%=session.getAttribute("userID")%>, new_video_id,"completed"); return; 					
						
					}
					
					if(old_cur_time != current_time){
						//add minute to table	
						addWatched(<%=session.getAttribute("userID")%>, new_video_id,current_time);						
						old_cur_time = current_time;
					}
				}
				
			},10000);//redo for 30s 30000
	
		}		
			set_time();
			
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
		//add text form textarea to the div below
		$(document).ready(function() {		
			//show button comment when cussor in the textarea
			$("#form_reply").hide();
			$("#btnComments").hide();			
			$("#comment").focusin(function() {
				
				$("#btnComments").fadeIn();
				$("#btnComments").css("margin-bottom", "10px");
			});
			$("#comment").focusout(function() {
				$("#btnComments").fadeOut();
				$("#btnComments").css("margin-bottom", "10px");
			});	
			$("#btn_cancel").click(function(){							
				$("#form_reply").hide();
				$("#btn_reply_click").show();	
			}); 
			
			//reply comment
				$("#btnComments").click(function() {
				
					var a =	'<div class="row" style= "border:1px solid rgb(206, 188, 188); border-radius:5px; padding:5px; margin-top:5px;"><div class="col-md-1 col-sm-1 col-xs-3 img-responsive"><img src="../videoplayer/avatar.png" width="50"></div>'+
								'<div class="col-md-10 col-sm-10 col-xs-9" id="list_parent_comment"><div>'+
								'<span><b><%=session.getAttribute("user")%></b></span></div><div id="time_comment">Just now</div><br /><div id="content_comment">'+$("#comment").val()+'</div>';
								
					var b ='<div class="row"><div class="col-md-2 col-sm-2"></div><div class="col-md-11 col-sm-11 col-xs-12">'+
								'<form role="form" action="" method="post" id="form_reply"><div class="form-group"><label></label><textarea class="form-control " rows="2" id="comment_reply" name="comment"></textarea></div>'+
								'<input type="button" value="Reply" id="btn_replys" class="pull-right btn btn-default"/></form></div></div>'+
							 	'<div class="row" id="show_reply_com"></div></div>';
							 	
						addComment();			 	
						$("#comment").val("");						
						$("#comment_box").prepend(a+b);						
						
							$("#btn_replys").click(function(){							
							var c ='<div class="col-md-12" style="padding: 5px; border-top: 1px solid rgb(201, 165, 165); border-radius: 0px; margin-top: 10px; width: 90%;"><div class="col-md-1 col-sm-1 col-xs-2"><img src="../videoplayer/avatar.png" width="50"></div><div class="col-md-10 col-sm-10 col-xs-10" ><span class="col-xs-12">'
									+'<b>Chann vihcet</b></span>'+
									'<div class="col-xs-12">10 minutes agos</div><br /><div class="col-xs-12" id="reply_com">' +$("#comment_reply").val()+ '</div></div></div>';				
												 
							
							$("#show_reply_com").prepend(c);
							$("#show_reply_com").show();
							$("#comment_reply").val(""); 
							
						});	
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
							playlist_id :new_playlist_id,
							user_id : user_id_playlist
						},
						success : function(data) {							
							var substring = "";
							var video_watched = "";
							var count = 0;
							var img_style;
							var totalwatch = 0;
							var lastwatched = "Just watch!!!";
							var url_videos = "";
							
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
										$("#watched-later").css("opacity:1");
									}
									else{
										video_watched='<span style="visibility:hidden;"><b> Watched </b>09:00</span>';
										img_style = 'style="opacity:1;"';
									}
									if((data[i][j].user_id == <%=session.getAttribute("userID")%>) && (data[i][j].video_id == new_video_id)) {
										times = data[i][j].time;
										url_videos = data[i][j].youtube_url;
										lastwatched = "Last watched : " + data[i][j].time + " minute(s)" ;											
										if(data[i][j].time =="completed"){ lastwatched = data[i][j].time + " watch!";
										}	
									}

									str += '<div class="bg_playlist title_playlist playlist_display" onclick="getVideoPlay('+ data[i][j].video_id+','+convert_time(data[i][j].time)+')"> <span class ="watched_Video" onclick="che()">'+ video_watched +'</span><span class="glyphicon glyphicon-time" id="watched-later" onclick="addVideoWatchedLater('+ data[i][j].video_id+')"></span><img src="https://i.ytimg.com/vi/'+ data[i][j].youtube_url+'/mqdefault.jpg" width="120" height="70"'+ img_style +'/><span style="padding-left:15px;">'

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
							$("#count_views").html( "  View : " +count_views );
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
					video_id : new_video_id
				},
				success : function(data) {
					
				}
			});
		}

		//function for add comment
		
		function addComment(){			
			$.ajax({
				url : "addComment",
				method : "POST",
				data : {
					comment : $("#comment").val(),
					user_id : <%=session.getAttribute("userID")%>,
					video_id :new_video_id,
					parent_id : 0
					
				}
			});
			
		}
		
		
		
		function addSubComment(parent_id, reply_text){			
			$.ajax({
				url : "addComment",
				method : "POST",
				data : {
					comment : reply_text,
					user_id : <%=session.getAttribute("userID")%>,
					video_id :new_video_id,
					parent_id : parent_id
					
				}
			});
			
		}
		
		
	
		function getRecAndPopVideo(){
			var video_id = <%=request.getParameter("v")%>;
			var playlist_id = <%=request.getParameter("p")%>;
			$.ajax({
				url : "playPopAndRecVideo",
				method : "GET",
				data : {
					video_id : video_id,
					playlist_id : playlist_id
				},
				success : function(){
					getVideoPlay(video_id);
				}
			});
		}
		
		function getCommentWithSub(video_id){	
			$("#comment_box").html("");
			
			$.ajax({
				url : "getAllCommentAndSub",
				method : "POST",
				dataType: "JSON",
				data: {
					video_id : video_id
				},
				success: function(data){
					var k = 0;	
					var parent_id = 0;
					var child_id = 0;
					var reply_com_id =0;
					var count_comments = 0 ;	
					
					for(var i in data){
						k=0;
						
						for (var j in data[i] ){
							
							if(data[i][j].description1 != null && k == 0 ){			
								count_comments += 2;
							var a =	'<div class="row" style= "border:1px solid rgb(206, 188, 188); border-radius:5px; padding:5px; margin-top:5px;"><div class="col-md-1 col-sm-1 col-xs-3 img-responsive"><img src="../videoplayer/avatar.png" width="50"></div>'+
							'<div class="col-md-10 col-sm-10 col-xs-9"><div>'+
							'<span><b>'+ data[i][j].userName +'</b></span></div><div id="time_comment">'+ data[i][j].create_date +'</div><br /><div id="content_comment'+ parent_id +'">'+data[i][j].description+'</div>';
							
							var b ='<div class="row"><div class="col-md-2 col-sm-2"></div><div class="col-md-11 col-sm-11 col-xs-12">'+
							'<form role="form" action="" method="post" id="form_reply"><div class="form-group"><label></label><textarea class="form-control " rows="2" id="comment_reply'+reply_com_id +'" name="comment"></textarea></div>'+
							'<input type="button" value="Reply" id="btn_replys" onclick=\"addChildComment(\'show_reply_com' + parent_id + '\',\'comment_reply'+reply_com_id+'\','+ i +')"  class="pull-right btn btn-default"/></form></div></div>'+
						 	'<div class="row" id="show_reply_com'+parent_id+'"></div></div></div>';
						
							$("#comment").val("");						
							$("#comment_box").prepend(a+b);		
								
								var c ='<div class="col-md-12 col-sm-12 col-xs-12 " style="padding: 5px; border-top: 1px solid rgb(201, 165, 165); border-radius: 0px; margin-top: 10px; width: 90%;"><div class="col-md-1 col-sm-1 col-xs-2"><img src="../videoplayer/avatar.png" width="50"></div><div class="col-md-10 col-sm-10 col-xs-10" ><span class="col-xs-12">'
								+'<b>'+ data[i][j].userName1 +'</b></span>'+
								'<div class="col-xs-12">'+ data[i][j].create_date1 +'</div><br /><div class="col-xs-12" id="reply_com '+child_id+'">' + data[i][j].description1 + '</div></div></div>';				
								$("#show_reply_com" + parent_id).prepend(c);
								$("#show_reply_com" + parent_id).show();
								
								
								child_id++;
								parent_id++;
								k++;
								reply_com_id++;
						
								
							} else if(data[i][j].description1 != null && k > 0 ){
								
								count_comments++;
							
								var c ='<div class="col-md-12 col-sm-12 col-xs-12 " style="padding: 5px; border-top: 1px solid rgb(201, 165, 165); border-radius: 0px; margin-top: 10px; width: 90%;"><div class="col-md-1 col-sm-1 col-xs-2"><img src="../videoplayer/avatar.png" width="50"></div><div class="col-md-10 col-sm-10 col-xs-10" ><span class="col-xs-12">'
									+'<b>'+ data[i][j].userName1 +'</b></span>'+
									'<div class="col-xs-12">'+ data[i][j].create_date1 +'</div><br /><div class="col-xs-12" id="reply_com '+child_id+'">' + data[i][j].description1 + '</div></div></div>';				
									$("#show_reply_com" + (parent_id-1)).prepend(c);
									$("#show_reply_com" + (parent_id-1)).show();									
									
									child_id++;
									
							}else {
								
								count_comments ++;
								
								var a =	'<div class="row" style= "border:1px solid rgb(206, 188, 188); border-radius:5px; padding:5px; margin-top:5px;"><div class="col-md-1 col-sm-1 col-xs-3 img-responsive"><img src="../videoplayer/avatar.png" width="50"></div>'+
								'<div class="col-md-10 col-sm-10 col-xs-9" id="list_parent_comment"><div>'+
								'<span><b>'+ data[i][j].userName +'</b></span></div><div id="time_comment">'+ data[i][j].create_date +'</div><br /><div id="content_comment'+ parent_id +'">'+data[i][j].description+'</div>';
								
								var b ='<div class="row"><div class="col-md-2 col-sm-2"></div><div class="col-md-11 col-sm-11 col-xs-12">'+
								'<form role="form" action="" method="post" id="form_reply"><div class="form-group"><label></label><textarea class="form-control "rows="2" id="comment_reply'+reply_com_id +'" name="comment"></textarea></div>'+
								'<input type="button" value="Reply" id="btn_replys" onclick=\"addChildComment(\'show_reply_com' + parent_id + '\',\'comment_reply'+reply_com_id+'\','+ i +')" class="pull-right btn btn-default"/></form></div></div>'+
							 	'<div class="row" id="show_reply_com'+ parent_id +'"></div></div></div>';
							 
								
								
													
								$("#comment_box").prepend(a+b);
								parent_id++;
								reply_com_id++;
								$("#comment").val("");
							}
						}
					}
					
					$("#count_comment").html("Comments : " + count_comments + "  ");
				}
			});
		}
		
		
		//function for show reply
		function addChildComment(comments_id,replys_id, parents_id){
				var date = new Date();
				var str = date.getMonth() + "/" + date.getDate() + "/" + date.getFullYear()  ;
				
				comments_id = "#" +comments_id;
				replys_id ="#" + replys_id;
				var c ='<div class="col-md-12 col-sm-12 col-xs-12 " style="padding: 5px; border-top: 1px solid rgb(201, 165, 165); border-radius: 0px; margin-top: 10px; width: 90%;"><div class="col-md-1 col-sm-1 col-xs-2"><img src="../videoplayer/avatar.png" width="50"></div><div class="col-md-10 col-sm-10 col-xs-10" ><span class="col-xs-12">'
				+'<b>Chanthorn</b></span>'+
				'<div class="col-xs-12">Just now</div><br /><div class="col-xs-12">' + $(replys_id).val() + '</div></div></div>';	
			
				$(comments_id).prepend(c);
				$(comments_id).show();
				//alert(replys_id);
				addSubComment(parents_id, $(replys_id).val());
				$(replys_id).val("");
		}


		
		function addVideoHistory(video_id){
			var user_id = <%=session.getAttribute("userID")%>
			$.ajax({
				url : "addHistory",
				method : "POST",
				dataType : "JSON",
				data :{
					video_id : video_id,
					user_id : user_id
				},
				success : function(){
					alert("Inserted successfully!");
				}
			});
		}
		
		function addVideoWatchedLater(video_id){
			$.ajax({
				url : "addWatchedLater",
				method  :"POST",
				data : {
					video_id : video_id,
					user_id : <%=session.getAttribute("userID")%>
				},
				success : function(){
					alert("Watched Later Inserted!");
				}
			
			});
		}
		upVideoView();
		getVideoPlaylist();
		getDefaultVideo();
		getRecAndPopVideo();
	</script>

</body>
</html>
