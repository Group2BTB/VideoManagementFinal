<!DOCTYPE html>
<head>
<title>Login|Admin</title>
<link rel="stylesheet" href="css/bootstrap.css">

<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Start container -->

	<!-- Modal for login -->
	
	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<!-- Start modal header -->
				<div class="modal-header">
					<h3 class="modal-title text-center text-info">Login to your
						account</h3>
				</div>
				<!-- End modal header -->

				<!-- Start modal body -->
				<div class="modal-body">
					<form action="login" method="post" class="form-horizontal"
						role="form" onsubmit="return validateLogin();">

						<div class="form-group" id="username_field">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input id="username"
										type="text" class="form-control" name="username" value=""
										placeholder="Username or Email" onkeypress="nospaces(this);">
								</div>
							</div>
						</div>

						<div class="form-group" id="password_field">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input id="password"
										type="password" class="form-control" name="password"
										placeholder="Password or Phone number">
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<!-- Button -->
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 controls">
										<button type="submit" class="btn btn-primary center-block">
											<i class="glyphicon glyphicon-log-in"></i> Log in
										</button>
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
				backdrop: 'static',
				keyboard: false
			});
			$("#login").modal("show");
		});
	</script>
	<!-- End modal login -->
</body>
</html>

