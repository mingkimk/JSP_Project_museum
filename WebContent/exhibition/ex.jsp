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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css" />
<script type="text/javascript" src="./script/reg.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body class="subpage">
	 <!-- 	<form name="frm" method="post"enctype="multipart/form-data"
							action="ControllServlet">	 -->
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
				<h2>Exhibit List</h2>

			</header>

		</div>
	</section>
	<section id="two" class="wrapper style2">
		<div>
			<div class="image fit"></div>
		</div>
		<i class="fas fa-ticket-alt"></i>
	
			<div class="box">
				<div class="content">
					<header class="align-center">
				
							<section id="one" class="wrapper style2">
								<div class="inner">
									<div class="grid-style">
									
												<c:forEach var="exhibit" items="${exList }">
											<div class="box">
												<div class="image fit">
													<img src="images/titian.jpg" />
													<p>maecenas sapien feugiat ex purus</p>
													<a>${exhibit.code }</a> <br />
													<a
														href="ControllServlet?command=exDetail&code=${exhibit.code}">
														${exhibit.ename}</a><br /> <a>${exhibit.info}</a><br /> <a>${exhibit.edate }</a>
												</div>
											</div>
												</c:forEach>
								
									</div>
								</div>
							</section>
									<input type="submit" class="glyphicon glyphicon-comment"
							value="home"
							onclick="location.href='ControllServlet?command=main'"><br>
							
		</header>

				
						<br>

					
				</div>
			</div>


	</section>




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