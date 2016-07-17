<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>心 · 高校</title>
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
										<li><a href="index.jsp">心 · 窝</a></li>
										<li><a href="about.jsp">心 · 阅读</a></li>
										<li><a href="menu.jsp">心 · 咨询</a></li>
										<li><a href="galley.jsp">心 · 闻</a></li>
										<li><a href="edit.jsp">心 · 记录</a></li>
										<li><a href="find">心 · 历程</a></li>
										<li><a class="active"  href="contact.jsp">心 · 高校</a></li>
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
<!-- contact-page -->
<div class="gallery">
	<div class="container">
		<div class="gallery-info">
			<h3>合作高校</h3>
			<div class="strip-line st-border"></div>
		</div>
		<div class="gallery-grids">
					<div class="col-md-4 gallery-grid gallery1">
						<a href=" http://bbs.pku.edu.cn/"><img src="images/beijing.jpg" class="img-responsive"></a>
					</div>
					
					<div class="col-md-4 gallery-grid gallery1">
						<a href=" https://bbs.byr.cn/" ><img src="images/beiyou.jpg" class="img-responsive" alt="/"></a>
					</div>
					
					<div class="col-md-4 gallery-grid gallery1">
						<a href=" https://bbs.fudan.edu.cn/"><img src="images/fudan.jpg" class="img-responsive"></a>
					</div>

					<div class="col-md-4 gallery-grid gallery1">
						<a href=" http://bbs.nankai.edu.cn/"><img src="images/nankai.jpg" class="img-responsive"></a>
					</div>
					
					<div class="col-md-4 gallery-grid gallery1">
						<a href=" http://bbs.whu.edu.cn/"><img src="images/wuhan.jpg" class="img-responsive"></a>
					</div>
					
					<div class="col-md-4 gallery-grid gallery1">
						<a href=" https://bbs.sjtu.edu.cn/file/bbs/index/index.htm"><img src="images/jiaoda.jpg" class="img-responsive"></a>
					</div>
					
					<div class="col-md-4 gallery-grid gallery1">
						<a href=" http://www.thubbs.cn/"><img src="images/qinghua.jpg" class="img-responsive"></a>
					</div>
					
					<div class="col-md-4 gallery-grid gallery1">
						<a href="  http://www.zju1.com/"><img src="images/zheda.jpg" class="img-responsive"></a>
					</div>
					
					<div class="col-md-4 gallery-grid gallery1">
						<a href=" http://www.rucbbs.com.cn/"><img src="images/renmin.jpg" class="img-responsive"></a>
					</div>
					<div class="clearfix"> </div>
					

		</div>
		<link rel="stylesheet" href="css/swipebox.css">
					<script src="js/jquery.swipebox.min.js"></script> 
						<script type="text/javascript">
							jQuery(function($) {
								$(".swipebox").swipebox();
							});
						</script>
	</div>
</div>
<!-- //gallery-page -->
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
