<!DOCTYPE html>
<head>
<title>Login|User</title>
<link rel="stylesheet" href="templates/css/bootstrap.min.css">
<script type="text/javascript" src="templates/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="templates/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4&appId=117267408620245";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		// This is called with the results from from FB.getLoginStatus().
		function statusChangeCallback(response) {

			// The response object is returned with a status field that lets the
			// app know the current login status of the person.
			// Full docs on the response object can be found in the documentation
			// for FB.getLoginStatus().
			if (response.status == 'connected') {
				// Logged into your app and Facebook.

				//testAPI();
				FB.api('/me?fields=name,email,picture,first_name, last_name, gender, id',function(response) {
					
					/* alert(JSON.stringify(response));
					//console.log('Successful login for: ' + response.name);
					alert(response.email + " " + response.name
							+ " " + response.first_name + " "
							+ response.last_name);
					document.getElementById("img1").src = response.picture.data.url;
					document.getElementById('status').innerHTML = 'Thanks for logging in, '
							+ response.name + '!'; */
					var gender = 0;
					if(response.gender == "male"){
						gender  = 1;
					}else{
						gender = 0;
					}
					$.ajax({
						url : "addFBUser",
						dataType : "JSON",
						method : "POST",
						data : {
							name : response.name,
							password : response.id,
							email : response.email,
							gender : gender,
							img : response.picture.data.url
							},
						success: function(data){
							location.href="index.jsp";
							}
						});
		
				});
			} else if (response.status === 'not_authorized') {
				// The person is logged into Facebook, but not your app.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into this app.';
			} else {
				// The person is not logged into Facebook, so we're not sure if
				// they are logged into this app or not.
				document.getElementById('status').innerHTML = 'Please log into Facebook.';
			}
		}

		// This function is called when someone finishes with the Login
		// Button.  See the onlogin handler attached to it in the sample
		// code below.
		function checkLoginState() {

			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);

			});
		}

		/*on the page load check if user have login*/
		window.fbAsyncInit = function() {
			FB.init({
				appId : '{117267408620245}',
				cookie : true, // enable cookies to allow the server to access 
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.4' // use version 2.2
			});

			// Now that we've initialized the JavaScript SDK, we call 
			// FB.getLoginStatus().  This function gets the state of the
			// person visiting this page and can return one of three states to
			// the callback you provide.  They can be:
			//
			// 1. Logged into your app ('connected')
			// 2. Logged into Facebook, but not your app ('not_authorized')
			// 3. Not logged into Facebook and can't tell if they are logged into
			//    your app or not.
			//
			// These three cases are handled in the callback function.

			/* FB.getLoginStatus(function(response) {
				statusChangeCallback(response);

			});*/
 		};

		// Here we run a very simple test of the Graph API after login is
		// successful.  See statusChangeCallback() for when this call is made.

		function testAPI() {

			FB.api('/me?fields=name,email,picture,first_name, last_name, gender, id',function(response) {
	
				alert(JSON.stringify(response));
				//console.log('Successful login for: ' + response.name);
				alert(response.email + " " + response.name
						+ " " + response.first_name + " "
						+ response.last_name);
				document.getElementById("img1").src = response.picture.data.url;
				document.getElementById('status').innerHTML = 'Thanks for logging in, '
						+ response.name + '!';
	
			});
		}
	</script>

	<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->
	<!-- <div id="status"></div> -->

	<img src="" id="img1" alter="photo" />
	<!-- Start container -->

	<!-- Modal for login -->

	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<!-- Start modal header -->
				<div class="modal-header">
					<h3 class="modal-title text-center text-info">Login to Your
						Account</h3>
				</div>
				<!-- End modal header -->

				<!-- Start modal body -->
				<div class="modal-body">
					<form action="login" method="post" class="form-horizontal" role="form">

						<div class="form-group" id="username_field">
							<div
								class="col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input id="username"
										type="text" class="form-control" name="username" value=""
										placeholder="Username or Email" onkeypress="nospaces(this);">
								</div>
							</div>
						</div>

						<div class="form-group" id="password_field">
							<div
								class="col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input id="password"
										type="password" class="form-control" name="password"
										placeholder="Password">
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<!-- Button -->
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 controls">
										<button type="submit" class="btn btn-primary center-block">
											<i class="glyphicon glyphicon-log-in"></i> Log in
										</button>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 controls">
										<div class="fb-login-button btn-large" scope="public_profile,email"
											onlogin="checkLoginState()" data-max-rows="1"
											data-size="large" data-show-faces="false">
										</div>
									</div>
								</div>
							</div>
						</div>

					</form>
				</div>
				<!-- End modal body-->

				<!-- End modal footer -->
			</div>
			<!-- End modal content -->
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$("#login").modal({
				backdrop : 'static',
				keyboard : false
			});
			$("#login").modal("show");
		});
	</script>
	<!-- End modal login -->
</body>
</html>

