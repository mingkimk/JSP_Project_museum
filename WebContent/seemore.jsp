<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Hielo by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="subpage">

	<!-- Header -->
	<header id="header">
		<div class="logo">
			<a href="index.jsp">MK Gallery <span>by Kelly Park</span></a>
		</div>
		<a href="#menu">Menu</a>
	</header>

	<nav id="menu">
		<ul class="links">
			<li><a href="./ControllServlet?command=main">Home</a></li>
			<li><a href="./ControllServlet?command=Exhibitions">Exhibitions</a></li>
			<li><a href="./ControllServlet?command=registerForm">Register</a></li>
			<c:choose>
				<c:when test="${sessionScope.email==null}">
			
					<li><a href="./ControllServlet?command=logForm">Sign in</a></li>
				</c:when>
				<c:when test="${sessionScope.email!=null}">
						<li><a href="./ControllServlet?command=reviewWriteForm">Review</a></li>
					<li><a href=""> ${sessionScope.email}_ Hello. </a></li>
					<li><a href=./ControllServlet?command=logOut>Sign out</a></li>
				</c:when>
			</c:choose>
		</ul>
	</nav>

	<!-- One -->
	<section id="One" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<p>Eleifend vitae urna</p>
				<h2>Generic Page Template</h2>
			</header>
		</div>
	</section>

	<!-- Two -->
	<section id="two" class="wrapper style2">
		<div>
			<div class="image fit">
				<a href="#"><img src="images/pic02.jpg" alt="" /></a>
			</div>
		</div>
		<div class="inner">
			<div class="box">
				<div class="content">
					<header class="align-center">
						<p>maecenas sapien feugiat ex purus</p>
						<h2>Lorem ipsum dolor</h2>
					</header>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Cras at dignissim augue, in iaculis neque. Etiam bibendum felis ac
						vulputate pellentesque. Cras non blandit quam. Nunc porta, est non
						posuere sagittis, neque nunc pellentesque diam, a iaculis lacus
						urna vitae purus. In non dui vel est tempor faucibus. Aliquam erat
						volutpat. Quisque vel est vitae nibh laoreet auctor. In nec libero
						dui. Nulla ullamcorper, dolor nec accumsan viverra, libero eros
						rutrum metus, vel lacinia magna odio non nunc. Praesent semper
						felis eu rhoncus aliquam. Donec at quam ac libero vestibulum
						pretium. Nunc faucibus vel arcu in malesuada. Aenean at velit
						odio. Vestibulum ante ipsum primis in faucibus orci luctus et
						ultrices posuere cubilia Curae; Maecenas commodo erat eget
						molestie sollicitudin. Donec imperdiet, ex sed blandit dictum,
						ipsum metus ultrices arcu, vitae euismod nisl sapien vitae tortor.</p>

					<p>Vivamus nec odio ac ligula congue feugiat at vitae leo.
						Aenean sem justo, finibus sed dui eu, accumsan facilisis dolor.
						Fusce quis dui eget odio iaculis aliquam vel sed velit. Nulla
						pellentesque posuere semper. Nulla eu sagittis lorem, a auctor
						nulla. Sed ac condimentum orci, ac varius ante. Nunc blandit quam
						sit amet sollicitudin sodales.</p>

					<p>Vivamus ultricies mollis mauris quis molestie. Quisque eu mi
						velit. In et cursus nibh. Donec facilisis, orci sed mollis
						hendrerit, nunc risus mattis odio, eget efficitur nisl orci a
						lectus. Aenean finibus neque convallis orci sollicitudin
						tincidunt. Vivamus lacinia facilisis diam, quis facilisis nisi
						luctus nec. Aliquam ac molestie enim, ut ultrices elit. Fusce
						laoreet vulputate risus in tincidunt. Sed commodo mollis maximus.
						Nullam varius laoreet nibh sit amet facilisis. Donec ac odio
						vehicula, consequat elit et, sodales justo. Vestibulum ante ipsum
						primis in faucibus orci luctus et ultrices posuere cubilia Curae;
						Nullam ac auctor mauris, in hendrerit libero.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
		</div>
		<div class="copyright">&copy; Untitled. All rights reserved.</div>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>