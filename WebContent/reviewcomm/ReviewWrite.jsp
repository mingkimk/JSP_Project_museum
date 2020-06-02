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
</head>
<body class="subpage">
	<form name="frm" method="post"enctype="multipart/form-data"
							action="ControllServlet?command=reviewWrite">
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
							
				<li><a href="./ControllServlet?command=registerForm">Register</a></li>
				<li><a href="./ControllServlet?command=logForm">Sign in</a></li>
				<c:choose>
				
						<c:when test="${sessionScope.email!=null}">
						<li><a href="./ControllServlet?command=reviewWriteForm">Review</a></li>
						
					<li><a href=""> ${sessionScope.email} 님 환영합니다.
					</a></li>
					
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
				<h2>Review Write</h2>

			</header>
		</div>
	</section>

	<!-- Two -->
	<section id="two" class="wrapper style2">
		<div>
			<div class="image fit">
			<!-- 	<a href="#"><img src="images/titian_desktopbanner.jpg" alt="" /></a> -->
			</div>
		</div>
		<i class="fas fa-ticket-alt"></i>
		<div class="inner">
			<div class="box">
				<div class="content">
					<header class="align-center">

						<h2 id="elements">ReviewComments</h2>
					

							<h4>What is on your mind?</h4>

							<!-- <div class="input-group">
			<form name="frm" action="ControllServlet" method="post"
									enctype="multipart/form-data">  -->


							<strong class="pull-left primary-font">writer :</strong> <input
								type="text" name="email"><br /> <strong
								class="pull-left primary-font">Title :</strong> <input
								type="text" name="title"><br /> <strong
								class="pull-left primary-font"> content : <br /></strong> <input
								type="text" name="content"
								class="form-control input-sm chat-input"
								placeholder="Write your comment here..." /> <br /> <strong
								class="pull-left primary-font"> file : <br /></strong> <input
								type="file" name="uploadFile"><br> 



							<!--  <strong
										class="pull-left primary-font"> file : <br /></strong><input
										type="file" name="filename"><br /> <span
										class="input-group-btn" onclick="addComment()"> <a
										href="<%=request.getContextPath()%>/#"
										class="btn btn-primary btn-sm">  -->
							<br /> <input type="submit" class="glyphicon glyphicon-comment"
								value="Add Comment" onclick="return reviewCheck()"> <input
								type="button" class="glyphicon glyphicon-comment" value="list"
								onclick="location.href='ControllServlet?command=reviewList'">
							<!--onclick="location.href='ControllServlet?command=reviewWrite'"  -->
						</form>
					</header>


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