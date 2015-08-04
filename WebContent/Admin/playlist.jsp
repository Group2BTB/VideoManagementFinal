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
			<form class="navbar-form navbar-left" role="search"
				style="border: none;">
				<!-- Button Save -->
				<button type="button" id="btnNew" class="btn btn-success btn-act">
					<span class="glyphicon glyphicon-check" aria-hidden="true"></span>
					New
				</button>
				<!-- Button Help -->
				<button type="submit" class="btn btn-default btn-act">
					<span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>
					Help
				</button>
			</form>
		</div>
		<div class="clearfix"></div>
		<div class="panel panel-primary">
			<!-- Default panel contents -->
			<div class="panel-heading">List Department</div>
			<div class="panel-body">
				<form class="form-inline">
					<div class="col-md-3 col-sm-3 col-xs-6 div-padding-bottom">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">View On:
							</span> <select class="form-control">
								<option>12</option>
								<option>24</option>
								<option>48</option>
								<option>96</option>
							</select>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 div-padding-bottom">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search for..."> 
							<span class="input-group-btn">
								<button style="height: 34px;" class="btn btn-default" type="button">
									<i class="glyphicon glyphicon-search i-green"></i>
								</button>
							</span>
						</div>
					</div>
					<div class="col-md-2 col-sm-1 col-xs-6 div-padding-bottom">												
						<button id="fmore" class="btn btn-default" type="button"><i class="glyphicon glyphicon-wrench i-green"></i> Search Tool</button>
					</div>
				</form>
			</div>

			<!-- Table -->
			<table class="table table-bordered table-hover">
				<tr class="active" style="cursor:pointer;">
					<th class="center">No&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>					
					<th class="center">Department&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>					
					<th class="center">Create Date&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>
					<th class="center">Create By&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>
					<th class="center">Action</th>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>HRM</td>
					<td>Apr 23, 2015 10:00:00</td>
					<td>Admin</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>HRM</td>
					<td>Apr 23, 2015 10:00:00</td>
					<td>Admin</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>HRM</td>
					<td>Apr 23, 2015 10:00:00</td>
					<td>Admin</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>HRM</td>
					<td>Apr 23, 2015 10:00:00</td>
					<td>Admin</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
							
				<tr class="active">
					<td colspan="5">Total Records: <span class="i-blue">03</span>
						<ul class="pagination pull-right" style="margin: 0px 0;">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul></td>
				</tr>
			</table>
		</div>
	</div>
</div>
<!-- Start More Filter --> 
<div id="myModal" class="modal fade bs-example-modal-lg">
	<div class="modal-dialog">
		<div class="modal-content" style="margin: 0 auto;">
			<div class="modal-header" style="text-align: center;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Department Info</h4>
			</div>
			<div class="modal-body">	
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">Title * : </label>
						<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Status * : </label>
						<select class="form-control">
							<option>-- Select a Status --</option>											
							<option>Active</option>											
							<option>Deactivate</option>											
						</select>
					</div>
					<div class="form-group">
						<label for="description">Description:</label>
						
						<textarea class="form-control" id="description" placeholder="Description" rows="4"> </textarea>
				
					</div>
				</form>
				<div class="clearfix"></div>
			</div>		
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" id="save_change" class="btn btn-primary">Save</button>
			</div>
		</div>
	</div>
</div>
<!-- End More Filter --> 
<script>
	$(function() {
		$("#msg_sucess").hide();
		$("#msg_error").hide();

		// choose profile
		$('#img').change(function() {
			img();
		});
	});
</script>
<script>
	$("document").ready(function(e) {
		
		$("#msg_sucess").hide();
		$("#msg_error").hide();
		
		$("#btnNew").on("click", function() {    // wire up the OK button to dismiss the modal when shown
			$("#myModal").modal({                    // wire up the actual modal functionality and show the dialog
			  "backdrop"  : "static",
			  "keyboard"  : true,
			  "show"      : true                     // ensure the modal is shown immediately
			});
		});
		
		$("#myModal").on("show", function() {    // wire up the OK button to dismiss the modal when shown
			$("#myModal a.btn").on("click", function(e) {				
				console.log("button pressed");   // just as an example...
				$("#myModal").modal('hide');     // dismiss the dialog
			});
		});

		$("#myModal").on("hide", function() {    // remove the event listeners when the dialog is dismissed
			
			$("#myModal a.btn").off("click");
		});
		
		$("#myModal").on("hidden", function() {  // remove the actual elements from the DOM when fully hidden
			
			$("#myModal").remove();
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