<%@page import="com.nss.sahibganj.entities.Admin"%>
<%
Admin u = (Admin) session.getAttribute("currentUser");
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
<title>Prograam Officer</title>

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
					href="adminprofile.jsp"><span class="fa fa-bank"></span> Home <span
						class="sr-only">(current)</span> </a></li>
				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-bell-o"></span> Notice</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Organization </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="!#" data-toggle="modal"
							data-target="#aboutus">About NSS</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Objectives</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="!#" data-toggle="modal"
							data-target="#regularActivities">Regular Activitiese</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Special Camping Programme</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Awards & Awardees</a>
					</div></li>

				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-image 3x"></span> Gallery</a></li>
				<li class="nav-item"><a class="nav-link" href="dashboard.jsp"><span
						class="fa fa-bar-chart"></span> Dashboard</a></li>


			</ul>
			<ul class="navbar-nav mr-right">
				<li class="nav-item"><a class="nav-link" href="#!"
					data-toggle="modal" data-target="#profile-modal"><span
						class="fa fa-user-circle"></span><%=u.getAlumniId()%></a></li>

				<li class="nav-item"><a class="nav-link" href="index.jsp"><span
						class="fa fa-user-plus"></span> Logout </a></li>


			</ul>
		</div>

	</nav>

	<!-- About US -->
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
						<img alt="profile" src="profilepic1/<%=u.getAprofile()%>"
							class="img-fluid" style="border-radius: 50%"><br>
						<h5 class="modal-title" id="exampleModalLabel"><%=u.getAemail()%></h5>
						<!-- tables -->
						<div id="profile-details">
							<table class="table">
								<tbody>

									<tr>
										<th scope="row">ID:</th>
										<td><%=u.getAlumniId()%></td>
									</tr>
									<tr>
										<th scope="row">Name:</th>
										<td><%=u.getAname()%></td>
									</tr>

									<tr>
										<th scope="row">Email:</th>
										<td><%=u.getAemail()%></td>
									</tr>

									<tr>
										<th scope="row">Mobile:</th>
										<td><%=u.getAmobile()%></td>
									</tr>
									<tr>
										<th scope="row">Department:</th>
										<td><%=u.getAdeptt()%></td>
									</tr>
									<tr>
										<th scope="row">NSS Unit:</th>
										<td><%=u.getAnssunit()%></td>
									</tr>

									<tr>
										<th scope="row">Gender:</th>
										<td><%=u.getAgender()%></td>
									</tr>

									<tr>
										<th scope="row">Blood Group:</th>
										<td><%=u.getAbg()%></td>
									</tr>

									<tr>
										<th scope="row">Ragistration Time</th>
									</tr>


								</tbody>

							</table>
						</div>
						<div id="profile-edit">
							<h1>Edit</h1>
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

	<!-- principal -->
	<%@ include file="clgprincpal.jsp"%>
	<!-- footer -->
	<%@include file="footer.jsp"%>


	<!-- JavaScript -->
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