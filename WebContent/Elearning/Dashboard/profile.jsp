<html lang="en" class="sb-init" style="overflow: hidden;">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mosaddek">
<meta name="keyword"
	content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<link rel="shortcut icon" href="img/favicon.html">

<title>Learnig Room</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/style-login.css" rel="stylesheet">
<link rel="stylesheet" href="css/login-style.css" />
<!--right slidebar-->
<link href="css/slidebars.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<style>
.vblock {
	height: 180px;
	width: 100px;
	background-color: black;
	position: absolute;
	opacity: 0.8;
	filter: alpha(opacity = 8);
	float: left;
	margin: auto;
	color: white;
	text-align: center;
	padding-top: 40px;
	cursor: pointer;
}

.vblock:hover {
	background-color: gray;
}

.vcount {
	color: white;
}

.me {
	width: 100%;
	hieght: 50px;
}
</style>

</head>
<body>
	<section id="container" class="sidebar-closed">
		<!--header start-->
		<header class="header white-bg">
			<div class="sidebar-toggle-box" id="hideshow">
				<div data-original-title="Toggle Navigation" data-placement="right"
					class="fa fa-bars tooltips"></div>
			</div>
			<!--logo start-->
			<a href="category.jsp" class="logo"><span>KHEAV</span></a>

			<!--logo end-->

			<div class="top-nav ">

				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control input-sm"
							placeholder="Search">
					</div>
					<button type="submit" class="btn btn-primary btn-sm">Search</button>
				</form>
				<ul class="nav pull-right top-menu">

					<li class="dropdown language"><a data-close-others="true"
						data-hover="dropdown" data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img src="img/flags/us.png"
							alt=""> <span class="username">US</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#"><img src="img/flags/us.png" alt="">
									English</a></li>
							<li><a href="#"><img src="img/flags/kh.png" alt="">
									Khmer</a></li>
							<li><a href="#"><img src="img/flags/kr.png" alt="">
									Korean</a></li>
						</ul></li>
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="img/avatar1_small.jpg"> <span class="username">heng</span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li><a href="profile.jsp"><i class=" fa fa-suitcase"></i>Profile</a></li>
							<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="#"><i class="fa fa-bell-o"></i>
									Notification</a></li>
							<li><a href="login.html"><i class="fa fa-key"></i> Log
									Out</a></li>
						</ul></li>
					<!-- user login dropdown end -->
					<li class="sb-toggle-right"><i class="fa  fa-align-right"></i>
					</li>
				</ul>
			</div>
		</header>

		<aside>
			<div id="sidebar" class="nav-collapse " tabindex="5000"
				style="overflow: hidden; outline: none; margin-left: -210px;">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion" style="display: block;">
					<li class="sub-menu text-center" style="color: #fff;">All
						Category</li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content" style="margin-left: 0px;">
			<div class="col-md-12">
				<!-- BEGIN PROFILE HEADING -->
				<div class="the-box transparent full no-margin profile-heading">
					<form enctype="multipart/form-data" action="changeusercover.act"
						method="post">
						<div class="right-action">
							<input type="file" id="photoimage" name="cover" class="filestyle"
								data-input="false" data-iconname="fa fa-edit"
								onchange="return ValidateFileUpload()" tabindex="-1"
								style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
							<div class="bootstrap-filestyle input-group">
								<span class="group-span-filestyle " tabindex="0"><label
									for="photoimage" class="btn btn-default "><span
										class="glyphicon fa fa-edit"></span> <span class="buttonText">Choose
											Cover</span></label></span>
							</div>
							<!-- <button class="btn btn-warning btn-square btn-xs" onchange="return ValidateFileUpload()">Change cover</button> -->
						</div>
						<!-- /.right-action -->
						<img src="" class="avatar" alt="Avatar">
						<div class="profile-info ">
							<p class="user-name"></p>
							<div class="right-button">
								<p id="appendbtn"></p>
								<!-- <a href="#" id="changecover" class="btn btn-primary btn-sm" onclick="changecover()">Change Cover</a> -->
							</div>
						</div>
						<!-- /.profile-info -->
					</form>
				</div>
				<!-- /.the-box .transparent .profile-heading -->
				<!-- END PROFILE HEADING -->

				<div
					class="panel with-nav-tabs panel-primary panel-square panel-no-border">
					<div class="panel-heading" style="background-color: #337ab7">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#panel-history"
								data-toggle="tab" aria-expanded="false"><i
									class="fa fa fa-eye"></i> History</a></li>
							<li class=""><a href="#panel-watch-later" data-toggle="tab"
								aria-expanded="true"><i class="fa  fa-clock-o"></i> Watch
									Later</a></li>
							<li class=""><a href="#panel-courses" data-toggle="tab"
								aria-expanded="false"><i class="fa  fa-book "></i> Courses </a></li>
							<li class="pull-right"><a
								class="btn btn-success btn-rounded-lg" href="video.act"
								data-effect="mfp-zoom-in" data-toggle="modal"
								data-target="#myModal"> <i class="fa fa-cloud-upload"></i>
									Upload video
							</a></li>
						</ul>
					</div>
					<div id="panel-collapse-1" class="collapse in">
						<div class="panel-body">
							<div class="tab-content">

								<!-- history -->

								<div ng-app="myapp" ng-controller="hiscontroller" class="tab-pane fade active in" id="panel-history">
									<div class="btn-toolbar top-table" role="toolbar">
										<div class="btn-group">
											<form role="form" id="frmSetNumrowHistory">
												<select ng-model="entryLimit" class="form-control" id="setNumrowHistory">
													<option>10</option>
													<option>20</option>
													<option>30</option>
													<option>50</option>
												</select>
											</form>
										</div>
										<div class="btn-group">
											<a href="#"
												onclick="deleteallhistory('deleteallhistory.act')"
												class="btn btn-danger"> <i class="fa fa-ban"></i> Clear
												All History
											</a>
										</div>

										<div class="btn-group pull-right">
											<form role="form">
												<input ng-change="filter()" type="text" class="form-control" id="tfsearchHistory"
													placeholder="Search category">
											</form>

										</div>
										<!-- /.btn-group .pull-right -->
									</div>
									<div id="getHistory" >
										<div>
											<div class="alert alert-info">
												<div class="the-box no-border store-list">
													<div class="media">
														<a class="pull-left" href="player.jsp"><img
															alt="image" class="store-image img-responsive"
															src="https://i.ytimg.com/vi/g1dNbTBvEHc/mqdefault.jpg"></a>
														<div class="clearfix visible-xs"></div>
														<div class="media-body" style="overflow: visible">
															<a href="#fakelink"></a>
															<div class="btn-group pull-right">
																<button type="button"
																	class="btn btn-default btn-sm dropdown-toggle"
																	data-toggle="dropdown" aria-expanded="false">
																	<i class="fa fa-cog"></i>
																</button>
																<ul class="dropdown-menu" role="menu">
																	<li><a href="../elearning/play.act?v=11">Play</a></li>
																	<li><a href="#"
																		onclick="deletehistory('deletehistory.act?historyid=3788&amp;page=1')">Remove
																			from History</a></li>
																</ul>
															</div>
															<ul class="list-inline">
																<li><a href="../elearning/play.act?v=11"><strong
																		class="text-black">Introduction, Syntax,
																			Selectors &amp; How to Apply</strong></a></li>
																<br>
																<li><a><span class="small text-muted"
																		style="color: #AAB2BD"> by Admin</span></a></li>
															</ul>
															<p class="hidden-xs"></p>
															<span class="small text-muted" style="color: #AAB2BD"><i
																class="fa fa-eye">&nbsp;&nbsp;2093</i>
																&nbsp;&nbsp;&nbsp; </span><br> <br>
															<div class="progress">
																<div
																	class="progress-bar progress-bar-success progress-bar-striped"
																	role="progressbar" aria-valuenow="70" aria-valuemin="0"
																	aria-valuemax="100" style="width: 70%">
																	<span class="text-info" style="color: #fff"><i
																		class="fa fa-clock-o"></i> </span>4:37 (70%&nbsp;completed)
																</div>
																<div
																	class="progress-bar progress-bar-info progress-bar-striped active"
																	role="progressbar" aria-valuenow="30" aria-valuemin="0"
																	aria-valuemax="100" style="width: 30%">
																	<span class="text-info" style="color: #fff"><i
																		class="fa fa-clock-o"></i> </span>1:23 (30%&nbsp;remain)
																</div>
															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="dataTables_info" id="datatable-example_info">Page
													1 of 4 entries</div>
											</div>
											<div class="col-sm-6">
												<div class="dataTables_paginate paging_bootstrap">
													<ul class="pagination separated">
														<li class="active"><a href="#page=1"
															onclick="gotohistorypage('historylist.act?page=1')">1</a></li>
														<li><a href="#page=2"
															onclick="gotohistorypage('historylist.act?page=2')">2</a></li>
														<li><a href="#page=3"
															onclick="gotohistorypage('historylist.act?page=3')">3</a></li>
														<li><a href="#page=4"
															onclick="gotohistorypage('historylist.act?page=4')">4</a></li>
														<li><a href="#next"
															onclick="gotohistorypage('historylist.act?page=2')">Next</a></li>
														<li><a href="#page=4"
															onclick="gotohistorypage('historylist.act?page=4')">Last</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end history -->

								<!-- watch later -->
								<div class="tab-pane fade" id="panel-watch-later">
									<div class="btn-toolbar top-table" role="toolbar">
										<div class="btn-group">
											<form role="form" id="frmSetNumrowHistory">
												<select class="form-control" id="setNumrowHistory">
													<option>10</option>
													<option>20</option>
													<option>30</option>
													<option>50</option>
												</select>
											</form>
										</div>
										<div class="btn-group">
											<a href="#"
												onclick="deleteallhistory('deleteallhistory.act')"
												class="btn btn-danger"> <i class="fa fa-ban"></i> Clear
												All watch later
											</a>
										</div>

										<div class="btn-group pull-right">
											<form role="form">
												<input type="text" class="form-control" id="tfsearchHistory"
													placeholder="Search category">
											</form>
										</div>
										<!-- /.btn-group .pull-right -->
									</div>
									<div id="getWatchlater">
										<!-- <div class="alert alert-info">
												<div class="the-box no-border store-list">
													<div class="media">
														<a class="pull-left" href="player.jsp"><img
															alt="image" class="store-image img-responsive"
															src="https://i.ytimg.com/vi/g1dNbTBvEHc/mqdefault.jpg"></a>
														<div class="clearfix visible-xs"></div>
														<div class="media-body" style="overflow: visible">
															<a href="#fakelink"></a>
															<div class="btn-group pull-right">
																<button type="button"
																	class="btn btn-default btn-sm dropdown-toggle"
																	data-toggle="dropdown" aria-expanded="false">
																	<i class="fa fa-cog"></i>
																</button>
																<ul class="dropdown-menu" role="menu">
																	<li><a href="../elearning/play.act?v=11">Play</a></li>
																	<li><a href="#"
																		onclick="deletehistory('deletehistory.act?historyid=3788&amp;page=1')">Remove
																			from watch later</a></li>
																</ul>
															</div>
															<ul class="list-inline">
																<li><a href="../elearning/play.act?v=11"><strong
																		class="text-black">Introduction, Syntax,
																			Selectors &amp; How to Apply</strong></a></li>
																<br>
																<li><a><span class="small text-muted"
																		style="color: #AAB2BD"> by Admin</span></a></li>
															</ul>
															<p class="hidden-xs"></p>
															<span class="small text-muted" style="color: #AAB2BD"><i
																class="fa fa-eye">&nbsp;&nbsp;2093</i>
																&nbsp;&nbsp;&nbsp; </span>
														</div>
													</div>
												</div>
											</div> -->
										<div class="row">
											<div class="col-sm-6">
												<div class="dataTables_info" id="datatable-example_info">Page
													1 of 4 entries</div>
											</div>
											<div class="col-sm-6">
												<div class="dataTables_paginate paging_bootstrap">
													<ul class="pagination separated">
														<li class="active"><a href="#page=1"
															onclick="gotohistorypage('historylist.act?page=1')">1</a></li>
														<li><a href="#page=2"
															onclick="gotohistorypage('historylist.act?page=2')">2</a></li>
														<li><a href="#page=3"
															onclick="gotohistorypage('historylist.act?page=3')">3</a></li>
														<li><a href="#page=4"
															onclick="gotohistorypage('historylist.act?page=4')">4</a></li>
														<li><a href="#next"
															onclick="gotohistorypage('historylist.act?page=2')">Next</a></li>
														<li><a href="#page=4"
															onclick="gotohistorypage('historylist.act?page=4')">Last</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end watch later -->

								<!-- courses -->
								<div class="tab-pane fade" id="panel-courses">
									<div class="btn-toolbar top-table" role="toolbar">
										<div class="btn-group">
											<form role="form" id="frmSetNumrowHistory">
												<select class="form-control" id="setNumrowHistory">
													<option>10</option>
													<option>20</option>
													<option>30</option>
													<option>50</option>
												</select>
											</form>
										</div>
										<div class="btn-group">
											<a href="#"
												onclick="deleteallhistory('deleteallhistory.act')"
												class="btn btn-danger"> <i class="fa fa-ban"></i> Clear
												All courses history
											</a>
										</div>

										<div class="btn-group pull-right">
											<form role="form">
												<input type="text" class="form-control" id="tfsearchHistory"
													placeholder="Search category">
											</form>

										</div>
										<!-- /.btn-group .pull-right -->
									</div>
									<div id="getCourses">
										<div class="me">
											<div class="alert alert-info">
												<div class="the-box no-border store-list">
													<div class="media">
														<a class="pull-left" href="player.jsp"><img
															alt="image" class="store-image img-responsive"
															src="https://i.ytimg.com/vi/g1dNbTBvEHc/mqdefault.jpg"></a>
														<div class="vblock">
															<a href="player.jsp">
																<div class="vcount">
																	<p>
																		30 <br>Videos
																	</p>
																	<div class="fa fa-th-list"></div>
																	<p></p>
																</div>
															</a>
														</div>
														<div class="clearfix visible-xs"></div>
														<div class="media-body" style="overflow: visible">
															<a href="#fakelink"></a>
															<div class="btn-group pull-right">
																<button type="button"
																	class="btn btn-default btn-sm dropdown-toggle"
																	data-toggle="dropdown" aria-expanded="false">
																	<i class="fa fa-cog"></i>
																</button>
																<ul class="dropdown-menu" role="menu">
																	<li><a href="../elearning/play.act?v=11">Play</a></li>
																	<li><a href="#"
																		onclick="deletehistory('deletehistory.act?historyid=3788&amp;page=1')">Remove
																			from History</a></li>
																</ul>
															</div>
															<br>
															<ul class="list-inline">
																<li><strong class="text-black">Learn Java</strong>
																	<br> <a><span class="small text-muted"
																		style="color: #AAB2BD"> by Admin</span></a></li>
															</ul>
															<p class="hidden-xs"></p>
															<span class="small text-muted" style="color: #AAB2BD"><i
																class="fa fa-eye">&nbsp;&nbsp;2093</i>
																&nbsp;&nbsp;&nbsp; </span><br> <br>
															<div class="progress">
																<div
																	class="progress-bar progress-bar-success progress-bar-striped"
																	role="progressbar" aria-valuenow="70" aria-valuemin="0"
																	aria-valuemax="100" style="width: 70%">
																	<span class="text-info" style="color: #fff"><i
																		class="fa fa-video-camera"></i> </span>20 videos
																	(70%&nbsp;completed)
																</div>

															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="dataTables_info" id="datatable-example_info">Page
													1 of 4 entries</div>
											</div>
											<div class="col-sm-6">
												<div class="dataTables_paginate paging_bootstrap">
													<ul class="pagination separated">
														<li class="active"><a href="#page=1"
															onclick="gotohistorypage('historylist.act?page=1')">1</a></li>
														<li><a href="#page=2"
															onclick="gotohistorypage('historylist.act?page=2')">2</a></li>
														<li><a href="#page=3"
															onclick="gotohistorypage('historylist.act?page=3')">3</a></li>
														<li><a href="#page=4"
															onclick="gotohistorypage('historylist.act?page=4')">4</a></li>
														<li><a href="#next"
															onclick="gotohistorypage('historylist.act?page=2')">Next</a></li>
														<li><a href="#page=4"
															onclick="gotohistorypage('historylist.act?page=4')">Last</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end courses -->

								<!-- /#panel-about -->
							</div>
							<!-- /.tab-content -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.collapse in -->
				</div>
				<!-- /.panel .panel-success -->

			</div>
			<!-- cd-tabs -->
			<footer class="site-footer"
				style="position: fixed; bottom: 0px; width: 100%; align: center; z-index: 0;">
				<div class="text-center">
					2015 � KHMERACADEMY<a href="#" class="go-top"> <i
						class="fa fa-angle-up"></i>
					</a>
				</div>
			</footer>
		</section>
	</section>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		
		<div class="modal-dialog">
			<div
				class="modal-content col-sm-12 col-xs-10 col-xs-offset-1 col-sm-offset-0">
				<span id="signinButton" style="" class="pre-sign-in">
				<span class="g-signin" data-callback="signinCallback"
				data-clientid="1034451067661-h7v9fipq91k83log7c47f49l1o257rl4.apps.googleusercontent.com"
				data-cookiepolicy="single_host_origin"
				data-scope="https://www.googleapis.com/auth/youtube.upload https://www.googleapis.com/auth/youtube">
			</span>
			</span>
				<div class="modal-header text-center h2 text-primary">
					<span class="modal-title" id="myModalLabel" data-toggle="modal"
						data-target="#myModal">Upload Video</span>
				</div>
				<div class="modal-body">
					<div style="display: none;">
						<img id="channel-thumbnail"> <span id="channel-name"></span>
					</div>
					<div id="runing" style="display: none;" class="progress">
						<div id="upload-progress" class="progress-bar" role="progressbar"
							aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
							style="width: 0%;">0%</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="col-md-2 col-sm-2 col-xs-12">
							<img id="src" src="img-login/uplo.png" alt="" class="img-rounded"
								style="width: 150px;"> <br />
							<!-- <div class="fileUpload btn btn-success">
									<span>CHOOSE VIDEO</span>
									<input type="file" id="file"  accept="video/*" class="upload" />
								</div> -->
						</div>
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Recipient's username"
								aria-describedby="basic-addon2"> <span
								class="input-group-addon" id="basic-addon2">Browse File </span>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 form-horizontal">
						<div class="form-group">
							<label for="title" class="col-sm-3 control-label">*Title:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="title" name="title"
									placeholder="Title">
							</div>
						</div>
						<div class="form-group">
							<label for="description" class="col-sm-3 control-label">Description:</label>
							<div class="col-sm-9">
								<textarea class="form-control" id="description"
									placeholder="Description" rows="4"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="status" class="col-sm-3 control-label">Status:</label>
							<div class="col-sm-9">
								<select class="form-control" id="privacy-status">
									<option>public</option>
									<option>unlisted</option>
									<option>private</option>
								</select>
							</div>
						</div>
						<button id="button" type="button"
							class="btn btn-primary btn-act pull-right">
							<span class="glyphicon glyphicon-cloud-upload" aria-hidden="true"></span>
							Upload
						</button>
						<br />
						<br />
						<br />
						<br />
						<br />

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 686px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 686px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 686px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 726px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 654px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 726px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 726px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: block; opacity: 0; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 557px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 837px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 799px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: block; opacity: 0; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 531px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 890px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 3px; z-index: auto; cursor: default; position: fixed; height: 799px; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 3px; z-index: auto; position: fixed; cursor: default; display: none; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none; opacity: 0; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; border-radius: 10px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0; background: rgb(64, 64, 64);">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; border-radius: 10px; left: 0px; background-color: rgb(232, 64, 63); background-clip: padding-box;"></div>
	</div>

	<script type="text/javascript">

		function listWatchLater() {
			$.ajax({
				url : "getWatchedLater",
				method : "POST",
				dataType : "JSON",
				data : {
					user_id : <%=session.getAttribute("userID")%>
			},success : function(data) {
					var str = '';
					for ( var i in data) {
						for ( var j in data[i]) {
							//alert(data[i][j].youtube_url);
							//alert(data[i][j].video_name);
							str += '<div class="alert alert-info">'
									+ '<div class="the-box no-border store-list">'
									+ '<div class="media">'
									+ '<a class="pull-left" href="player.jsp"><img ' +
								'alt="image" class="store-image img-responsive" ' +
								'src="https://i.ytimg.com/vi/'+ data[i][j].youtube_url +'/mqdefault.jpg"></a>'
									+ '<div class="clearfix visible-xs"></div>'
									+ '<div class="media-body" style="overflow: visible">'
									+ '<a href="#fakelink"></a>'
									+ '<div class="btn-group pull-right">'
									+ '<button type="button" ' +
										'class="btn btn-default btn-sm dropdown-toggle" ' +
										'data-toggle="dropdown" aria-expanded="false">'
									+ '<i class="fa fa-cog"></i>'
									+ '</button>'
									+ '<ul class="dropdown-menu" role="menu">'
									+ '<li><a href="../elearning/play.act?v=11">Play</a></li>'
									+ '<li><a href="#" ' +
											'>Remove from watch later</a></li>'
									+ '</ul>'
									+ '</div>'
									+ '<ul class="list-inline">'
									+ '<li><a href="#"><strong ' +
											'class="text-black">'
									+ data[i][j].video_name
									+ '</strong></a></li>'
									+ '<br>'
									+ '<li><a><span class="small text-muted" ' +
											'style="color: #AAB2BD"> by Admin</span></a></li>'
									+ '</ul>'
									+ '<p class="hidden-xs"></p>'
									+ '<span class="small text-muted" style="color: #AAB2BD"><i ' +
									'class="fa fa-eye">&nbsp;&nbsp;'
									+ data[i][j].view + '</i>'
									+ '&nbsp;&nbsp;&nbsp; </span>'
									+ '</div>' + '</div>'
									+ '</div></div>';

						}
						$("#getWatchlater").html(str);
					}

				}
			});
		}
	</script>
	
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<script src="js/data/angular.min.js"></script>
	<script src="js/data/history.js"></script>
	
	
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/respond.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/slidebars.min.js"></script>
	<script src="js/common-scripts.js"></script>
	
	<script src="//apis.google.com/js/client:plusone.js"></script>
	<script src="js-upload/auth.js"></script>
	<script src="js-upload/cors_upload.js"></script>
	<script src="js-upload/upload_video.js"></script>
	<script>
		$(document).ready(function(){		
			/* $("input[type='file']").filestyle({
				buttonName : "btn-primary"
			}); */
			listWatchLater();
			
			$("#msg_sucess").hide();
			$("#msg_error").hide();
			// choose profile
			$('#img').change(function() {
				img();
			});
			$("#myModal").modal({
				backdrop : 'static',
				keyboard : false
			});
		});
	</script>
</body>
</html>