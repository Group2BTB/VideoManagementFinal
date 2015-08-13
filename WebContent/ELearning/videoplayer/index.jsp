<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="libs/video-js/video-js.css">
<link rel="stylesheet" href="src/videojs.logobrand.css">
<script src="libs/video-js/video.js"></script>
<script src="youtube.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="build/mediaelementplayer.min.css" />
<script src="build/jquery.js"></script>
<script src="build/mediaelement-and-player.min.js"></script>


<!-- like plugin  -->
<script type="text/javascript">
	var switchTo5x = true;
</script>
<script type="text/javascript"
	src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">
	stLight.options({
		publisher : "42ae4b0d-ab72-4692-9d29-db48c1f86256",
		doNotHash : false,
		doNotCopy : false,
		hashAddressBar : false
	});
</script>

</head>
<body onresize="myFunction()">
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
									<h2>1.1. Jquery tutorials for beginner students </h2>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<span><img src="../videoplayer/avatar.png" width="50"
										height="50" /><b>Admin</b></span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12"
									style="text-align: right;">
									<p>
										<img alt="views" src="../videoplayer/eyes.png" width="35" style="margin-left:20px;">
										<b style="font-size: 16px;">Veiws:</b> 989007
									</p>
								</div>
							</div>

							<hr style="border-color:#545D61; height:1px; margin-top:0px;" />

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
											<a style="cursor: pointer;"><i class="fa fa-thumbs-up fa-2x"
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
											<b>Public on June 13, 2015</b> <br /> Learn four methods for
											passing values from one page to another. You'll work with
											Session...PreviousPage...QueryString... the Profile Object.
											For more tips and tutorials, visit
											www.detacheddesigns.com/blog
										</div>
										<form role="form">
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
										<div class="col-md-11" >
											<div class="col-md-4 col-xs-6">
												<span><b>Prem Chanthorn</b></span>
											</div>
											<div class="col-md-4 col-xs-6">10 minutes ago</div>
											<div class="col-md-12 col-xs-12">I
												really like this website.</div>
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

									<div>

										<a href=""> <img
											src="../videoplayer/images/software-java-icon.png" width="60"
											id="playlsits_shows" /><span class="color_white"
											style="padding-left: 20px;">asdfsad</span></a>


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

	<!--====== Video script ======-->
	<script>
		// save a reference to the video element
		video = document.querySelector('video'),
		// save a reference to the video.js player for that element
		player = videojs(video, {
			'techOrder' : [ 'youtube' ],
			'src' : 'https://youtu.be/Wkkshutyv0g'
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
												//$("#show_comments").text($("#comment").val()).addClass("wells col-md-12");

												var a = '<div class="col-md-12 comments box_comment" id="comment_box" style="margin-bottom:5px;"><div class="row wells"><div class="col-md-1"><img src="../videoplayer/avatar.png" width="50"></div><div class="col-md-11"><div class="col-md-4 col-xs-6"><span><b>Prem Chanthorn</b></span></div>';
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

		function getAllVideo() {
			$.ajax({
				url : "listVideo",
				method : "POST",
				dataType : "JSON",
				success : function(data) {
					for ( var i in data) {
						//alert(data[i].youtube_url);
					}
				}
			});
		}
	
		function getVideoPlaylist(){
			$.ajax({
				url : "getPlayList",
				method : "POST",
				dataType : "JSON",
				success : function(data) {
					for ( var i in data) {
						alert(data[i].playlist_name);
					}
				}
			});
		}	

		$(document).ready(function() {
			getVideoPlaylist();
			getAllVideo();
			viewQuestionAnswer();
		});
	</script>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>

</body>
</html>