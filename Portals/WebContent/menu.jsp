<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>心 · 咨询</title>
	<!--fonts-->
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
		
	<!--//fonts-->
			<link href="css/bootstrap.css" rel="stylesheet">
			<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Favorites Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //for-mobile-apps -->	
	<!-- js -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- js -->
	<!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
	<!-- cart -->
	<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!-- start-smoth-scrolling -->

</head>
<body>


<%
   String userName = (String)session.getAttribute("username") ;
  %>
<!-- header -->
<div class="header">
	<div class="container">
		<div class="top-header">
				<div class="header-left">
					<p>为你的心提供一个温馨的窝</p>
				</div>
				<div class="login-section">
					<ul>
						<li>欢迎！<%=userName %></li>
						
					</ul>
				</div>

			

				<div class="clearfix"></div>
		</div>
	</div>
</div>

<!-- //header -->
<!-- banner -->
<div class="banner-slider">
	<div class="banner-pos">
						<div class="container">
							<div class="navigation text-center">
								<span class="menu"><img src="images/888.jpg" alt=""/></span>
									<ul class="nav1">
										<li><a  href="index.jsp">心 · 窝</a></li>
										<li><a href="about.jsp">心 · 阅读</a></li>
										<li><a class="active" href="menu.jsp">心 · 咨询</a></li>
										<li><a href="galley.jsp">心 · 闻</a></li>
										
										<li><a href="edit.jsp">心 · 记录</a></li>
										<li><a href="find">心 · 历程</a></li>
										<li><a href="contact.jsp">心 · 高校</a></li>
										<div class="clearfix"></div>
									</ul>
									<!-- script for menu -->
										<script> 
											$( "span.menu" ).click(function() {
											$( "ul.nav1" ).slideToggle( 300, function() {
											 // Animation complete.
											});
											});
										</script>
									<!-- //script for menu -->

							</div>	
						</div>
	</div>
</div>

<!-- //banner -->
<!-- menu-page -->
<div class="team">
	<div class="container">
		<div class="team-info">
			<h3>咨询师团队</h3>
			<div class="strip-line"></div>
		</div>
		<!-- flex-slider -->
			<div class="work-bottom">
							<ul id="flexiselDemo1">			
								<li>
									<div class="team-left">
										<img src="images/team1.png" alt=""/>
										<div class="team-bottom">
											<h4>紫原敦</h4>
											<p>每次出场都在吃零食</p>
										</div>
									</div>
								</li>
								<li>
									<div class="team-left">
										<img src="images/team2.png" alt=""/>
										<div class="team-bottom">
											<h4>黑子哲也</h4>
											<p>如同幻影般欺骗着敌人的叫做『Misdirection』的技巧</p>
										</div>
									</div>
								</li>
								<li>
									<div class="team-left">
										<img src="images/team3.png" alt=""/>
										<div class="team-bottom">
											<h4>赤司征十郎</h4>
											<p>队长，异色瞳</p>
										</div>
									</div>
								</li>
								<li>
									<div class="team-left">
										<img src="images/team4.png" alt=""/>
										<div class="team-bottom">
											<h4>青峰大辉</h4>
											<p>自由无限的超高速运球和投篮方式</p>
										</div>
									</div>
								</li>
							</ul>
								<script type="text/javascript">
										$(window).load(function() {
											$("#flexiselDemo1").flexisel({
												visibleItems: 4,
												animationSpeed: 1000,
												autoPlay: true,
												autoPlaySpeed: 3000,    		
												pauseOnHover: true,
												enableResponsiveBreakpoints: true,
												responsiveBreakpoints: { 
													portrait: { 
														changePoint:480,
														visibleItems: 1
													}, 
													landscape: { 
														changePoint:640,
														visibleItems: 2
													},
													tablet: { 
														changePoint:768,
														visibleItems: 3
													}
												}
											});
											
										});
								</script>
								<script type="text/javascript" src="js/jquery.flexisel.js"></script>
				
			</div>
		<!-- //flex-slider -->	
	</div>
</div>
<!-- //menu-page -->

<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="footer-left">
			<p>Copyright &copy; 2015.Company name All rights reserved.More Templates</p>
		</div>
		<div class="footer-right">
			<ul>
				<li><a href="#" class="twitter"> </a></li>
				<li><a href="#" class="facebook"> </a></li>
				<li><a href="#" class="chrome"> </a></li>
				<li><a href="#" class="pinterest"> </a></li>
				<li><a href="#" class="linkedin"> </a></li>
				<li><a href="#" class="dribbble"> </a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //footer -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

</body>
</html>
