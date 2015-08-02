<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12 clearfix">
		<div class="col-xs-12 col-md-12 col-sm-12">
			<!-- Start From	-->
			<form class="navbar-form navbar-left" role="search"
				style="border: none;">
				<!-- Button Save -->
				<button type="button" id="btnSave" class="btn btn-success btn-act">
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
			<div class="panel-heading">List Users</div>
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
				<tr class="active">
					<th class="center">No&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>					
					<th class="center">Username&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>
					<th class="center">Email&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>
					<th class="center">Register Date&nbsp;<span
						class="glyphicon glyphicon-menu-down"></span></th>
					<th class="center">Action</th>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>Sereyvong</td>
					<td>sereyvong98@gmail.com</td>
					<td>10-10-10</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>Sereyvong</td>
					<td>sereyvong98@gmail.com</td>
					<td>10-10-10</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>Sereyvong</td>
					<td>sereyvong98@gmail.com</td>
					<td>10-10-10</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>
				<tr>
					<td class="center">1</td>
					<td>Sereyvong</td>
					<td>sereyvong98@gmail.com</td>
					<td>10-10-10</td>
					<td class="center">
						<button type='button' class='btn btn-info'><span class='glyphicon glyphicon-eye-open'></span></button>
						<button type='button'  class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>							    
						<button type='button' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>
						<button type='button' class='btn btn-warning'><span class='glyphicon glyphicon-record'></span></button>		
					</td>
				</tr>				
				<tr class="active">
					<td colspan="5">Total Records: <span class="i-blue">1,000</span>
						<ul class="pagination pull-right" style="margin: 0px 0;">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul></td>
				</tr>
			</table>
		</div>
	</div>
</div>
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