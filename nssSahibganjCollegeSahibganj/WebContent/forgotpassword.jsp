<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="CSS/mystyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>


	<!-- NavBar -->
	<%@include file="nvbar.jsp"%>
	<div class="d-flex primary-background">
		<section class="d-flex "
			style="margin-left: 40%; margin-top: 5%; margin-bottom: 5%">
			<div class="container">
				<div class="row">

					<div class="col-mid-4 offset-mid-4">
						<div class="card">
							<div
								class="card-header  text-white text-center" style="background: #00009e">
								<span class="fa fa-user-plus fa fa-3x"></span> <br> Forgot
								Password
								<div class="card-body">
									<form action="" method="post">
										<div class="form-group">
											<label for="exampleInputEmail1">Email address</label> <input
												type="email" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" name="forget_email" placeholder="Email" style="color: #00009e; text-align: center;">
												<a href="#">Send Otp</a>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">New Password</label> <input
												type="password" class="form-control"
												id="exampleInputPassword1" name="forget_password" placeholder="New Password" style="color: #00009e; text-align: center;">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Confirm Password</label> <input
												type="password" class="form-control"
												id="exampleInputPassword1" name="login_password" style="color: #00009e; text-align: center;" placeholder="Re-enter Password">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Enter OTP</label> <input
												type="number" class="form-control"
												id="exampleInputPassword1" name="login_password" style="color: #00009e; text-align: center;" placeholder="One Time Password">
								
										</div>
								<button type="submit" class="btn btn-primary" style="background: #00009e; border-width: 3px; border-color: #00007e;">Submit</button>
								</form>
								</div>
								

							</div>


						</div>


					</div>


				</div>
			</div>
			</section>
	</div>

	



	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>