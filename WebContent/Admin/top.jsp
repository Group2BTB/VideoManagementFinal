
	<!-- TS143814148718224: Xenon - Boostrap Admin Template created by Laborator / Please buy this theme and support the updates -->
	<div class="row">
		<!-- Profile Info and Notifications -->
		<div class="col-md-6 col-sm-8 clearfix">
			<ul class="user-info pull-left pull-none-xsm">
				<!-- Profile Info -->
				<li class="profile-info dropdown">
					<!-- add class "pull-right" if you want to place this from right -->
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img
						src="images/profile.jpg" alt="" class="img-circle"
						width="44" /> <%= session.getAttribute("user")%>
				</a>
					<ul class="dropdown-menu">
						<!-- Reverse Caret -->
						<li class="caret"></li>
						<!-- Profile sub-links -->
						<li><a href="extra/timeline/index.html"> <i
								class="entypo-user"></i> Edit Profile
						</a></li>
						<li><a href="mailbox/main/index.html"> <i
								class="entypo-mail"></i> Inbox
						</a></li>
						<li><a href="extra/calendar/index.html"> <i
								class="entypo-calendar"></i> Calendar
						</a></li>
						<li><a href="#"> <i class="entypo-clipboard"></i> Tasks
						</a></li>
					</ul>
				</li>
			</ul>
			<!-- 
			
			 -->
			
		</div>
		<!-- Raw Links -->
		<div class="col-md-6 col-sm-4 clearfix hidden-xs">
			<ul class="list-inline links-list pull-right">										
				<li>
				<a href="logout">Log Out <i class="entypo-logout right"></i>
				</a>
				
				</li>
			</ul>
		</div>
	</div>
	<hr/>