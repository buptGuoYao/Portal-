<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>心 · 窝</title>
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
				<div class="col-md-7 login-section">
					<ul>
						<li>欢迎！<%=userName %></li>
					</ul>
				</div>

				
		</div>
	</div>
</div>

<!-- //header -->

<!-- banner -->
<div class="banner-slider">
	<div class="banner-pos">
		<!-- responsiveslides -->
							<script src="js/responsiveslides.min.js"></script>
								<script>
									// You can also use "$(window).load(function() {"
									$(function () {
									 // Slideshow 4
									$("#slider3").responsiveSlides({
										auto: true,
										pager: false,
										nav: false,
										speed: 500,
										namespace: "callbacks",
										before: function () {
									$('.events').append("<li>before event fired.</li>");
									},
									after: function () {
										$('.events').append("<li>after event fired.</li>");
										}
										});
										});
								</script>
		<!-- responsiveslides -->
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="banner one">
						<div class="container">
							<div class="navigation text-center">
								<span class="menu"><img src="index.jpg" alt=""/></span>
										<ul class="nav1">
										<li><a class="active" href="index.jsp">心 · 窝</a></li>
										<li><a href="about.jsp">心 · 阅读</a></li>
										<li><a href="menu.jsp">心 · 咨询</a></li>
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
							<!-- point burst circle -->
							<!-- //point burst circle -->
						
							<!-- point burst circle -->
							<div class="logo">
								<a href="index.jsp">
									<div class="burst-40 ">
									   
									</div>
									
									<h1>---心 		·	窝---</h1>
									
								</a>
							</div>
							<!-- //point burst circle -->
							
							<div class="banner-info text-center">
								<p>你并不独行！</p>
								
							</div>					
					   </div>
					</div>
				</li>			
			</ul>
		</div>
	</div>
	<div class="clearfix"></div>

<!-- banner-bottom -->
		<div class="banner-bottom">
			<div class="container">
				<div class="bottom-grids">
					<div class="col-md-2 bottom-grid text-center">	
						<div class="btm-clr">
							<figure class="icon">
								<img src="images/index-1.jpg" alt="" />
						  </figure>
							<h3><a href="about.jsp">心 · 阅读</a></h3>
							<p>每日更新，精选的美文，包含心理测试，趣味图片等</p>
						</div>
					</div>
					<div class="col-md-3 bottom-grid btm-gre text-center">
						<div class="btm-clr">
							<figure class="icon">
								<img src="images/index-4.jpg" alt="" />
						  </figure>
							<h3><a href="menu.jsp">心 · 咨询</a></h3>
							<p> 浏览推荐咨询师，给您带来专业的心理咨询服务，深入了解，疏解烦恼</p>
						</div>
					</div>
					<div class="col-md-2 bottom-grid text-center">
						<div class="btm-clr">
							<figure class="icon">
								<img src="images/index-2.jpg" alt="" />
						  </figure>
							<h3><a href="gallery.jsp">心 · 闻</a></h3>
							<p> 美文及行业内新闻、心理问题的解决办法等文章以及网站的相关通知</p>
						</div>
					</div>
					<div class="col-md-2 bottom-grid btm-gre text-center">
						<div class="btm-clr">
							<figure class="icon">
								<img src="images/index-3.jpg" alt="" />
						  </figure>
							<h3><a href="typography.jsp">心 · 动</a></h3>
							<p> 提供线上线下的众多活动，由平台举办或者平台与高校合作举办</p>
						</div>
					</div>
					<div class="col-md-3 bottom-grid text-center">
						<div class="btm-clr">
							<figure class="icon">
								<img src="images/index-5.jpg" alt="" />
						  </figure>
							<h3><a href="contact.jsp">心 · 高校</a></h3>
							<p> 浏览平台的合作高校，以及高校正在进行的测试活动，给高校提供一个观测学生心理状态的平台</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	<!-- //banner-bottom -->
</div>
<!-- //banner -->
<!-- welcome -->
<div class="welcome">
	<div class="container">
		<div class="wel-info">
			<h3>WELCOME</h3>
			<div class="strip-line"></div>
			<p>“心窝”主要针对大学生心理健康服务市场，意在通过平台的服务为大学生解决心理健康问题，建立大学生心理健康档案，营造一条专业化、深度化的大学生心理健康服务产业链。并立志逐步发展成为中国最大的线上心理健康服务平台。</p>
		</div>
		<div class="welcome-grids">
			<div class="col-md-4 welcome-grid-img">
				<img src="images/3.png" alt=""/>
				<div class="wel-pos">
				</div>
			</div>
			<div class="col-md-4 welcome-grid">
				<div class="welcome-gd second">
					<p>中国最大的心理健康交流平台，解决中国庞大的人口基数和工作压力下的心理健康问题，为减少中国庞大的抑郁症人群、高发的自杀事件等贡献自己的力量。  
					</p>
				</div>
			</div>
			<div class="col-md-4 welcome-grid-img">
				<img src="images/2.png" alt=""/>
				<div class="wel-pos">
				</div>
			</div>
			<div class="col-md-4 welcome-grid">
				<div class="welcome-gd second">
					<p>为现如今中国稀缺的专业心理咨询师资源提供“造血”能力的平台，让有志于投身中国心理健康咨询事业的人能够有一个学习心理知识和初步接触心理亚健康人群的机会。
					</p>
				</div>
			</div>
			<div class="col-md-4 welcome-grid-img">
				<img src="images/1.png" alt=""/>
				<div class="wel-pos">
				</div>
			</div>
			<div class="col-md-4 welcome-grid">
				<div class="welcome-gd second">
					<p>提高中国普通大学生对于心理健康问题的重视，并普及心理健康知识，最后从根本上提升中国大学生的心理素质。
					</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //welcome -->
<div class="team">
	<div class="container">
		<div class="team-info">
			<h3>我们的团队</h3>
			<div class="strip-line"></div>
		</div>
		<!-- flex-slider -->
			<div class="work-bottom">
							<ul id="flexiselDemo1">			
								<li>
									<div class="team-left">
										<img src="images/team1.png" alt=""/>
										<div class="team-bottom">
											<h4>樊家澍</h4>
											<p>门户网站前端</p>
										</div>
									</div>
								</li>
								<li>
									<div class="team-left">
										<img src="images/team2.png" alt=""/>
										<div class="team-bottom">
											<h4>郭垚</h4>
											<p>门户网站后端</p>
										</div>
									</div>
								</li>
								<li>
									<div class="team-left">
										<img src="images/team3.png" alt=""/>
										<div class="team-bottom">
											<h4>刘美亿</h4>
											<p>设计与项目管理&前端</p>
										</div>
									</div>
								</li>
								<li>
									<div class="team-left">
										<img src="images/team4.png" alt=""/>
										<div class="team-bottom">
											<h4>陈浩</h4>
											<p>内容运营</p>
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
<!-- footer -->
<div class="footer">
	<div class="container">
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
