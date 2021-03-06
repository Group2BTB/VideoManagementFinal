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

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
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
<body class="page-body page-fade" data-url="#">


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
							<button type="button" id="btnNew" class="btn btn-success btn-act"
								ng-click="editUser('new')">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
								New
							</button>
							<!-- Button Help -->
							<button type="submit" class="btn btn-default btn-act">
								<span class="glyphicon glyphicon-question-sign"
									aria-hidden="true"></span> Help
							</button>
						</form>
					</div>
					<div class="clearfix"></div>
					<div class="panel panel-primary">
						<!-- Default panel contents -->
						<div class="panel-heading">
							<i class="glyphicon glyphicon-question-sign"></i> List Question
						</div>
						<div class="panel-body">
							<form class="form-inline">
								<div class="col-md-3 col-sm-3 col-xs-6 div-padding-bottom">
									<div class="input-group">
										<span class="input-group-addon" id="basic-addon1">View
											On: </span> <select id="limitEntry" ng-model="entryLimit"
											class="form-control">
											<option>12</option>
											<option>24</option>
											<option>48</option>
											<option>96</option>
										</select>
									</div>
								</div>
								<div class="col-md-4 col-sm-4 col-xs-12 div-padding-bottom"
									style="float: right;">
									<div class="form-group">
										<input type="text" class="form-control" ng-model="search"
											ng-change="filter()" id="search" placeholder="Search...">
									</div>
								</div>
								<!-- <div class="col-md-2 col-sm-1 col-xs-6 div-padding-bottom">												
							<button id="fmore" class="btn btn-default" type="button"><i class="glyphicon glyphicon-wrench i-green"></i> Search Tool</button>
						</div> -->

							</form>
						</div>

						<!-- Table -->
						<table class="table table-bordered table-hover"
							ng-show="filteredItems > 0">
							<tr class="active" style="cursor: pointer;">
								<th class="center">No&nbsp;<a
									ng-click="sort_by('question_id');"><i
										class="glyphicon glyphicon-sort"></i></a></th>
								<th class="center">Question&nbsp;<a
									ng-click="sort_by('description');"><i
										class="glyphicon glyphicon-sort"></i></a></th>
								<th class="center">Status&nbsp;<a
									ng-click="sort_by('status');"><i
										class="glyphicon glyphicon-sort"></i></a></th>
								<th class="center">Action</th>
							</tr>
							<tr
								ng-repeat="d in filtered = (list | filter:search | orderBy : predicate :reverse) | startFrom:(currentPage-1)*entryLimit | limitTo:entryLimit">
								<td class="center">{{($index+1)}}</td>
								<td>{{d.description}}</td>
								<td class="center"><span ng-show="d.status1"
									class="label label-success">{{d.status}}</span> <span
									ng-show="!d.status1" class="label label-warning">{{d.status}}</span>
								</td>
								<td class="center">
									<button type='button' ng-click="addQuestion(d.question_id)"
										class='btn btn-info icon_margin_top'>
										<span class='glyphicon glyphicon-link'></span>
									</button>
									<button type='button' ng-click="editUser(d.question_id)" class='btn btn-primary icon_margin_top'>
										<span class='glyphicon glyphicon-pencil'></span>
									</button>
									<button type='button' ng-click="updateStatus(d.question_id)"
										class='btn btn-success icon_margin_top'>
										<span class='glyphicon glyphicon-record'></span>
									</button>
								</td>
							</tr>
							<tr class="active">

							</tr>
						</table>
						<div class="col-md-12" ng-show="filteredItems == 0">
							<div class="col-md-12 center">
								<h4>No Question found</h4>
							</div>
						</div>
						<div class="col-md-12" ng-show="filteredItems > 0">

							<div pagination="" page="currentPage" max-size="10"
								on-select-page="setPage(page)" boundary-links="true"
								total-items="filteredItems" items-per-page="entryLimit"
								class="pagination-small" previous-text="�" next-text="�"></div>

						</div>
					</div>
				</div>
			</div>

			<!-- Start More Filter -->
			<div id="myModal" class="modal fade bs-example-modal-lg">
				<div class="modal-dialog">
					<div class="modal-content" style="margin: 0 auto;">
						<form method="post" action="" id="frmDepartment">
							<div class="modal-header" style="text-align: center;">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h1 class="modal-title">
									<b>Q</b>uestion

								</h1>
								<p class="modal-title des_modal">The informaiton will let us
									know more about you.</p>

							</div>
							<div class="modal-body">
								<div class="form-group">
									<label for="name">Question <span class="require_field">*</span>
										:
									</label> <input type="text" class="form-control" id="name" name="name"
										ng-model="name" placeholder="Question...">
								</div>
								<div class="form-group">
									<label for="partent">Video <span class="require_field">*</span>
										:
									</label> <select name="video" id="video" ng-model="video"
										class="select2 form-control" data-allow-clear="true"
										data-placeholder="Video...">
										<option></option>
									</select>
								</div>
								<div class="form-group">
									<label for="status">Status <span class="require_field">*</span>
										:
									</label> <select id="status" name="status" class="form-control"
										ng-model="status">
										<option value="">-- Select a Status --</option>
										<option value="1">Active</option>
										<option value="0">Deactivate</option>
									</select>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="modal-footer">
								<button id="closeFrmAdd" type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button class="btn btn-primary"
									ng-disabled="error || incomplete" ng-click="save(edit)">
									<span class="glyphicon glyphicon-save"></span> <span
										ng-show="!edit">Update</span> <span ng-show="edit">Add</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- End More Filter -->
			
			<!-- Start More Filter -->
			<div id="myAnswer" class="modal fade bs-example-modal-lg">
				<div class="modal-dialog">
					<div class="modal-content" style="margin: 0 auto;">
						<form method="post" action="" id="frmDepartment">
							<div class="modal-header" style="text-align: center;">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h1 class="modal-title">
									<b>A</b>nswer

								</h1>
								<p class="modal-title des_modal">The informaiton will let us
									know more about you.</p>

							</div>
							<div class="modal-body" data="" id="mainans">
								
								<div class="form-group">
									<label for="name">Answer 1 <span class="require_field">*</span>
										:
									</label>
									<div class="input-group">
										<span class="input-group-addon"> <input name="true_ans" onclick="check(1)" value="1" id="ans1"  type="radio"
											aria-label="...">
										</span> <input data="" type="text" name="answer1" id="answer1" class="form-control" aria-label="...">
									</div>
								</div>
								<div class="form-group">
									<label for="name">Answer 2 <span class="require_field">*</span>
										:
									</label>
									<div class="input-group">
										<span class="input-group-addon"> <input onclick="check(2)" id="ans2" value="2" name="true_ans" type="radio"
											aria-label="...">
										</span> <input data=""  type="text"  name="answer2" id="answer2" class="form-control" aria-label="...">
									</div>
								</div>
								<div class="form-group">
									<label for="name">Answer 3 <span class="require_field">*</span>
										:
									</label>
									<div class="input-group">
										<span class="input-group-addon"> <input onclick="check(3)"  id="ans3" value="3" name="true_ans" type="radio"
											aria-label="...">
										</span> <input data=""  name="answer3" id="answer3" type="text" class="form-control" aria-label="...">
									</div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							<div class="modal-footer">
								<button id="closeFrmAdd" type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button class="btn btn-primary"
									ng-disabled="error || incomplete" ng-click="saveAnswer()">
									<span class="glyphicon glyphicon-save"></span> <span>Save</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- End More Filter -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>

		<script>
			$("document").ready(function(e) {

				$("#msg_sucess").hide();
				$("#msg_error").hide();

				$("#btnNew").on("click", function() { // wire up the OK button to dismiss the modal when shown
					$("#myModal").modal({ // wire up the actual modal functionality and show the dialog
						"backdrop" : "static",
						"keyboard" : true,
						"show" : true
					// ensure the modal is shown immediately
					});
				});

				$("#myModal").on("show", function() { // wire up the OK button to dismiss the modal when shown
					$("#myModal a.btn").on("click", function(e) {
						console.log("button pressed"); // just as an example...
						$("#myModal").modal('hide'); // dismiss the dialog
					});
				});

				$("#myModal").on("hide", function() { // remove the event listeners when the dialog is dismissed

					$("#myModal a.btn").off("click");
				});

				$("#myModal").on("hidden", function() { // remove the actual elements from the DOM when fully hidden

					$("#myModal").remove();
				});

				$("#myAnswer").on("show", function() { // wire up the OK button to dismiss the modal when shown
					$("#myAnswer a.btn").on("click", function(e) {
						console.log("button pressed"); // just as an example...
						$("#myAnswer").modal('hide'); // dismiss the dialog
					});
				});

				$("#myAnswer").on("hide", function() { // remove the event listeners when the dialog is dismissed

					$("#myAnswer a.btn").off("click");
				});

				$("#myAnswer").on("hidden", function() { // remove the actual elements from the DOM when fully hidden

					$("#myAnswer").remove();
				});

			});
			function ques() {
				$("#myAnswer").modal({ // wire up the actual modal functionality and show the dialog
					"backdrop" : "static",
					"keyboard" : true,
					"show" : true
				// ensure the modal is shown immediately
				});
			}
			function getVideo() {
				$.ajax({
					url : "../videoComponnent",
					method : "POST",
					data : {

					},
					success : function(data) {
						if (data) {
							var str = "";
							for (var i = 0; i < data.length; i++) {
								str += "<option value='"+data[i].video_id+"'>"
										+ data[i].video_name + "</option>";
							}
							$("#video").append(str);
						}
					}
				});
			}
			getVideo();
			function getListAnswerByQuestion(id) {
				$.ajax({
					url : "../listAnswerByQuestion",
					method : "POST",
					data : {
						'id' : id
					},
					success : function(data) {
						if (data) {							
							for(var i=1;i<=data.length;i++){var j=i-1;
								$("#answer"+i).val(data[j].description);
								$("#answer"+i).attr("data",data[j].answer_id);
								if(data[j].status==1){
									$('input:radio[name="true_ans"]').filter('[value="'+i+'"]').attr('checked', true);
									$("#mainans").attr("data",i);
								}
							}
						}
					}
				});
			}
			function check(e){
				$("#mainans").attr("data",e);
			}
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