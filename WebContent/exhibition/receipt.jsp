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
	<link href="<%=request.getContextPath()%>///netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="<%=request.getContextPath()%>//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css" />
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
			<header class="align-center">
				<p>Eleifend vitae urna</p>
				<h2>Receipt</h2>
			
			</header>
		</div>
	</section>
<br>
<br>
	<div class="container">
	
	   	<form name="frm" method="post" action="ControllServlet">

      <div class="text-center">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
             <div class="box">
                    <address>
                        <strong>Elf Cafe</strong>
                        <br>
                        2135 Sunset Blvd
                        <br>
                        Los Angeles, CA 90026
                        <br>
                        <abbr title="Phone">P:</abbr> (213) 484-6829
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: 1st November, 2013</em>
                    </p>
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>
            </div>
            <div class="row">
              
              
                </div>
              <span>  </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                           <td class="col-md-9"><h4><em>${exhibit.ename}</em></h4></td>
                            <td class="col-md-1" style="text-align: center">${exhibit.code}</td>
                            <td class="col-md-1 text-center">${exhibit.price}</td>
                            <td class="col-md-1 text-center">${exhibit.total}</td>  
                        </tr>
                        <tr>
                             <td class="col-md-9"><em>Lebanese Cabbage Salad</em></h4></td>
                            <td class="col-md-1" style="text-align: center"> 1 </td>
                            <td class="col-md-1 text-center">$8</td>
                            <td class="col-md-1 text-center">$8</td>  
                        </tr>
                        <tr>
                        <!--    <td class="col-md-9"><em>Baked Tart with Thyme and Garlic</em></h4></td>
                            <td class="col-md-1" style="text-align: center"> 3 </td>
                            <td class="col-md-1 text-center">$16</td>
                            <td class="col-md-1 text-center">$48</td>  --> 
                        </tr>
                        <tr>
                 
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Tax: </strong>
                            </p></td>
                            <td class="text-center">
                           
                            <p>
                                <strong>$6.94</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>${exhibit.total}</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                <button type="button" class="btn btn-success btn-lg btn-block">
                    Print out   <span class="glyphicon glyphicon-chevron-right"></span>
                </button>
            
            </div>
            
              </div>
        </div>
        </form>
    </div>
      
   
    	<!-- Scripts -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollex.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/skel.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/util.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
    </body>
</html>