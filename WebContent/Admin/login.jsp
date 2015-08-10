<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp" ng-controller="questioncontroller">

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
	<div class="col-md-4 col-sm-4 col-xs-4">
	</div>
		<form class="col-md-4 col-sm-4 col-xs-4">
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-default">Login</button>
</form>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
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
	
	function getVideo(){
		$.ajax({
			url: "../questionComponnent",
			method: "POST",
			data: {				
			},success: function(data){
				if(data){
					var str = "";
					for(var i=0;i<data.length;i++){
						str +="<option value='"+data[i].question_id+"'>"+data[i].description+"</option>";
					}
					$("#question").append(str);
				}
			}
		});
	}
	getVideo();
	
	
</script>
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
	<script src="js/neon-custom.js"></script>
	<script src="js/neon-demo.js"></script>
	<script src="js/neon-skins.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/select2.min.js"></script> 
	<script src="js/data/question.js"></script>
	<script src="js/ui-bootstrap-tpls-0.10.0.min.js"></script>	
</body>

</html>