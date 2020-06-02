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
		</div>
		<a href="#menu">Menu</a>
	</header>

	<!-- Nav -->
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
				<a href="#"><img src="images/titian_desktopbanner.jpg" alt="" /></a>
			</div>
		</div>
		<i class="fas fa-ticket-alt"></i>
		<div class="inner">
			<div class="box">
				<div class="content">
					<header class="align-center">
					
						<p>maecenas sapien feugiat ex purus</p>
						<h2>Titian: Love, Desire, Death 16 March – 14 June 2020

							Admission charge Location: Main Floor Galleries</h2>
					</header>
					<p>We are temporarily closed as a precautionary measure to help
						contain the spread of coronavirus (COVID-19). Find out more

						Titian’s sensuous interpretation of Classical myths of love,
						temptation, and punishment In 1551, Prince Philip of Spain, the
						future King Philip II, commissioned Titian, the most famous
						painter in Europe, to produce a group of paintings showing
						Classical myths primarily taken from the Roman poet Ovid’s
						‘Metamorphoses’. The exhibition reunites all six paintings in the
						series, from Boston, Madrid, and London, for the first time in
						over four centuries. Included are ‘Diana and Actaeon’ and ‘Diana
						and Callisto’; works we own jointly with the National Galleries of
						Scotland. Combining Titian’s remarkable talent as both artist and
						storyteller, the mythological scenes capture moments of high
						drama; a fatal encounter, the shameful discovery, a hasty
						abduction. Titian expertly manipulates paint and colour to
						dazzling effect; capturing luminous flesh, sumptuous fabrics,
						water, reflection, and atmospheric, almost enchanted, landscapes.

						We see gods and goddesses, yet their faces show very human, and
						very relatable, emotions: guilt, surprise, shame, desperation, and
						regret. Titian called these works his ‘poesie’ because he
						considered them to be visual equivalents of poetry. This is a rare
						opportunity to enjoy some of the greatest paintings in European
						art. Exhibition organised by the National Gallery, the National
						Galleries of Scotland, the Museo Nacional del Prado, and the
						Isabella Stewart Gardner Museum, Boston. Titian, 'Rape of Europa'
						(detail), 1562 © Isabella Stewart Gardner Museum, Boston

						Exhibition supported by Moretti Fine Art Ltd The Vaseppi Trust

						Andrew Bentley and Fiona Garland The Gladys Krieble Delmas
						Foundation Katherine Stemberg and Bill Schnoor Sir David and Lady
						Verey Il Circolo Charity – Italian Cultural Association The Sunley
						exhibition programme is supported by the Bernard Sunley Foundation


					</p>
					<!--  <footer class="align-center">
								<a href="#" class="button alt"
									onclick="location.href='exhib.jsp'">Close </a> -->

							</footer>
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