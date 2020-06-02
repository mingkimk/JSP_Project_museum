<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login V14</title>
<form enctype="multipart/form-data" method="post"></form>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--==============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/login/css/main.css">
<!--===============================================================================================-->
<script type="text/javascript" src="./script/reg.js"></script>

</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form name="frm" method="post" action="ControllServlet"
					class="login100-form validate-form flex-sb flex-w">
					<input type="hidden" name="command" value="log"> <span
						class="login100-form-title p-b-32"> Sign in </span> <span
						class="txt1 p-b-11"> Email address </span>
					<div class="wrap-input100 validate-input m-b-36"
						data-validate="Username is required">
						<input class="input100" type="text" name="email"> <span
							class="focus-input100"></span>
					</div>

					<span class="txt1 p-b-11"> Password </span>
					<div class="wrap-input100 validate-input m-b-12"
						data-validate="Password is required">
						<span class="btn-show-pass"> <i class="fa fa-eye"></i>
						</span> <input class="input100" type="password" name="pass1"> <span
							class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox"
								name="remember-me"> <label class="label-checkbox100"
								for="ckb1" onclick="return logCheck()"> Remember me </label>
						</div>

						<div>
							<a href="#" class="txt3"> Forgot Password? </a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<!-- 	 <button class="login100-form-btn" onclick="location.href='ControllServlet?command=main'">Sign in</button> -->


						<input type="submit"  class="login100-form-btn"
							value="Sign in" onclick="return logCheck()">
							
					</div>
		<span>${message}</span>
				</form>
				
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/login/vendor/bootstrap/js/popper.js"></script>
	<script
		src="<%=request.getContextPath()%>/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/login/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/login/js/main.js"></script>
	<script type="text/javascript" src="script/reg.js"></script>

</body>
</html>