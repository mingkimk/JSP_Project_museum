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
<body>

	<!-- Header -->
	<header id="header" class="alt">
		<div class="logo">
			<a href="index.jsp">MK Gallery <span>by Kelly Park</span></a>
		</div>
		<a href="#menu">MENU</a>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="./ControllServlet?command=main">Home</a></li>
			<li><a href="./ControllServlet?command=Exhibition">Exhibitions</a></li>
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

	<!-- Banner -->
	<section class="banner full">
		<article>
			<img src="images/2.jpg" alt="" />
			<div class="inner">
				<header>
					<!-- 	<p>
						A free responsive web site template by <a
							href="https://templated.co">TEMPLATED</a>
					</p>
					<h2>Hielo</h2>  -->
				</header>
			</div>
		</article>
		<article>
			<img src="images/artemisia.jpg" alt="" />
			<div class="inner">
				<header>
					<!--	<p>Lorem ipsum dolor sit amet nullam feugiat</p>
				 <h2>Magna etiam</h2>  -->
				</header>
			</div>
		</article>
		<article>
			<img src="images/nicolaes.jpg" alt="" />
			<div class="inner">
				<header>
					<!-- <p>Sed cursus aliuam veroeros lorem ipsum nullam</p>
					<h2>Tempus dolor</h2>  -->
				</header>
			</div>
		</article>

		<article>
			<img src="images/3.jpg" alt="" />
			<div class="inner">
				<header>
					<!--	<p>Adipiscing lorem ipsum feugiat sed phasellus consequat</p>
			 	<h2>Etiam feugiat</h2>  -->
				</header>
			</div>
		</article>
		<article>
			<img src="images/copernicus.jpg" alt="" />
			<div class="inner">
				<header>
					<!--<p>Ipsum dolor sed magna veroeros lorem ipsum</p>
			 <h2>Lorem adipiscing</h2>   -->
				</header>
			</div>
		</article>
	</section>
	<!-- 0 -->
	<section id="two" class="wrapper style2">
		<div class="inner">
			<header class="align-center">
				<p class="special">Nam vel ante sit amet libero scelerisque
					facilisis eleifend vitae urna</p>
				<h2>What's on Now</h2>
			</header>
		</div>
	</section>

	<!-- One -->
	<section id="one" class="wrapper style2">
		<div class="inner">
			<div class="grid-style">

				<div>
					<div class="box">
						<div class="image fit">
							<img src="images/titian.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>maecenas sapien feugiat ex purus</p>
								<h2>Titian: Love, Desire, Death 16 March- 14 June
									2020,Admission charge Location: Main Floor Galleries</h2>

							</header>
							Titian’s interpretation of Classical myths of love, temptation,
							and punishment In 1551, Prince Philip of Spain, the future King
							Philip II, commissioned Titian, the most famous painter in
							Europe, to produce a group of paintings showing Classical myths
							primarily taken from the Roman poet Ovid’s ‘Metamorphoses’. <br>
							<br> <br>
							</p>
							<footer class="align-center">
								<a href="#" class="button alt"
									onclick="location.href='exh_1.jsp'">Learn More </a> <a href="#"
									class="button alt" onclick="location.href=''">Buy ticket </a> <br>
								<br>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="images/artemisia.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>Artemisia New dates to be announced Admission charge
									Location: Sainsbury Wing</h2>
								<br>
							</header>
							<p>
								"I will show Your Illustrious Lordship what a woman can do" In
								17th-century Europe, at a time when women artists were not
								easily accepted, Artemisia was exceptional. She challenged
								conventions and defied expectations to become a successful
								artist and one of the greatest storytellers of her time. <br>
								<br> <br>
							</p>
							<footer class="align-center">
								<a href="#" class="button alt"
									onclick="location.href='./epilogue/ep.jsp'">Learn More </a> <a
									href="#" class="button alt" onclick="location.href=''">Buy
									ticket </a> <br> <br>
							</footer>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- Three -->
	<section id="three" class="wrapper style2">
		<div class="inner">
			<header class="align-center">
				<p class="special">Nam vel ante sit amet libero scelerisque
					facilisis eleifend vitae urna</p>
				<h2>Past exhibitions</h2>
			</header>
			<div class="gallery">
				<div>
					<div class="image fit">
						<a href="#"><img src="images/artemisia.jpg" alt="" /></a>
					</div>
				</div>
				<div>
					<div class="image fit">
						<a href="#"><img src="images/bronzino.jpg" alt="" /></a>
					</div>
				</div>
				<div>
					<div class="image fit">
						<a href="#"><img src="images/2.jpg" alt="" /></a>
					</div>
				</div>
				<div>
					<div class="image fit">
						<a href="#"><img src="images/copernicus.jpg" alt="" /></a>
					</div>
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