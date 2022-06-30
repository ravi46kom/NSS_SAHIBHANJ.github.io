<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style type="text/css">
.d-flex input {
	color: #00009e;
}

.d-flex .form-control {
	color: #00009e;
}

/* The message box is shown when the user clicks on the password field */
#message {
	display: none;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
	color: green;
}

.valid:before {
	position: relative;
	content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
	color: red;
}

.invalid:before {
	position: relative;
	content: "✖";
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<!-- NavBar -->
	<%@include file="nvbar.jsp"%>
	<%@include file="header.jsp"%>

	<div class="d-flex" style="background: #00009e;">
		<section class="" style="margin: auto;">
			<div class="container">
				<div class="row">

					<div class="col-mid-4 offset-mid-4">
						<div class="card">
							<div class="card-header text-white text-center"
								style="background: #00009e;">
								<span class="fa fa-user-plus fa fa-3x"></span> <br> <label>Register
									Here </label>


								<div class="card-body" style="width: 500px;">

									<form action="RsgServlet" method="post" id="rag_form"
										onsubmit="return matchPassword()">
										<div class="form-group">
											<label>Full Name</label> <input type="text"
												class="form-control" name="user_name"
												id="exampleFormControlInput1"
												title="Please Enter Valid Name"
												placeholder="ex:- Rahul Kumar Sinha"
												style="text-transform: uppercase; font-family: cursive; font: bold;"
												required="required">
										</div>
										<div class="form-group">
											<label for="">Email Address</label> <input type="email"
												class="form-control" name="user_email"
												id="exampleFormControlInput1" placeholder="name@example.com"
												required="required"
												style="text-transform: lowercase; font-family: cursive; font: bold;">
										</div>
										<div class="form-group">
											<label for="user_mobile">Mobile</label> <input type="tel"
												class="form-control" name="user_mobile" id="user_mobile"
												placeholder="8888888888" pattern="[6-9]{1}[0-9]{4}[0-9]{5}"
												required="required"
												style="font-family: cursive; font: bold;">
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect1">Department</label> <select
												class="form-control" name="user_deptt"
												id="exampleFormControlSelect1" required="required"
												style="text-transform: capitalize; font-family: cursive; font: bold;">
												<optgroup label="Science">
													<option>Department of Physics</option>
													<option>Department of Chemistry</option>
													<option>Department of Mathematics</option>
													<option>Department of Botony</option>
													<option>Department of Geology</option>
													<option>Department of Zoology</option>
												</optgroup>
												<optgroup label="Arts">
													<option>Department of Hindi</option>
													<option>Department of English</option>
													<option>Department of Economics</option>
													<option>Department of Philosophy</option>
													<option>Department of Psychlogyy</option>
													<option>Department of Poltical Science</option>
													<option>Department of History</option>
													<option>Department of Urdu</option>
													<option>Department of Santhali</option>
													<option>Department of Sanskrit</option>
													<option>Department of Maithili</option>
												</optgroup>
												<optgroup label="Commerce">
													<option disabled="disabled">None</option>
												</optgroup>
												<optgroup label="Self-finance Courses">
													<option>Department of B.ed</option>
													<option>Department of BCA</option>
													<option>Department of BLIS</option>
												</optgroup>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect1">Course
												Duration</label> <select class="form-control" name="user_session"
												id="exampleFormControlSelect1" required="required"
												style="font-family: cursive; font: bold;">
												<optgroup label="Session">
													<option>2017-2020</option>
													<option>2018-2021</option>
													<option>2019-2022</option>
													<option>2020-2023</option>
													<option>2021-2024</option>
													<option>2022-2025</option>
												</optgroup>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect1">With reference
												NSS Unit</label> <select class="form-control" name="user_nssunit"
												id="exampleFormControlSelect1" required="required"
												style="text-transform: uppercase; font-family: cursive; font: bold;">
												<option>Unit I</option>
												<option>Unit II</option>
												<option>Unit III</option>
												<option>Unit IV</option>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect1">Gender</label> <select
												class="form-control" name="user_gender"
												id="exampleFormControlSelect1" required="required"
												style="text-transform: uppercase; font-family: cursive; font: bold;">
												<option>Male</option>
												<option>Female</option>
												<option>Other</option>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect1">Blood Group</label> <select
												class="form-control" name="user_bg"
												id="exampleFormControlSelect1" required="required"
												style="font-weight: 1000; text-transform: uppercase; color: maroon; font-family: cursive; font: bold;">
												<option>A+</option>
												<option>A-</option>
												<option>B+</option>
												<option>B-</option>
												<option>AB+</option>
												<option>AB-</option>
												<option>O+</option>
												<option>O-</option>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlInput1">Password</label> <input
												type="password" class="form-control" name="user_password"
												id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
												title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
												required="required"> <input type="checkbox"
												onclick="myFunction()">Show Password
										</div>
										<div id="message" style="font-size: small;">
											<h3 style="font-weight: 500; font: bolder; font-size: small;">Password
												must contain the following:</h3>
											<span id="letter" class="invalid">A <b>lowercase</b>
												letter!
											</span> <span id="capital" class="invalid">A <b>capital
													(uppercase)</b> letter!
											</span> <span id="number" class="invalid">A <b>number!</b>
											</span> <span id="length" class="invalid">Minimum <b>8
													characters!</b></span>
										</div>

										<script>

var myInput = document.getElementById("password");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>


										<div class="form-group">
											<label for="exampleFormControlInput1">Confirm
												Password</label> <input type="password" class="form-control"
												name="user_cpassword" id="cpassword"
												placeholder="**********">
										</div>

										<div class="form-group form-check">
											<input type="checkbox" class="form-check-input"
												name="user_check" id="exampleCheck1"> <label
												class="form-check-label" for="exampleCheck1">agree
												Terms&Condition</label>
										</div>
										<div id="loder" style="display: none;">
											<span class="fa fa-refresh fa-spin fa-4x"></span>
											<h4>Please wait...</h4>
										</div>

										<button type="submit" class="btn btn-primary" id="submit_btn">Submit</button>

									</form>

								</div>

							</div>

						</div>

					</div>
				</div>

			</div>

		</section>
	</div>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			window.console.log("loaded...");
			$('#rag_form').on('submit', function(event) {
				event.preventDefault();
				let form = new FormData(this);
		$("#submit_btn").hide();
		$("#loder").show();
				//send register servlet
				$.ajax({
					url : "RsgServlet",
					type : 'POST',
					data : form,
					success : function(data, textstatus, jqXHR) {

						console.log(data)
						$("#submit_btn").show();
						$("#loder").hide();
						
						if (data.trim()==='Done') {
							swal("Ragistration Successfull We are going to redirecting Login Page.")
							.then((value) => {
							  window.location = "Login.jsp"
							});	
						}
						else {
							swal(data);
						}
						
					},
					error : function(jqXHR, textstatus, errorThrown) {
						console.log(jqXHR)
						$("#submit_btn").show();
						$("#loder").hide();
						swal("Something went Wrong Pls..try again later");
					},
					processData : false,
					contentType : false

				});

			});

		});

	</script>

</body>
</html>