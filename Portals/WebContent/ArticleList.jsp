<%@ page language="java"  import="java.util.List,java.article"  contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>   <%-- 指令标识 --%>


<!DOCTYPE html>
<html>
<head>
	<title>心 · 历程</title>
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
								<span class="menu"><img src="images/menu.png" alt=""/></span>
										<ul class="nav1">
										<li><a href="index.jsp">心 · 窝</a></li>
										<li><a href="about.jsp">心 · 阅读</a></li>
										<li><a href="menu.jsp">心 · 咨询</a></li>
										<li><a href="galley.jsp">心 · 闻</a></li>
										<li><a href="edit.jsp">心 · 记录</a></li>
										<li><a class="active"  href="find">心 · 历程</a></li>
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
							<!-- point burst circle -->
						</div>
	</div>
</div>
<!-- //banner -->
<!-- menu-page -->
<div class="menu">
	<div class="container">
		<div class="menu-info">
			<h3>查看记录</h3>
			<div class="strip-line"></div>
		</div>
		
		
		
		<div class="our-menu-grids">
		
		<% 
		String []title = (String[])session.getAttribute("title_js");
		String []body = (String[])session.getAttribute("body_js");
		for(int i=0; i< 5 ;i++)
		{
		%>
          <div class="order-top">
				<li class="data" >
					<h3>心·动</h3>
					<h3><%= title[i] %></h3>
					<p><%= body[i] %> </p>
				</li>
				<form method="POST" name="frmLogin" action="BuyServlet">
				<li class="bt-nn" >
					<input type="submit" id="btn5" name="Submit" value=" 阅读全部（无）">
				</li>
				</form>
				<div class="clearfix"></div>
			</div>
	<%}
		%>
	
		</div>
	</div>
</div>
<!-- //menu-page -->

<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="footer-left">
			<p>Copyright &copy; 2015.Company name All rights reserved.More Templates </p>
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
