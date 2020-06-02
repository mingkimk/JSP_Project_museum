<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- 
	<link
		href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	-->
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body class="subpage">

		<!-- Header -->
		<header id="header">
			<div class="logo">
				<a href="index.jsp">MK Gallery <span>by Kelly Park</span></a>
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
		
					<p>Eleifend vitae urna</p>
					<h2>Generic Page Template</h2>

				</header>
			</div>
		</section>

		<!-- jumbotron -->
			<div class="box">
				<div class="content">
			
		<div class="jumbotron">
			<h1 class="display-4">Index Carts</h1>
			<p class="lead">views/carts/index.jsp</p>
			<hr class="my-4">
		</div>
		<h2>
			<span class="badge badge-warning">oder and payment</span>
		</h2>
		<hr>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th>#</th>
					<th>Exhibition Name</th>
					<th>price</th>
					<th>amount</th>
					<th>total</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="exhibit" items="${ exList }" varStatus="status">
					<tr>
						<th>${ exhibit.code }</th>
						<td>${ exhibit.ename }</td>
						<td>${ exhibit.price }</td>

						<td><input type="text" name="textfield"
							value="${ exhibit.amount}" min="1" max="10"
							style="text-align: center; width: 50px; height: 30px; letter-spacing: -5px"></td>
						<td>${ exhibit.price *exhibit.amount }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4"></td>
					<td>${ exhibit.totalPrice }</td>
				</tr>
				<tr>
				     <td>   </td>
                            <td>   </td>
		          <td class="text-right">
		        
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                          </td>
                            <td class="text-center">
                           
                            <p>
                                <strong>$6.94</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <h4><strong>Total: </strong></h4></td>
                                 <td class="text-center">
                            <p>
                                <strong>${exhibit.total}</strong>
                            </p>
                           <!--  <p>
                                <strong>$6.94</strong>
                            </p> --></td>
			</tfoot>
		</table>
		<div class="row-fluid">

	
				<div id="legend">
					<Strong>Payment</strong>
				</div>

				<!-- Name -->
				<div class="control-group">
					<label class="control-label" for="username">Card Holder's
						Name</label>
					<div class="controls">
						<input type="text" id="username" name="username" placeholder=""
							class="input-xlarge">
					</div>
				</div>

				<!-- Card Number -->
				<div class="control-group">
					<label class="control-label" for="email">Card Number</label>
					<div class="controls">
						<input type="text" id="email" name="email" placeholder=""
							class="input-xlarge">
					</div>
				</div>

				<!-- Expiry-->
				<div class="control-group">
					<label class="control-label" for="password">Card Expiry
						Date</label>
					<div class="controls">
						<select class="span3" name="expiry_month" id="expiry_month">
							<option></option>
							<option value="01">Jan (01)</option>
							<option value="02">Feb (02)</option>
							<option value="03">Mar (03)</option>
							<option value="04">Apr (04)</option>
							<option value="05">May (05)</option>
							<option value="06">June (06)</option>
							<option value="07">July (07)</option>
							<option value="08">Aug (08)</option>
							<option value="09">Sep (09)</option>
							<option value="10">Oct (10)</option>
							<option value="11">Nov (11)</option>
							<option value="12">Dec (12)</option>
						</select> <select class="span2" name="expiry_year">
							<option value="13">2013</option>
							<option value="14">2014</option>
							<option value="15">2015</option>
							<option value="16">2016</option>
							<option value="17">2017</option>
							<option value="18">2018</option>
							<option value="19">2019</option>
							<option value="20">2020</option>
							<option value="21">2021</option>
							<option value="22">2022</option>
							<option value="23">2023</option>
						</select>
					</div>
				</div>

				<!-- CVV -->
				<div class="control-group">
					<label class="control-label" for="password_confirm">Card
						CVV</label>
					<div class="controls">
						<input type="password" id="password_confirm"
							name="password_confirm" placeholder="" class="span2">
					</div>
				</div>

				<!-- Save card -->
				<div class="control-group">
					<div class="controls">
						<label class="checkbox" for="save_card"> <input
							type="checkbox" id="save_card" value="option1"> Save card
							on file?
						</label>
					</div>
				</div>

				<!-- Submit -->
				<div class="control-group">
					<div class="controls">
						<input type="submit" class="btn btn-success" value="pay"
							onclick="location.href='ControllServlet?command=receipt'"><br>

					</div>
				</div>
			</div>
		</div>
		</div>
	</form>
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

