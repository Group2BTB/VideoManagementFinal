<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12 clearfix">
		<div class="col-xs-12 col-md-12 col-sm-12">
			<!-- Start From	-->
			<form class="navbar-form navbar-left" role="search"
				style="border: none;">
				<!-- Button Save -->
				<button type="button" id="btnNew" class="btn btn-success btn-act">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
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
			<div class="panel-heading"><i class="glyphicon glyphicon-education"></i> List University</div>
			<div class="panel-body">
				<form class="form-inline">
					<div class="col-md-3 col-sm-3 col-xs-6 div-padding-bottom">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">View On:
							</span> 
							<select class="form-control">
								<option>12</option>
								<option>24</option>
								<option>48</option>
								<option>96</option>
							</select>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-6 div-padding-bottom">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">Status:
							</span> 
							<select class="form-control">
								<option>All</option>
								<option>Active</option>
								<option>Deactivate</option>
							</select>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 div-padding-bottom">
						<div class="form-group">							
							<input type="text" class="form-control" id="search" placeholder="Search...">
						</div>
					</div>
					<!--  
						<div class="col-md-2 col-sm-2 col-xs-6 div-padding-bottom">												
							<button id="search_tool" class="btn btn-default" type="button"><i class="glyphicon glyphicon-wrench i-green"></i> Search Tool</button>
						</div>
					-->
				</form>
			</div>

			<!-- Table -->
			<table class="table table-bordered table-hover">
				<tr class="active" style="cursor:pointer;">
					<th class="center">No&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>					
					<th class="center">University Name&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>	
					<th class="center">Short Name&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>					
					<th class="center">Create Date&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>
					<th class="center">Create By&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>
					<th class="center">Action</th>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>Setec Institute</td>
					<td>Setec</td>
					<td>Apr 23, 2015 10:00:00</td>
					<td>Admin</td>
					<td class="center">
						<button type='button' class='btn btn-info icon_margin_top'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary icon_margin_top'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger icon_margin_top'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning icon_margin_top'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>Setec Institute</td>
					<td>Setec</td>
					<td>Apr 23, 2015 10:00:00</td>
					<td>Admin</td>
					<td class="center">
						<button type='button' class='btn btn-info icon_margin_top'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary icon_margin_top'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger icon_margin_top'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning icon_margin_top'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>Setec Institute</td>
					<td>Setec</td>
					<td>Apr 23, 2015 10:00:00</td>
					<td>Admin</td>
					<td class="center">
						<button type='button' class='btn btn-info icon_margin_top'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary icon_margin_top'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger icon_margin_top'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-success icon_margin_top'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
							
				<tr class="active">
					<td colspan="6">Total Records: <span class="i-blue">03</span>
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
				<h1 class="modal-title"><b>University</b></h1> 
				<p class="modal-title des_modal">The informaiton will let us know more about you.</p>
			</div>
			<div class="modal-body">	
				<form>
					<div class="col-md-5 col-sm-5 col-xs-12 con-center">
						<img  id="src" src="images/uplo.png" alt="" class="img-rounded" style="width:200px;">
						<br/>
						<div class="fileUpload btn btn-success">
							<span>CHOOSE LOGO</span>
							<input type="file" id="img" name="img" accept="image/*" class="upload" />
						</div>
					</div>
					<div class="col-md-7 col-sm-7 col-xs-12">
						<div class="form-group">
							<label for="full_name">Full Name <span class="require_field">*</span> : </label>
							<input type="text" class="form-control" id="full_name" placeholder="Full Name...">
						</div>
						<div class="form-group">
							<label for="short_name">Short Name <span class="require_field">*</span> : </label>
							<input type="text" class="form-control" name="short_name" id="short_name" placeholder="Short Name...">
						</div>
						<div class="form-group">
							<label for="status">Status <span class="require_field">*</span> : </label>
							<select class="form-control" id="status" name="status">
								<option>-- Select a Status --</option>											
								<option value="1">Active</option>											
								<option value="0">Deactivate</option>											
							</select>
						</div>
						
					
					</div>					
					<div class="col-md-12 col-sm-12 col-xs-12" style="padding-top: 20px;">
						<div class="form-group">
							<label for="description">Description:</label>
							
							<textarea class="form-control max_textarea" name="description" id="description" rows="3"> </textarea>
					
						</div>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>		
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" id="save_change" class="btn btn-primary">Add</button>
			</div>
		</div>
	</div>
</div>
<!-- End More Filter --> 
<!-- Start More Filter --> 
<div id="more_filter" class="modal fade bs-example-modal-lg">
	<div class="modal-dialog">
		<div class="modal-content" style="margin: 0 auto;">
			<div class="modal-header" style="text-align: center;">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h1 class="modal-title"><b>Filter</b></h1> 
				<p class="modal-title des_modal">The result will be display what you filter.</p>
			</div>
			<div class="modal-body">	
				<form>
					
				</form>
				<div class="clearfix"></div>
			</div>		
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" id="save_change" class="btn btn-primary">Filter</button>
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
		
		
		
		$("#search_tool").on("click", function() {    // wire up the OK button to dismiss the modal when shown
			$("#more_filter").modal({                    // wire up the actual modal functionality and show the dialog
			  "backdrop"  : "static",
			  "keyboard"  : true,
			  "show"      : true                     // ensure the modal is shown immediately
			});
		});
		
		$("#more_filter").on("show", function() {    // wire up the OK button to dismiss the modal when shown
			$("#more_filter a.btn").on("click", function(e) {				
				console.log("button pressed");   // just as an example...
				$("#more_filter").modal('hide');     // dismiss the dialog
			});
		});

		$("#more_filter").on("hide", function() {    // remove the event listeners when the dialog is dismissed
			
			$("#more_filter a.btn").off("click");
		});
		
		$("#more_filter").on("hidden", function() {  // remove the actual elements from the DOM when fully hidden
			
			$("#more_filter").remove();
		});
	});
</script>