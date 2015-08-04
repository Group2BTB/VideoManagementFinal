<nav id="yt_menuwrap" class="block" style="background-color: #0C959A;">
                        <div class="container">
							<div class="row">
									<div id="yt_logo" class="col-md-3 col-sm-12" >						
			<a class="logo" href="index.jsp" title="HRD CENTER">
				<img data-placeholder="no" src="ELearning/templates/images/styling/default/logo.png" alt="HRD Center" style="width:246px;height:100px;"  />
			</a>           
                </div>
				<div id="yt_mainmenu" class="col-md-9 col-sm-12 "  >
			<ul id="meganavigator" class="clearfix navi "><li class=" level1 first ">
	<a title="Home " class=" level1 first  item-link" href="index.jsp"><span class="menu-title">Home </span></a>	
	</li>
<li class="level1 havechild ">
	<a title="Elearning" class="level1 havechild  item-link" href="#">
        <span class="menu-title">Elearning </span>
    </a>	
</li>

<li class="level1 havechild ">
	<a title="Tutorials" class="level1 havechild  item-link" href="#"
       ><span class="menu-title">Tutorails</span>
    </a>	
</li>

<li class="level1 havechild ">
	<a title="Login" class="level1 havechild  item-link" id="btnLogin" data-toggle="modal" data-target="#login" style="cursor: pointer;">
        <span class="menu-title">Login</span>      
    </a>	
</li>

 <jsp:include page="/ELearning/include/_login.jsp"></jsp:include>
 
<li class="level1 havechild mega1">
	<a title="Sign Up" class="level1 havechild mega1 item-link" id="btnRegister"  data-toggle="modal" data-target="#register" style="cursor: pointer;">
        <span class="menu-title">Sign Up</span>        
    </a>
    <jsp:include page="/ELearning/include/_register.jsp"></jsp:include>
</li>

<li class="level1 ">
	<a title="" class="level1  item-link" href="#">
        <img src="ELearning/js/images/khmer.png" alt="Arabic" title="Arabic" />
        <img src="ELearning/js/images/English.png" alt="English " title="English " />
    </a>	
</li>

<!------//Meun Normal------>

</ul>
	   <!------Collapse Menu------>
		<div id="yt-responivemenu" class="yt-resmenu ">
			<button data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar collapsed" type="button">
				<i class="fa fa-bars"></i> Menu			</button>
			<div id="resmenu_sidebar" class="nav-collapse collapse" >
				<ul class="nav resmenu">
				    <li><a title="Home " href='index.jsp' class="active">Home </a></li>
        <li class="haveChild level1"><a title="" href='#'>Elearning </a></li>
            <li class="haveChild level1"><a title="" href='#'>Tutorails</a></li>
            <li class="haveChild level1"><a title="" href='#'>Login</a></li>
            <li><a title="" href='#'>Sing Up</a>        </li>
        <li>
            <a title="" href='#'>            
                <img src="ELearning/js/images/English.png" alt="English " title="English " />
            </a>
        </li>
        <li>
            <a title="" href='#'>
             <img src="ELearning/js/images/khmer.png" alt="KHMER" title="KHMER" />
            </a>
        </li>
            
            
    </ul>
    </div>			
    </div>
<!------//CollapseMenu------>
	<script type="text/javascript">

	jQuery(document).ready(function($) {
		$('.btn-navbar').click(function(){
				$(this).children().toggleClass('fa-times');
		});
		$("ul.resmenu li.haveChild").each(function() {
			$(this).children(".res-wrapnav").css('display', 'none');
			var ua = navigator.userAgent,
			event = (ua.match(/iPad/i)) ? "touchstart" : "click";
			$(this).children(".menuress-toggle").bind(event, function() {
				
				$(this).siblings(".res-wrapnav").slideDown(350);
				$(this).parent().siblings("li").children(".res-wrapnav").slideUp(350);
				$(this).parent().siblings("li").removeClass("active");
				
				$(this).parent().addClass(function(){
					if($(this).hasClass("active")){
						$(this).removeClass("active");
						$(this).children(".res-wrapnav").slideToggle();
						return "";
					}
					return "active";
				});
			});
		});
	});
</script>        </div>
									</div>
						</div>
						
                    </nav>		
        