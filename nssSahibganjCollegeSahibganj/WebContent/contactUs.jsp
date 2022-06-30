

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet" type="text/css" href="CSS/contactUs.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0
/css/font-awesome.min.css">

<style type="text/css">
.section {
	box-sizing: border-box;
	font-family: 'poppins', sans-serif;
	padding: 0;
	background: black;
}

.contact {
	position: relative;
	min-height: 100vh;
	padding: 50px 100px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	background-size: cover;
	margin: 4%;
}

.contact .content {
	max-width: 800px;
	text-align: center;
}

.contact .content h2 {
	font-size: 36px;
	font-weight: 500;
	color: #fff;
}

.contact .content p {
	font-weight: 300;
	color: #fff;
}

.container {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 30px;
}

.container .contactinfo {
	width: 50%;
	display: flex;
	flex-direction: column;
}

.container .contactinfo .box {
	position: relative;
	padding: 20px 0;
	display: flex;
}

.container .contactinfo .box .icon {
	min-width: 60px;
	height: 60px;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	font-size: 22px;
}

.container .contactinfo .box .text {
	display: flex;
	margin-left: 20px;
	font: 16px;
	color: #fff;
	flex-direction: column;
	font-weight: 300;
}

.container .contactinfo .box .text h3 {
	font-weight: 300;
	color: #00bcd4;
}
.contactForm {
	width: 40%;
	padding: 3	0%;
	background: #fff;
}
.contactForm h2 {
	font-size: 40px;
	color: #333;
	font-weight: 500;
}

@media ( max-width : 991pxpx) {
	.contact {
		padding: 50px;
	}
	.container {
		flex-direction: column;
	}
	.container .contactinfo {
		margin-bottom: 40px;
	}
	.container .contactinfo, .contactForm {
		width: 100%
	}
}
</style>
</head>
<body>
	<!-- navbar-->
	<%@ include file="nvbar.jsp"%>

	<div class="section">
		<section class="contact">
			<div class="content">
				<h2>Contact Us</h2>
				<p style="color: #00bcd4">
					National Service Scheme <br>Sahibganj College Sahibganj
				</p>
			</div>
			<div class="container">
				<div class="contactinfo">
					<div class="box">
						<div class="icon">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</div>
						<div class="text">
							<h3>Address</h3>
							<p>
								Sahibganj College, Sahibganj <br>City : Sahibganj <br>Pin
								Code : 816109
							</p>
							<div style="overflow: hidden; width: 700px; position: relative;">
								<iframe width="300" height="200"
									src="https://maps.google.com/maps?hl=en&amp;q=sahibganj college sahibganj jharkhand+(Sahibganj College Sahibganj)&amp;ie=UTF8&amp;t=&amp;z=10&amp;iwloc=B&amp;output=embed"
									frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
								<div
									style="position: absolute; width: 80%; bottom: 10px; left: 0; right: 0; margin-left: auto; margin-right: auto; color: #000; text-align: center;">
									<small
										style="line-height: 1.8; font-size: 0px; background: #fff;">
										<a href="https://googlemapsembed.net/">Google Maps Embed</a>
									</small>
								</div>


							</div>


						</div>
					</div>
					<div class="box">
						<div class="icon">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</div>
						<div class="text">
							<h3>Phone</h3>
							<p>
								DR. SIDAM SINGH MUNDA (Unit - III)<br>Mob. No. 6205418042
							</p>
							<p>
								DR. RANJIT KUMAR SINGH (Unit - IV)<br>Mob. No. 6205418042
							</p>
							<p>
								Tel : 06436-222056 <br>Mobile : +91-9470572489
							</p>






						</div>
					</div>
					<div class="box">
						<div class="icon">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</div>
						<div class="text">
							<h3>Email</h3>
							<p>
								DR. SIDAM SINGH MUNDA (Unit - IV)<br>munda.sidam@gmail.com
							</p>
							<p>
								DR. RANJIT KUMAR SINGH (Unit - III)<br>munda.sidam@gmail.com
							</p>
							<p>
								info@sahibganjcollege.in<br> principal@sahibganjcollege.in
							</p>





						</div>
					</div>
				</div>
				<div class="contactForm">
					<form>
						<h2>Send Message</h2>
						<div class="inputbox">
							<div class="inputBox">
								<input type="text" name="contactusname" required="required">
								<span>Full Name</span>
							</div>
						</div>
						<div class="inputbox">
							<div class="inputBox">
								<input type="email" name="contactusemail" value=""
									required="required"> <span>Email</span>
							</div>
						</div>
						<div class="inputbox">
							<div class="inputBox">
								<textarea name="contactusmessage"
									required="required">
							</textarea>
								<span>Type Your Message....</span>
							</div>
						</div>
						<div class="inputbox">
							<div class="inputBox">
								<input type="submit" name="contactusemail" value="send">
							</div>
						</div>

					</form>
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
</body>
</html>