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
				<div class="panel-heading">Department Information:</div>
				<div class="panel-body">
					<div class="row">
						<form id="addUserForm">
							<div class="col-md-4 col-sm-5 col-xs-12 con-center">
								<img  id="src" src="images/uplo.png" alt="" class="img-rounded" style="width:200px;">
								<br/>
								<div class="fileUpload btn btn-success">
									<span>CHOOSE LOGO</span>
									<input type="file" id="img" accept="image/*" class="upload" />
								</div>
							</div>

							<div class="col-md-7 col-sm-7 col-xs-12 form-horizontal">																
								<div class="form-group">
									<label for="university" class="col-sm-5 control-label">University Name<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="university" name="university" placeholder="University Name">
									</div>
								</div>
								<div class="form-group">
									<label for="short_name" class="col-sm-5 control-label">Short Name<strong class="i-red"> * </strong>:</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="short_name" name="short_name" placeholder="Short Name">
									</div>
								</div>
								<div class="form-group">
									<label for="description" class="col-sm-5 control-label">Address&nbsp;&nbsp;&nbsp;:</label>
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