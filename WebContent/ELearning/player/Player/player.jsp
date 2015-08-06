<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="../build/jquery.js"></script>
<script src="../build/mediaelement-and-player.min.js"></script>
<link rel="stylesheet" href="../build/mediaelementplayer.min.css" />
<style type="text/css">
.Float_left {
	float: left;
	width: 500px;
	height: 500px;
	background-color: #000;
	color: #fff;
	overflow: auto;
}

.text-center {
	text-align: center;
}

.playlist-box {
	width: 100px;
	border: 1px solid red;
	height: 70px;
	margin-left: 10px;
	margin-top: 10px;
}

.left {
	float: left;
}

.text {
	padding: 10px;
	font-size: 12px;
	font-weight: bold;
}

.created {
	padding: 10px;
	padding-top: 0px;
	font-size: 12px;
}

input[type=radio] {
	border: 0px;
	width: 100%;
	height: 2em;
}

.scrollbar {
	float: left;
	margin-bottom: 25px;
	overflow-x: hidden;
	overflow-y: scroll;
}

/*
 *  STYLE 1
 */
#style-1::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
	background-color: #F5F5F5;
}

#style-1::-webkit-scrollbar {
	width: 12px;
	background-color: #F5F5F5;
}

#style-1::-webkit-scrollbar-thumb {
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
	background-color: #555;
}
</style>
</head>
<body>



	<div style="float: left;">
		<video class="mejs-wmp" width="800" height="500" id="player1">
		<source id="vplayer" type="video/youtube"
			src='http://www.youtube.com/watch?v=nOEw9iiopwI' /> </video>
	</div>



	<!-- playlist -->
	<div class="Float_left text-center scrollbar" id="style-1">
		<button id="playlist">Playlist</button>
		<button id="quiz">Quiz</button>
		<!-- Quiz -->
		<div id="quizshow">
			<div>what is your name?</div>
			Dog<input type="radio" value="dog" name="answer"> Cat<input
				type="radio" value="dog" name="answer"> Dara<input
				type="radio" value="dog" name="answer"> Kiss<input
				type="radio" value="dog" name="answer">
		</div>
		<!-- /Quiz -->
		<script>
			$(document).ready(function() {
				$("#quizshow").hide();
				$("#quiz").click(function() {
					$("#playlistshow").hide();
					$("#quizshow").show();
				});
				$("#playlist").click(function() {
					$("#playlistshow").show();
					$("#quizshow").hide();
				});

			});
		</script>
		<!-- playlistshow -->
		<div id="playlistshow">


			<div>
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>

			<div style="clear: both;">
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>

			<div style="clear: both;">
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>

			<div style="clear: both;">
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>
			<div style="clear: both;">
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>

			<div style="clear: both;">
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>

			<div style="clear: both;">
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>

			<div style="clear: both;">
				<div class="playlist-box left">
					<img src="images/IMG_6050.jpg" width="100" height="70" />
				</div>
				<div class="left">
					<div class="text">1.1 THIS IS AN APPLE</div>
					<div class="created">Created by: Admin</div>
				</div>
			</div>
		</div>
		<!-- /playlistshow -->
	</div>
	<!-- /playlist -->
	<script>
		//var vmgr = document.getElementById("vplayer");

		$('video').mediaelementplayer({
			success : function(media, node, player) {
				$('#' + node.id + '-mode').html('mode: ' + media.pluginType);

				var events = [ 'loadstart', 'play', 'pause', 'ended' ];

				for ( var i = 0, il = events.length; i < il; i++) {

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


</body>
</html>