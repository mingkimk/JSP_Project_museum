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

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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

	<div class='container'>
		<div class='row' style='padding-top: 25px; padding-bottom: 25px;'>
			<div class='col-md-12'>
				<div id='mainContentWrapper'>
					<div class="col-md-8 col-md-offset-2">
						<h2 style="text-align: center;">Review Your Order Complete
							Checkout</h2>
						<hr />
						<a href="#" class="btn btn-info" style="width: 100%;">Add More
							Products Services</a>
						<hr />

						<form class="form-horizontal" role="form" action="ControllServlet"
							method="post" id="payment-form">
							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne">Review Your Order</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="items">
												<div class="col-md-9">
													<table class="table table-striped">
														<tr>
															<td colspan="2"><a
																class="btn btn-warning btn-sm pull-right"
																href="http://www.startajobboard.com/"
																title="Remove Item">X</a> <b>session Name</b></td>
														</tr>
														<tr>
															<td>
																<ul>
																	<!--session info -->
																	<li>One Job Posting Credit</li>
																	<li>Job Distribution*</li>
																	<li>Social Media Distribution</li>
																</ul>
															</td>
															<td><b>$147.00</b></td>
														</tr>
													</table>
												</div>
												<div class="col-md-3">
													<div style="text-align: center;">
														<h3>Order Total</h3>
														<h3>
															<span style="color: green;">$147.00</span>
														</h3>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div style="text-align: center; width: 100%;">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a style="width: 100%;" data-toggle="collapse"
												data-parent="#accordion" href="#collapseTwo"
												class=" btn btn-success"
												onclick="$(this).fadeOut(); $('#payInfo').fadeIn();">Continue
												to Billing Information</a>
										</h4>
									</div>

								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseTwo">Contact and Billing Information</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse">
									<div class="panel-body">
										<b>Help us keep your account safe and secure, please
											verify your billing information.</b> <br /> <br />
										<table class="table table-striped" style="font-weight: bold;">
											<tr>
												<td style="width: 175px;"><label for="id_email">Best
														Email:</label></td>
												<td><input class="form-control" id="id_email"
													name="email" required="required" type="text" /></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label for="id_first_name">First
														name:</label></td>
												<td><input class="form-control" id="id_first_name"
													name="first_name" required="required" type="text" /></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label for="id_last_name">Last
														name:</label></td>
												<td><input class="form-control" id="id_last_name"
													name="last_name" required="required" type="text" /></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label
													for="id_address_line_1">Address:</label></td>
												<td><input class="form-control" id="id_address_line_1"
													name="address_line_1" required="required" type="text" /></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label
													for="id_address_line_2">Unit / Suite #:</label></td>
												<td><input class="form-control" id="id_address_line_2"
													name="address_line_2" type="text" /></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label for="id_city">City:</label></td>
												<td><input class="form-control" id="id_city"
													name="city" required="required" type="text" /></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label for="id_state">State:</label></td>
												<td><select class="form-control" id="id_state"
													name="state">
														<option value="AK">Alaska</option>
														<option value="AL">Alabama</option>
														<option value="AZ">Arizona</option>
														<option value="AR">Arkansas</option>
														<option value="CA">California</option>
														<option value="CO">Colorado</option>
														<option value="CT">Connecticut</option>
														<option value="DE">Delaware</option>
														<option value="FL">Florida</option>
														<option value="GA">Georgia</option>
														<option value="HI">Hawaii</option>
														<option value="ID">Idaho</option>
														<option value="IL">Illinois</option>
														<option value="IN">Indiana</option>
														<option value="IA">Iowa</option>
														<option value="KS">Kansas</option>
														<option value="KY">Kentucky</option>
														<option value="LA">Louisiana</option>
														<option value="ME">Maine</option>
														<option value="MD">Maryland</option>
														<option value="MA">Massachusetts</option>
														<option value="MI">Michigan</option>
														<option value="MN">Minnesota</option>
														<option value="MS">Mississippi</option>
														<option value="MO">Missouri</option>
														<option value="MT">Montana</option>
														<option value="NE">Nebraska</option>
														<option value="NV">Nevada</option>
														<option value="NH">New Hampshire</option>
														<option value="NJ">New Jersey</option>
														<option value="NM">New Mexico</option>
														<option value="NY">New York</option>
														<option value="NC">North Carolina</option>
														<option value="ND">North Dakota</option>
														<option value="OH">Ohio</option>
														<option value="OK">Oklahoma</option>
														<option value="OR">Oregon</option>
														<option value="PA">Pennsylvania</option>
														<option value="RI">Rhode Island</option>
														<option value="SC">South Carolina</option>
														<option value="SD">South Dakota</option>
														<option value="TN">Tennessee</option>
														<option value="TX">Texas</option>
														<option value="UT">Utah</option>
														<option value="VT">Vermont</option>
														<option value="VA">Virginia</option>
														<option value="WA">Washington</option>
														<option value="DC">Washington D.C.</option>
														<option value="WV">West Virginia</option>
														<option value="WI">Wisconsin</option>
														<option value="WY">Wyoming</option>
												</select></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label for="id_postalcode">Postalcode:</label></td>
												<td><input class="form-control" id="id_postalcode"
													name="postalcode" required="required" type="text" /></td>
											</tr>
											<tr>
												<td style="width: 175px;"><label for="id_phone">Phone:</label></td>
												<td><input class="form-control" id="id_phone"
													name="phone" type="text" /></td>
											</tr>

										</table>
									</div>
								</div>
							</div>
							<div style="text-align: center;">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree" class=" btn   btn-success"
												id="payInfo" style="width: 100%; display: none;"
												onclick="$(this).fadeOut();  
                   document.getElementById('collapseThree').scrollIntoView()">Enter
												Payment Information »</a>
										</h4>
									</div>

								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseThree"> <b>Payment Information</b>
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse">
									<div class="panel-body">
										<span class='payment-errors'></span>
										<fieldset>
											<legend>What method would you like to pay with
												today?</legend>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="card-holder-name">Name
													on Card</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" stripe-data="name"
														id="name-on-card" placeholder="Card Holder's Name">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="card-number">Card
													Number</label>
												<div class="col-sm-9">
													<input type="text" class="form-control"
														stripe-data="number" id="card-number"
														placeholder="Debit/Credit Card Number"> <br />
													<div>
														<img class="pull-right"
															src="https://s3.amazonaws.com/hiresnetwork/imgs/cc.png"
															style="max-width: 250px; padding-bottom: 20px;">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="expiry-month">Expiration
													Date</label>
												<div class="col-sm-9">
													<div class="row">
														<div class="col-xs-3">
															<select class="form-control col-sm-2"
																data-stripe="exp-month" id="card-exp-month"
																style="margin-left: 5px;">
																<option>Month</option>
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
															</select>
														</div>
														<div class="col-xs-3">
															<select class="form-control" data-stripe="exp-year"
																id="card-exp-year">
																<option value="2016">2016</option>
																<option value="2017">2017</option>
																<option value="2018">2018</option>
																<option value="2019">2019</option>
																<option value="2020">2020</option>
																<option value="2021">2021</option>
																<option value="2022">2022</option>
																<option value="2023">2023</option>
																<option value="2024">2024</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="cvv">Card
													CVC</label>
												<div class="col-sm-3">
													<input type="text" class="form-control" stripe-data="cvc"
														id="card-cvc" placeholder="Security Code">
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-3 col-sm-9"></div>
											</div>
										</fieldset>
										<button type="submit" class="btn btn-success btn-lg"
											style="width: 100%;">Pay Now</button>

										<br />

										<div style="text-align: left;">
											<br /> By submiting this order you are agreeing to our <a
												href="/legal/billing/">universal billing agreement</a>, and
											<a href="/legal/terms/">terms of service</a>. If you have any
											questions about our products or services please contact us
											before placing this order.
										</div>

									</div>

								</div>
						</form>
					</div>
				</div>
			</div>

		</div>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>