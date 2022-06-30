<%@page import="com.nss.sahibganj.entities.User"%>
<%
User u = (User) session.getAttribute("currentUser");
if (u == null) {
	response.sendRedirect("login.jsp");
} else {

}
%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STUDENT PROFILE</title>
<!-- css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Rowdies:wght@700&family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&family=Rowdies:wght@700&family=Shadows+Into+Light&display=swap"
	rel="stylesheet">

</head>
<body>

	<!-- NavBAr -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark"
		style="background: #00009e;">
		<a class="navbar-brand" href="#" style="font-family: cursive;">NSS</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="profile.jsp"><span class="fa fa-bank"></span> Home <span
						class="sr-only">(current)</span> </a></li>
				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-bell-o"></span> Notice</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Organization </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#" data-toggle="modal"
							data-target="#abooutus">About NSS</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Objectives</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Regular Activitiese</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Special Camping Programme</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Awards & Awardees</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="contactUs.jsp"><span
						class="fa fa-phone"></span> Contact Us</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-bell-o"></span>Gallery</a></li>
			</ul>
			<ul class="navbar-nav mr-right">
				<li class="nav-item"><a class="nav-link" href="#!"
					data-toggle="modal" data-target="#profile-modal"><span
						class="fa fa-user-circle"></span><%=u.getName()%></a></li>

				<li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
						class="fa fa-user-plus"></span> Logout </a></li>


			</ul>
		</div>

	</nav>
	<!-- About US -->
	<div class="modal fade" id="aboutus" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>

				</div>
				<div class="modal-body">National Service Scheme (NSS) was
					launched during the Mahatma Gandhi’s Centenary Year (1969)
					involving 40,000 student volunteers in 37 universities. Today, it
					has more than 2.6 million student volunteers spread over 198
					universities and 41 (+2) Councils and implemented in 16,659
					academic institutions. AIM The aim of National Service Scheme is
					“Development of the Personality of Students through Community
					Service”. In order to fulfill the objective, student volunteers and
					programme functionaries are engaged in constructive and productive
					programmes involving students in various awareness drives,
					shramdaan, social reforms, communal harmony, creation of community
					assets, relief work, blood donation, environmental protection,
					literacy programme, health education campaign, etc. Under the
					scheme, each volunteer contributes 240 hours of community work
					during a period of two years. NSS at DEI This Institute has been
					pioneer in implementing the scheme since its inception in U.P.
					Social service is an integral component (under Rural Development)
					of DEI’s programme of innovative and comprehensive undergraduate
					education, which combines academic excellence with social
					relevance. Ambience of an active, disciplined, socially sensitive
					and co-operative community life and work ethic at Dayalbagh with
					its multi-faceted infrastructure of agriculture, education and
					industry, provide the basic thrust for social work in surrounding
					villages. Starting with only two units of 100 students each and two
					project officers in 1970 the Institute has 1500 students on roll in
					NSS with 14 Programme Officers and a Programme Co-ordinator. With
					the co-ordinated effort of all the faculties, multi-pronged efforts
					have been made to make a more effective contribution towards rural
					reconstruction. Participation in N.S.S. Camp is compulsory for all
					students in the first semester of their course of study.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Understood</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Button trigger modal -->

	<!-- Modal -->
	<div class="modal fade" id="profile-modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header primary-background text-white text-center">
					<h5 class="modal-title " id="exampleModalLabel">NSS Sahibganj</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<img alt="profile" src="../profilepic1/default.png"
							class="img-fluid" style="border-radius: 10%"><br>
						<h5 class="modal-title" id="exampleModalLabel"><%=u.getEmail()%></h5>
						<!-- tables -->
						<div id="profile-details">
							<table class="table">
								<tbody>

									<tr>
										<th scope="row">ID:</th>
										<td><%=u.getId()%></td>
									</tr>
									<tr>
										<th scope="row">Name:</th>
										<td><%=u.getName()%></td>
									</tr>

									<tr>
										<th scope="row">Email:</th>
										<td><%=u.getEmail()%></td>
									</tr>

									<tr>
										<th scope="row">Mobile:</th>
										<td><%=u.getMobile()%></td>
									</tr>
									<tr>
										<th scope="row">Department:</th>
										<td><%=u.getDeptt()%></td>
									</tr>
									<tr>
										<th scope="row">Session:</th>
										<td><%=u.getCsession()%></td>
									</tr>
									<tr>
										<th scope="row">NSS Unit:</th>
										<td><%=u.getNssunit()%></td>
									</tr>

									<tr>
										<th scope="row">Gender:</th>
										<td><%=u.getGender()%></td>
									</tr>

									<tr>
										<th scope="row">Blood Group:</th>
										<td><%=u.getBg()%></td>
									</tr>

									<tr>
										<th scope="row">Ragistration Time</th>
										<td><%=u.getDateTime().toString()%></td>
									</tr>


								</tbody>

							</table>
						</div>
						<div id="profile-edit" style="display: none;">
							<form action="userupdation" method="post"
								enctype="multipart/form-data">
								<table class="table">
									<tbody>

										<tr>
											<th scope="row">ID:</th>
											<td><input type="text" value=" <%=u.getId()%>"
												disabled="disabled"></td>
										</tr>
										<tr>
											<th scope="row">Name:</th>
											<td><input type="text" name="user_name"
												value=" <%=u.getName()%>"></td>
										</tr>

										<tr>
											<th scope="row">Email:</th>
											<td><input type="text" name="user_email"
												value=" <%=u.getEmail()%>" disabled="disabled"></td>
										</tr>

										<tr>
											<th scope="row">Mobile:</th>
											<td><input type="text" name="user_mobile"
												value=" <%=u.getMobile()%>"></td>
										</tr>
										<tr>
											<th scope="row">Department:</th>
											<td><select class="form-control" name="user_deptt"
												id="exampleFormControlSelect1" required="required">

													<option><%=u.getDeptt()%></option>
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
											</select></td>
										</tr>
										<tr>
											<th scope="row">Session:</th>
											<td><select class="form-control" name="user_session"
												id="exampleFormControlSelect1" required="required">
													<optgroup label="Session">
														<option><%=u.getCsession()%></option>
														<option>2017-2020</option>
														<option>2018-2021</option>
														<option>2019-2022</option>
														<option>2020-2023</option>
														<option>2021-2024</option>
														<option>2022-2025</option>
													</optgroup>
											</select></td>
										</tr>
										<tr>
											<th scope="row">NSS Unit:</th>
											<td><select class="form-control" name="user_nssunit"
												id="exampleFormControlSelect1" required="required">
													<option><%=u.getNssunit()%></option>
													<option>Unit I</option>
													<option>Unit II</option>
													<option>Unit III</option>
													<option>Unit IV</option>
											</select></td>
										</tr>

										<tr>
											<th scope="row">Gender:</th>
											<td><select class="form-control" name="user_gender"
												id="exampleFormControlSelect1" required="required">
													<option><%=u.getGender()%></option>
													<option>Male</option>
													<option>Female</option>
													<option>Other</option>
											</select></td>
										</tr>

										<tr>
											<th scope="row">Blood Group:</th>
											<td><select class="form-control" name="user_bg"
												id="exampleFormControlSelect1" required="required">
													<option><%=u.getBg()%></option>
													<option>A+</option>
													<option>A-</option>
													<option>B+</option>
													<option>B-</option>
													<option>AB+</option>
													<option>AB-</option>
													<option>O+</option>
													<option>O-</option>
											</select></td>
										</tr>
										<tr>
											<th scope="row">New Profile:</th>
											<td><input type="file" name="profile"
												class="form-control" value="<%u.getProfile();%>"></td>
										</tr>
										<tr>
											<th scope="row">Ragistration Time</th>
											<td><%=u.getDateTime()%></td>
										</tr>


									</tbody>

								</table>
								<button type="submit"
									style="cursor: pointer; background: green;">Save</button>

							</form>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button id="edit-profile-button" type="button"
						class="btn btn-primary">Edit</button>
				</div>
			</div>
		</div>
	</div>


	<!-- header -->
	<%@include file="header.jsp"%>


	<!-- Slide Image -->
	<%@include file="slideimg.jsp"%>
	<!-- Banner -->
	<div class="jumbptroncontainer-fluid p-0 m-0" style="height: 1000;">
		<div class="jumbptron primary-background text-white">

			<div class="container">
				<h3 class="display-3" style="text-align: center;">WellCome to</h3>
				<h3 class="display-3" style="text-align: center;">National
					Service Scheme</h3>
				<p>
					The National Service Scheme (NSS) is a Central Sector Scheme of
					Government of India, Ministry of Youth Affairs & Sports. The
					National Service Scheme (NSS) is a Central Sector Scheme of
					Government of India, Ministry of Youth Affairs & Sports. The
					National Service Scheme (NSS) is a Central Sector Scheme of
					Government of India, Ministry of Youth Affairs & Sports. The
					National Service Scheme (NSS) is a Central Sector Scheme of
					Government of India, Ministry of Youth Affairs & Sports. <a
						href="#">read More</a>
				</p>

				<div style="display: block; margin: 0 auto; text-align: center;">
					<a class="btn btn-outline-light btn-lg"
						style="margin-bottom: 50px;" href="ragistration.jsp">Signup</a> <a
						class="btn btn-outline-light btn-lg" style="margin-bottom: 50px;"
						href="Login.jsp">Login</a>
				</div>
			</div>
		</div>
	</div>

	<!-- principal -->
	<%@ include file="clgprincpal.jsp"%>
	<div style="background: #000;">
		<div class="container" style="">
			<h1
				style="text-align: center; font-style: oblique; font-weight: 500; font-family: cursive; background: #292929; color: #fffe; border-bottom-left-radius: 15px; border-bottom-right-radius: 15px; border-top-left-radius: 15px; border-top-right-radius: 15px;">
				<ul>NSS Programme Officer's
				</ul>
			</h1>
			><br> <br>
			<div class="row" style="margin-top: 10px;">
				<div class="col-md-3">
					<div class="card" style="width: 17rem; background: #292929;">
						<div class="card-body">
							<img src="img/Kiren-Rijiju.jpg" class="card-img-top" alt="...">
							<h5 class="card-title"
								style="font-weight: bold; font-family: 'Lobster', cursive; font-family: 'Rowdies', cursive; color: silver;">Shri
								DR. Manoj</h5>
							<p class="card-text"
								style="letter-spacing: 2px; font-weight: bold; font-family: 'Rowdies', cursive; font-family: 'Shadows Into Light', cursive; color: silver;">
								Minister of State (Independent Charge) Ministry of Youth Affairs
								And Sports <br> <a href="#" class="btn btn-primary">Minister
									Massege</a>
							</p>


						</div>
					</div>

				</div>


				<div class="col-md-3">
					<div class="card" style="width: 17rem; background: #292929;">
						<div class="card-body">
							<h5 class="card-title">DR. Pramod</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>

				</div>
				<div class="col-md-3">
					<div class="card" style="width: 17rem; background: #292929;">
						<img src="img/mundaSir.jpg" class="card-img-top"
							alt="Dr Ranjit Kumar Singh" height="190px">
						<div class="card-body">
							<h5 class="card-title"
								style="font-weight: bold; font-family: 'Lobster', cursive; font-family: 'Rowdies', cursive; color: silver; font-size: 1em;">Dr.
								SIDAM SINGH MUNDA</h5>
							<p class="card-text"
								style="letter-spacing: 1.0px; font-weight: bold; font-family: 'Rowdies', cursive; font-family: 'Shadows Into Light', cursive; color: silver;">
								Assistant professor Dept. Of psychology Cum UG Arts Admission In
								charge<br> NSS Programme Officer Unit - III<span id="dots"></span><span
									id="more" style="display: none;"> Ex- Assistant
									Controller Of Examination Ex- Sports In charge Ex - Public
									Information Officer (PIO) and President teachers association
									Sahibganj College Sahibganj SKMU Dumka. Mob. No. 6205418042
									Email id - munda.sidam@gmail.com NSS activities :- NSS annual
									Special Camp organize two times 2016 & 2018 Team leader NSS
									Advencher camp Manali 15 days 2015 NSS Training Kolkata And
									Organized different regular activities of NSS like plantation,
									celebrate in many occasion etc. </span>

								<button type="button" class="btn btn-primary" id="read"
									onclick="read()">Read more</button>
							</p>


						</div>
					</div>

				</div>
				<div class="col-md-3">
					<div class="card" style="width: 17rem; background: #292929;">
						<img src="img/ranjitsir.jpg" class="card-img-top"
							alt="Dr Ranjit Kumar Singh" height="190px">
						<div class="card-body">
							<h5 class="card-title"
								style="font-weight: bold; font-family: 'Lobster', cursive; font-family: 'Rowdies', cursive; color: silver; font-size: 1.1em;">Dr.
								Ranjit Kumar Singh</h5>
							<p class="card-text"
								style="letter-spacing: 1.1px; font-weight: bold; font-family: 'Rowdies', cursive; font-family: 'Shadows Into Light', cursive; color: silver;">

								Assistant professor Department of Geology Sahibganj College
								Sahibganj.<br> NSS Programme Officer Unit - IV<span
									id="dots2"></span><span id="more2" style="display: none;">
									Nodal officer, EBSB coordinator , Governor cum Chancellor
									Nominee syndicate member Sido kanhu murmu university Dumka
									Jharkhand He is doing a lot of work about Rajmahal fossils
									preservation and development projects , Environmental, Natural
									resources protection, water conservation etc Educational
									qualification MSC Ph D Geology Many Research papers published
									in world reputed journals. Sports director at SKM university
									Dumka National state v district level so many committee
									members. </span>

								<button type="button" class="btn btn-primary" id="read2"
									onclick="read2()">Read more</button>
							</p>


						</div>
					</div>

				</div>

			</div>

		</div>
	</div>
	<div>
		<img alt="profile" src="profilepic1/<%u.getProfile();%>"
			height="304" width="304">
	</div>
	<!-- footer -->
	<%@include file="footer.jsp"%>


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
<script type="text/javascript">
	$(document).ready(function() {
		var editStatus = false;
		$("#edit-profile-button").click(function() {
			if (editStatus == false) {
				$("#profile-details").hide()
				$("#profile-edit").show()
				editStatus = true;
				$(this).text("Back");
			} else {
				$("#profile-details").show()
				$("#profile-edit").hide()
				editStatus = false;
				$(this).text("Edit");
			}

		})

	})
</script>

</html>