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
<!--right slidebar-->
<link href="css/slidebars.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">

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
			<a href="index-2.html" class="logo">Khmer<span>Academy</span></a>

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
					<div class="panel-heading" style="background-color: #558d48">
						<ul class="nav nav-tabs">
							<li class=""><a href="#panel-videos" data-toggle="tab"
								aria-expanded="false"><i class="fa fa fa-eye"></i> Videos</a></li>
							<li class="active"><a href="#panel-playlist"
								data-toggle="tab" aria-expanded="true"><i
									class="fa fa-caret-square-o-right"></i> Playlist</a></li>
							<li class=""><a href="#panel-history" data-toggle="tab"
								aria-expanded="false"><i class="fa fa fa-eye"></i> History</a></li>
							<li class=""><a href="#panel-myinfo" data-toggle="tab"
								aria-expanded="false"><i class="fa  fa-user"></i> About</a></li>
							<li class="pull-right">
								<!-- 										 <span class="btn btn-group inline-popups"> --> <a
								class="btn btn-success btn-rounded-lg" href="video.act"
								data-effect="mfp-zoom-in"> <i class="fa fa-cloud-upload"></i>
									Upload video
							</a> <!-- 										</span> -->
							</li>





						</ul>
					</div>
					<div id="panel-collapse-1" class="collapse in">
						<div class="panel-body">
							<div class="tab-content">
								<!-- Videos -->

								<div class="tab-pane fade" id="panel-videos">

									<div id="v"></div>

									<div class="btn-toolbar top-table" role="toolbar">


										<div class="btn-group pull-right">
											<form role="form">
												<input type="text" id="searchVideo" class="form-control"
													placeholder="Search by Video title">
											</form>

										</div>
										<!-- /.btn-group .pull-right -->





									</div>



									<div id="getUserVideos">
										<div class="alert alert-success fade in alert-dismissable">
											<button type="button" class="close" data-dismiss="alert"
												aria-hidden="true">x</button>
											<strong>No</strong> videos!
										</div>
									</div>

								</div>


								<!-- Info -->


								<div class="tab-pane fade" id="panel-myinfo">
									<div class="tab-pane fade in" id="panel-about">
										<h4 class="small-heading more-margin-bottom">MY INFOR</h4>
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label class="col-sm-2 control-label">Username</label>
												<div class="col-sm-10">
													<p class="form-control-static">ChanSophath</p>
												</div>
											</div>
											<!-- /.form-group -->
											<div class="form-group">
												<label class="col-sm-2 control-label">Email</label>
												<div class="col-sm-10">
													<p class="form-control-static">sophath_chan@graduate.org</p>
												</div>
											</div>
											<!-- /.form-group -->
											<div class="form-group">
												<label class="col-sm-2 control-label">Gender</label>
												<div class="col-sm-10">
													<p class="form-control-static">male</p>
												</div>
											</div>
											<!-- /.form-group -->
											<div class="form-group">
												<label class="col-sm-2 control-label">Date of birth</label>
												<div class="col-sm-10">
													<p class="form-control-static"></p>
												</div>
											</div>
											<!-- /.form-group -->
											<div class="form-group">
												<label class="col-sm-2 control-label">Phone numebr</label>
												<div class="col-sm-10">
													<p class="form-control-static"></p>
												</div>
											</div>
											<!-- /.form-group -->
											<div class="form-group">
												<label class="col-sm-2 control-label">Register date</label>
												<div class="col-sm-10">
													<p class="form-control-static">2015-01-26</p>
												</div>
											</div>
											<!-- /.form-group -->

											<div class="form-group">
												<label class="col-sm-2 control-label"> playlists</label>
												<div class="col-sm-10">
													<p class="form-control-static">0</p>
												</div>
											</div>
											<!-- /.form-group -->
										</form>
									</div>
								</div>
								<div class="tab-pane fade" id="panel-history">

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
												All History
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


									<div id="getHistory">
										<div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=11"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/g1dNbTBvEHc/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
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
															class="fa fa-eye">&nbsp;&nbsp;2093</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=60"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/NjNptB53g9I/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=60">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=3875&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=60"><strong
																	class="text-black">1.1 - Introduction &amp;
																		Overview</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs"></p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;7075</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=51"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/Ih8H6HXeKQQ/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=51">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=11243&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=51"><strong
																	class="text-black">Introduction to HTML</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs"></p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;5178</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=577"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/9ERilPCCZ-0/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=577">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=58349&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=577"><strong
																	class="text-black">Ã¡Å¾Å¸Ã¡Å¾ËœÃ¡Å¾Â¸Ã¡Å¾â‚¬Ã¡Å¾Â¶Ã¡Å¾Å¡Ã¡Å¾Å&nbsp;Ã¡Å¾ÂºÃ¡Å¾â‚¬Ã¡Å¸â€™Ã¡Å¾Å¡Ã¡Å¸ÂÃ¡Å¾â€˜Ã¡Å¾Â¸Ã¡Å¸Â¡
																		- Part 1- Rodwell Institute</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs">Ã¡Å¾â€¢Ã¡Å¸â€™Ã¡Å¾Å&nbsp;Ã¡Å¾â€ºÃ¡Å¸â€¹Ã¡Å¾Å&nbsp;Ã¡Å¸â€žÃ¡Å¾â„¢
															Ã¡Å¾Å“Ã¡Å¾Â·Ã¡Å¾â€˜Ã¡Å¸â€™Ã¡Å¾â„¢Ã¡Å¾Â¶Ã¡Å¾Å¸Ã¡Å¸â€™Ã¡Å¾Å&nbsp;Ã¡Å¾Â¶Ã¡Å¾â€œ
															Rodwell</p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;686</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=281"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/kDr-xQO4to0/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=281">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=54957&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=281"><strong
																	class="text-black">1.1 - Objective C Content</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs">Objective C Programming tutorial
															by HRD Students</p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;818</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=55"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/VjFMoS7Fklk/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=55">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=11244&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=55"><strong
																	class="text-black">5. HTML Table, Block</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs"></p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;631</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=52"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/ShTRRMsvT9I/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=52">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=45697&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=52"><strong
																	class="text-black">2. HTML Elements, Syntax,
																		Attribute, Heading, Line</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs"></p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;1197</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=56"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/KIgQMfoUvCs/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=56">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=45678&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=56"><strong
																	class="text-black">6. HTML Layout, Forms</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs"></p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;601</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=230"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/KzTz47a0nMo/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=230">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=4841&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=230"><strong
																	class="text-black">1 - Introduction to iOS</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs">Explanation about what iOS is</p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;2216</i> &nbsp;&nbsp;&nbsp;
														</span>
													</div>
												</div>
											</div>
											<div class="the-box no-border store-list">
												<div class="media">
													<a class="pull-left" href="../elearning/play.act?v=488"><img
														alt="image" class="store-image img-responsive"
														src="https://i.ytimg.com/vi/Za5RloAb8xk/mqdefault.jpg"></a>
													<div class="clearfix visible-xs"></div>
													<div class="media-body" style="overflow: visible">
														<a href="#fakelink"></a>
														<div class="btn-group pull-right">
															<button type="button"
																class="btn btn-default btn-sm dropdown-toggle"
																data-toggle="dropdown">
																<i class="fa fa-cog"></i>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="../elearning/play.act?v=488">Play</a></li>
																<li><a href="#"
																	onclick="deletehistory('deletehistory.act?historyid=14077&amp;page=1')">Remove
																		from History</a></li>
															</ul>
														</div>
														<ul class="list-inline">
															<li><a href="../elearning/play.act?v=488"><strong
																	class="text-black">1.
																		Ã¡Å¾â€“Ã¡Å¸â€™Ã¡Å¾â„¢Ã¡Å¾â€°Ã¡Å¸â€™Ã¡Å¾â€¡Ã¡Å¾â€œÃ¡Å¸Ë†
																		- Consonant</strong></a></li>
															<br>
															<li><a><span class="small text-muted"
																	style="color: #AAB2BD"> by Admin</span></a></li>
														</ul>
														<p class="hidden-xs">Korean Language training with
															explanation in Khmer</p>
														<span class="small text-muted" style="color: #AAB2BD"><i
															class="fa fa-eye">&nbsp;&nbsp;2211</i> &nbsp;&nbsp;&nbsp;
														</span>
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
								<!-- /#panel-about -->
								<div class="tab-pane fade active in" id="panel-playlist">
									<div class="the-box no-border">

										<div class="btn-toolbar top-table" role="toolbar">
											<div class="btn-group">
												<form role="form" id="frmSetRowPlaylist">
													<select id="setNumrowPlaylist" class="form-control">
														<option>8</option>
														<option>12</option>
														<option>16</option>
														<option>20</option>
													</select>
												</form>
											</div>
											<div class="btn-group inline-popups">
												<a class="btn btn-success dropdown-toggle"
													href="#form-create-playlist" data-effect="mfp-zoom-in"><i
													class="fa fa-plus"></i> Create new playlist</a>
											</div>

											<div class="btn-group" id="btcheck">
												<a href="#checkAll" id="checkk" class="btn btn-primary"><input
													type="checkbox" id="select-all" name="selectAll" value="">Check
													All</a>

											</div>

											<div class="btn-group">
												<a href="javascript:;" title="getPlayList" id="deleteall"
													class="btn btn-danger"><i class="fa fa-ban"></i> Delete
													selected</a>
											</div>
											<div class="btn-group" id="nextprevious">
												<button type="button" disabled="" class="btn btn-default">
													<i class="fa fa-chevron-left"></i>
												</button>
												<button type="button" disabled="" class="btn btn-default">
													<i class="fa fa-chevron-right"></i>
												</button>
											</div>



											<div class="btn-group pull-right">
												<form role="form">
													<input type="text" id="searchPlaylist" class="form-control"
														placeholder="Search playlistname">
												</form>

											</div>
											<!-- /.btn-group .pull-right -->
										</div>

										<div class="row">


											<div id="getPlayList" style="padding: 15px;">
												<div class="alert alert-success fade in alert-dismissable">
													<button type="button" class="close" data-dismiss="alert"
														aria-hidden="true">x</button>
													<strong>No</strong> playlist!
												</div>
											</div>

										</div>

									</div>

									<div id="form-create-playlist"
										class="white-popup mfp-with-anim mfp-hide"
										style="border-radius: 5px">
										<!-- 													<form method="post" name="frmcreateplaylist" action="/" id="frmcreateplaylist"  class="form-horizontal"> -->
										<div class="form-group">
											<label for="exampleInputEmail1"><h3>Create
													playlist</h3></label>
										</div>

										<div class="form-group">
											<label for="exampleInputEmail1">Playlist name</label> <input
												type="text" class="form-control" name="playlistname"
												id="playlistname" placeholder="EG. MyTop"> <small
												class="msg" style="color: red; display: none">The
												playlist nam is required and can't be empty</small>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Description</label> <input
												type="text" name="description" class="form-control"
												id="description" placeholder="EG. My music">
										</div>
										<div class="form-group">
											<label>Set View</label> <select class="form-control"
												id="publicview" name="publicview" tabindex="2">
												<option value="false">Private</option>
												<option value="true">Public</option>
											</select>
										</div>
										<input type="button" id="btncreate" value="Create"
											class="btn btn-success">
										<!-- 													</form> -->
									</div>

									<div id="form-update-playlist"
										class="white-popup mfp-with-anim mfp-hide"
										style="border-radius: 5px">
										<!-- 													<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist"  class="form-horizontal"> -->
										<div class="form-group">
											<label for="exampleInputEmail1"><h3>Update
													playlist</h3></label>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Playlist name</label> <input
												type="text" class="form-control" name="playlistname"
												id="updatename" placeholder="EG. MyTop"> <input
												type="hidden" class="form-control" name="playlistid"
												id="updateid" placeholder="EG. MyTop"> <input
												type="hidden" class="form-control" name="thumbnail"
												id="thumbnail" placeholder="EG. MyTop"> <small
												class="msg" style="color: red; display: none">The
												playlist nam is required and can't be empty</small>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Description</label> <input
												type="text" name="description" class="form-control"
												id="updatedescription" placeholder="EG. My music">
										</div>
										<div class="form-group">
											<label>Set View</label> <select class="form-control"
												id="updatepublicview" name="updatepublicview" tabindex="2">
												<option value="false">Private</option>
												<option value="true">Public</option>
											</select>
										</div>
										<button type="button" id="btclosefrmupdate"
											class="btn btn-default" data-dismiss="modal">Close</button>
										<input type="button" id="btnupdateplaylist"
											class="btn btn-success" value="Update">

									</div>
								</div>
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
					2015 © KHMERACADEMY<a href="#" class="go-top"> <i
						class="fa fa-angle-up"></i>
					</a>
				</div>
			</footer>
		</section>
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="js/respond.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!--right slidebar-->
	<script src="js/slidebars.min.js"></script>
	<!--common script for all pages-->
	<script src="js/common-scripts.js"></script>
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




</body>
</html>