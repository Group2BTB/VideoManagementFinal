<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="description" content="Neon Admin Panel" />
		<meta name="author" content="Laborator.co" />
		<title>Video Management</title>
		
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">	
		<link rel="stylesheet" href="css/entypo.css">			
		<link rel="stylesheet" href="css/neon-core.css">
		<link rel="stylesheet" href="css/neon-theme.css">	
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/daterangepicker-bs3.css">
		<link rel="stylesheet" href="css/blue.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		
		<link rel="stylesheet" href="css/select2-bootstrap.css">
		<link rel="stylesheet" href="css/select2.css">
		<link rel="stylesheet" href="css/jquery.selectBoxIt.css">
		
		<!-- Imported styles on this page -->
		<script src="js/jquery.js"></script>		
		<script src="js/angular.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrapValidator.js"></script>
		<script src="js/image.js"></script>
</head>
<body  class="page-body page-fade" data-url="#">
	

<div class="page-container">


<jsp:include page="slidebar.jsp"></jsp:include>
<div class="main-content">
<jsp:include page="top.jsp"></jsp:include>
<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12 clearfix">
		<div class="col-xs-12 col-md-12 col-sm-12">
		<!-- Start From	-->
		<form class="navbar-form navbar-left" role="search" style="border:none;">
			<!-- Button Save -->
			<button type="button" id="btnSave" class="btn btn-success btn-act">
				<span class="glyphicon glyphicon-check" aria-hidden="true"></span> Save
			</button>
			
			<!-- Button Save & Close-->
			<button type="button" class="btn btn-default btn-act">
				<span class="glyphicon glyphicon-ok i-green" aria-hidden="true"></span> Save & Close
			</button>
			
			<!-- Button Save & New-->
			<button type="button" class="btn btn-default btn-act">
				<span class="glyphicon glyphicon-plus i-green" aria-hidden="true"></span> Save & New
			</button>
			
			<!-- Button Close -->
			<button type="button" class="btn btn-default btn-act">
				<span class="glyphicon glyphicon-remove-sign i-red" aria-hidden="true"></span> Close
			</button>
			<!-- Button Help -->
			<button type="submit" class="btn btn-default btn-act">
				<span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span> Help
			</button>
		</form>
		</div>
		<!-- Message Alert -->
		<div class="col-xs-12 col-md-12 col-sm-12">
		
			<!-- Message Alert Success	-->
			<div class="alert alert-success alert-dismissible" role="alert" id="msg_sucess">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>Well done!</strong> You successfully read this important alert message.
			</div>
			
			<!-- Message Alert Wrong	-->
			<div class="alert alert-danger alert-dismissible" role="alert" id="msg_error">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>Oh snap!</strong> Change a few things up and try submitting again.
			</div>
		</div>
		<!-- End Message Alert -->

		<div class="col-xs-12 col-md-12 col-sm-12">
			<div class="panel panel-primary">
				<div class="panel-heading">User Information:</div>
				<div class="panel-body">
					<div class="row">
						<form id="addUserForm">
							<div class="col-md-4 col-sm-5 col-xs-12 con-center">
								<img  id="src" src="images/pro1.png" alt="" class="img-rounded" style="width:200px;">
								<br/>
								<div class="fileUpload btn btn-success">
									<span>CHOOSE IMAGE</span>
									<input type="file" id="img" accept="image/*" class="upload" />
								</div>
							</div>

							<div class="col-md-7 col-sm-7 col-xs-12 form-horizontal">																
								<div class="form-group">
									<label for="username" class="col-sm-5 control-label">Username<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="username" name="username" placeholder="Username">
									</div>
								</div>
								<div class="form-group">
									<label for="title" class="col-sm-5 control-label"><strong class="i-red"> </strong>Gender&nbsp;&nbsp;&nbsp;:</label>
									<div class="col-sm-7">
										<label class="radio-inline">
										  <input type="radio" name="gender" id="male" value="1" checked> Male
										</label>
										<label class="radio-inline">
										  <input type="radio" name="gender" id="female" value="0" > Female
										</label>
									</div>
								</div>
								<div class="form-group">
									<label for="department" class="col-sm-5 control-label">Department<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<select id="department" class="form-control">
										  	<option value="1">Computer Science Department</option>
										  	<option value="2">Business and Economic Department</option>
										  	<option value="0">Other</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="university" class="col-sm-5 control-label">University<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<select id="university" class="form-control">
										  	<option value="1">RUPP</option>
										  	<option value="2">SETEC</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="username" class="col-sm-5 control-label">Date of Birth<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<div class="input-group">
											<input type="text" class="form-control datepicker"
												data-format="dd MM yyyy" placeholder="Date of Birth">
											<div class="input-group-addon">
												<a href="#"><i class="entypo-calendar"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-5 control-label">Password<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<input type="password" class="form-control" id="password" name="password" placeholder="Password">
									</div>
								</div>
								<div class="form-group">
									<label for="confirmPassword" class="col-sm-5 control-label">Repeat Password<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<input type="password" id="confirmPassword" class="form-control" name="confirmPassword" placeholder="Repeat Password">
									</div>
								</div>
								<div class="form-group">
									<label for="email" class="col-sm-5 control-label">Email<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<input type="email" class="form-control" id="email" name="email" placeholder="Email">
									</div>
								</div>
								<div class="form-group">
									<label for="description" class="col-sm-5 control-label">Description&nbsp;&nbsp;&nbsp;:</label>
									<div class="col-sm-7">
										<textarea class="form-control" id="description" placeholder="Description" rows="4"> </textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label for="status" class="col-sm-5 control-label">Status<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<select id="status" class="form-control">
											<option>Activate</option>
											<option>Deactivate</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="category" class="col-sm-5 control-label">Role<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<select id="category" class="form-control">
											<option value="admin">Administrator</option>
											<option value="user">User</option>
										</select>
									</div>
								</div>
							</div>							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		$("#msg_sucess").hide();
		$("#msg_error").hide();
		
		// choose profile
		$('#img').change(function(){				 
			img();
		});
	});
</script>







<jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="js/main-gsap.js"></script>
		<script src="js/jquery-ui-1.10.3.minimal.min.js"></script>
		<script src="js/joinable.js"></script>
		<script src="js/resizeable.js"></script>
		<script src="js/neon-api.js"></script>
		<script src="js/cookies.min.js"></script>
		<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="js/jquery-jvectormap-europe-merc-en.js"></script>
		<script src="js/jquery.sparkline.min.js"></script>
		<script src="js/d3.v3.js"></script>
		<script src="js/rickshaw.min.js"></script>
		<script src="js/raphael-min.js"></script>
		<script src="js/morris.min.js"></script>
		<script src="js/toastr.js"></script>
		<script src="js/neon-chat.js"></script>
		<!-- JavaScripts initializations and stuff -->
		<script src="js/neon-custom.js"></script>
		<!-- Demo Settings -->
		<script src="js/neon-demo.js"></script>
		<script src="js/neon-skins.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/select2.min.js"></script>
	
</body>
</html>