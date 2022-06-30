<%@ page import="com.nss.sahibganj.entities.Message" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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
	<%@include file="header.jsp"%>
	<div class="d-flex primary-background">
		<section class="" style="margin: auto;">

			<div class="container">
				<div class="row">

					<div class="col-mid-4 offset-mid-4">
						<div class="card">

							<div
								class="card-header primary-background text-white text-center"
								style="background: #00009e">

								<span class="fa fa-user-plus fa fa-3x"></span> <br> Login
								Here
								<%
 Message m = (Message) session.getAttribute("msg");
 if (m != null) {
 %>

								<div
									class="alert <%=m.getCssclass()%> alert-dismissible fade show"
									role="alert"
									style="color: black; border-color: #00006e; border-width: 4px; height: 50px;">
									<strong> <%=m.getContent()%></strong> <br> <br>

									<p style="font-style: italic; color: red">pls.. enter valid
										email or password.
								</div>
								<%
								session.removeAttribute("msg");
								}
								%>
								<div class="card-body" style="background: #00006e">
									<form action="LoginServlet" method="post">
										<div class="form-group">
											<label for="exampleInputEmail1">Email address</label> <input
												type="email" class="form-control" placeholder="Email"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												name="login_email" required="required">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Password</label> <input
												type="password" class="form-control"
												id="exampleInputPassword1" name="login_password"
												placeholder="Bibhanshu@420" required="required">
										</div>
										<div class="form-group form-check">
											<a href="forgotpassword.jsp">forgot password</a>
										</div>
										<button type="submit" class="btn btn-primary">Submit</button>
									</form>

								</div>


							</div>


						</div>


					</div>
				</div>



			</div>

		</section>
	</div>






	<!-- JavaScript -->
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

	<script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>