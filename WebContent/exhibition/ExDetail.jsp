<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="en">
<head>
<title>Hielo by TEMPLATED</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css" />
<script type="text/javascript" src="./script/reg.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body class="subpage">
  
	<!-- Header -->
	<header id="header">
		<div class="logo">
			<a href="<%=request.getContextPath()%>/index.jsp">MK Gallery <span>by
					Kelly Park</span></a>
		</div>

		<a href="#menu">Menu</a>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="./ControllServlet?command=main">Home</a></li>
			<li><a href="./ControllServlet?command=Exhibitions">Exhibitions</a></li>
			<li><a href="./ControllServlet?command=reviewWriteForm">Review</a></li>

			<li><a href="./ControllServlet?command=registerForm">Register</a></li>
			<li><a href="./ControllServlet?command=logForm">Sign in</a></li>
			<c:choose>
				<c:when test="${sessionScope.email!=null}">
					<li><a href="./ControllServlet?command=reviewWriteForm">Review</a></li>

					<li><a href=""> ${sessionScope.email} 님 환영합니다. </a></li>
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
				<h2>Exhibition Detail</h2>

			</header>
		</div>
	</section>
	<!--  -->
	<!-- Two -->
	<section id="two" class="wrapper style2">
		<div>
			<div class="image fit">
				<!-- 		<a href="#"><img src="images/r2.jpg" alt="" /></a>  -->
			</div>
		</div>
		<i class="fas fa-ticket-alt"></i>
		<div class="inner">
			<div class="box">
				<div class="content">
					<header class="align-center">
						<table class="list">
							<tr>
								<th>No</th>
								<th>${exhibit.code }</th>
								<th>Date:</th>
								<th>${exhibit.edate }</th>
								<td></td>
							</tr>
							<tr>
								<th>name:</th>
								<th>${exhibit.ename}</th>
								<th>price:</th>
								<th>${exhibit.price }</th>
							</tr>
							<tr>
								<th>Info</th>
								<th>${exhibit.info }</th>
						<!-- 		<th>amount</th>
								<td><input type="text"
									value="${ exhibitDTO.amount}" min="1" max="10"
								></td>  -->
								<th></th>
								<th></th>
							</tr>

						</table>
						<input type="submit" class="glyphicon glyphicon-comment"
							value="buy Ticket"
							onclick="location.href='ControllServlet?command=payment&=${exhibit.code}'">
						<input type="button" class="glyphicon glyphicon-comment"
							value="list"
							onclick="location.href='ControllServlet?command=exhibition'"><br>
						<br>
					</header>
				</div>
			</div>
		</div>

	</section>
</body>


<!-- Footer -->
<footer id="footer">
	<div class="container">
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-envelope-o"><span
					class="label">Email</span></a></li>
		</ul>
	</div>

</footer>

<!-- Scripts -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.scrollex.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/skel.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/util.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>

</body>
</html>