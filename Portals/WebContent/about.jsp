<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>心 · 阅读</title>
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
<!-- header -->
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
								<span class="menu"><img src="images/888.jpg" alt=""/></span>
									<ul class="nav1">
										<li><a href="index.jsp">心 · 窝</a></li>
										<li><a class="active"  href="about.jsp">心 · 阅读</a></li>
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
						</div>

	</div>
</div>
<!-- //banner -->
<!-- about-page -->
<div class="orders">
	<div class="container">
		<div class="order-top">
			<li class="data order-special-a"><h4>生活哲学</h4>
				<p> 《奢侈·宁静和享乐》费迪曼教授</p>
				<P> 《何处是归程》渡边淳一	</P>
				<P> 《我的爱，我的自由》伊莎多拉·邓肯</P>
				<P> 《人生真相》	彼得·斯莱文</P>
			</li>
			<li class="data order-special">
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h4>价格</h4>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥65.00</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥27.20</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥27.00</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥29.50</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					</div>
				</li>
			<div class="clearfix"></div>
		</div>
				<div class="order-top">
			<li class="data order-special-a"><h4>枕边读物</h4>
				<p> 《如何放松自己》戴维斯</p>
				<P> 《今天你改变自己了吗》李凯	</P>
				<P> 《人生中不可不想的事》克里希那穆提</P>
				<P> 《相约星期二》	米奇·阿尔博姆</P>
			</li>
			<li class="data order-special">
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h4>价格</h4>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥18.40</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥18.80</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥16.00</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥17.30</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					</div>
				</li>
			<div class="clearfix"></div>
		</div>
		
				<div class="order-top">
			<li class="data order-special-a"><h4>心理学知识</h4>
				<p> 《自我心理调整小品文-做自己心灵的治疗师》</p>
				<P> 《心理学生活》	</P>
				<P> 《博弈心理学》</P>
				<P> 《哈佛心态课》</P>
			</li>
			<li class="data order-special">
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h4>价格</h4>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥23.00</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥56.40</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥14.90</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add"><span class="item_price"><h6>¥29.20</h6></span></div>
						</div>
							<div class="clearfix"></div>
					</div>
					</div>
				</li>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //footer-top -->
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