

		<!-- TS143814148717322: Xenon - Boostrap Admin Template created by Laborator / Please buy this theme and support the updates -->
		<div class="sidebar-menu">
			<div class="sidebar-menu-inner">
				<header class="logo-env">
					<!-- logo -->
					<div class="logo">
						<a href="dashboard/main/index.html"> <img
							src="images/logo%402x.png" width="120" alt="" />
						</a>
					</div>
					<!-- logo collapse icon -->
					<div class="sidebar-collapse">
						<a href="#" class="sidebar-collapse-icon">
							<!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
							<i class="entypo-menu"></i>
						</a>
					</div>
					<!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
					<div class="sidebar-mobile-menu visible-xs">
						<a href="#" class="with-animation">
							<!-- add class "with-animation" to support animation --> <i
							class="entypo-menu"></i>
						</a>
					</div>
				</header>
				<ul id="main-menu" class="main-menu">
					<li><a href="#"><i class="glyphicon glyphicon-home"></i><span class="title">Dashboard</span></a>
						<ul>						
							<li><a href="#"><span class="title">Home</span></a></li>
							<li><a href="#"><span class="title">Help</span></a></li>
						</ul>
					</li>
					<li class=""><a href="#"><i class="glyphicon glyphicon-facetime-video"></i><span class="title">Video</span></a>
						<ul>													
							<li><a href="video.jsp"><span class="title">Manage Videos</span></a></li>
							<li><a href="category.jsp"><span class="title">Category</span></a></li>
							<li><a href="playlist.jsp"><span class="title">Playlist</span></a></li>
							<li><a href="ducument.jsp"><span class="title">Document</span></a></li>
							<li><a href="question.jsp"><span class="title">Question</span></a></li>							
						</ul>
					</li>
					<li><a href="#"><i class="glyphicon glyphicon-user"></i><span class="title">User</span></a>
						<ul>							
							<li><a href="user.jsp"><span class="title">Manage Users</span></a></li>
							<li><a href="department.jsp"><span class="title">Department</span></a></li>
							<li><a href="university.jsp"><span class="title">University</span></a></li>
						</ul>
					</li>
					<li>
						<a href="comment.jsp"><i class="glyphicon glyphicon-comment"></i><span class="title">Manage Comment</span><span id="couCom" class="badge badge-secondary">8</span></a>
						
					</li>
					<li><a href="#"><i class="glyphicon glyphicon-duplicate"></i><span class="title">Report</span></a>
						
					</li>
				</ul>
			</div>
		</div>
		<script>
			function countCommentNotView() {	
				$.ajax({
					url : '../countComment',
					type : 'POST',
					async : false,
					cache : false,
					contentType : false,
					processData : false,
					success : function(data) {
						
						$("#couCom").text(data+"");
					},
					error : function() {
						//swal("Error!", "Cannot add new student!", "error");
					}
				});
			}
			countCommentNotView();
		</script>
		
		