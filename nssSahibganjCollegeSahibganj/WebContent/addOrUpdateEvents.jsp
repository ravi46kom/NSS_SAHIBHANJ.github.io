<%@page import="java.util.List"%>
<%@page import="com.nss.sahibganj.entities.Admin"%>
<%
	Admin u = (Admin) session.getAttribute("currentUser");
	if (u == null) {
		response.sendRedirect("login.jsp");
	} else {

	}
%>


<%@page import="com.nss.sahibganj.entities.EventBean"%>
<%@page import="com.nss.sahibganj.dao.NoticeEventImageDao"%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN PANEL~EVENTS</title>
<!-- css -->
<style type="text/css">
.primary-background {
	background: #cc0000;
}

.slidenav {
	background: red;
	width: 250px;
	height: 100%;
	position: fixed;
	z-index: 1;
	padding-top: 20px;
	overflow-X: hidden;
}

.slidenav a {
	display: flex;
	text-decoration: none;
	flex-direction: column;
	left: 0;
	padding-left: 8px;
	padding-top: 10px;
	cursor: pointer;
	border-bottom: 1px solid;
	color: black;
	border-color: white;
}

.slidenav a:hover {
	color: white;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0
/css/font-awesome.min.css">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark primary-background">
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


			</ul>
			<ul class="navbar-nav mr-right">
				<li class="nav-item"><a class="nav-link" href="#!"
					data-toggle="modal" data-target="#profile-modal"><span
						class="fa fa-user-circle"></span></a></li>

				<li class="nav-item"><a class="nav-link" href="index.jsp"><span
						class="fa fa-user-plus"></span> Logout </a></li>


			</ul>
		</div>

	</nav>
	<div style="display: flex; margin-top: 50px;">
		<div class="slidenav" style="left: 0;">
			<img alt="" src="img/ranjitsir.jpg" height="200px" width="200px"
				style="display: block; margin: auto; border-radius: 100px 100px 100px 100px; border-bottom: 4px solid;">
			<label style="display: block; text-align: center;">Dr. Ranjit
				Kumar Singh <br> NSS UNIT - IV
			</label> <a href="#">New Request</a> <a href="AddUpdateSlides.jsp">Update Slides</a> <a
				href="addOrUpdateNotice.jsp">Add/Update Notice</a> <a
				href="addOrUpdateEvents.jsp">Add/Update Events</a> <a href="#">Add
				Award&Awardees</a> <a href="#">Update/Add Regular Activities</a><a
				href="user-list.jsp">Student List Month Wise</a> <a href="#">List
				Year Wise</a> <a href="sstudentlist.jsp">All Student List</a>

		</div>
		<div
			style="background: #000; width: 81.5%; color: red; height: 100%; position: absolute; right: 0;">
			<a type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#staticBackdrop">Add Eventss</a>
			<h1 style="text-align: center;">Events List</h1>
			<%
				NoticeEventImageDao dao = new NoticeEventImageDao();
				List<EventBean> list = dao.getAllEvents();
				request.setAttribute("list", list);
			%>

			<table border='1' id="profile-details">
				<tr style="text-align: center;">
					<th>Serial Number</th>
					<th>Events</th>
					<th>Update/Edit</th>
					<th>Delete Permanent</th>
				</tr>
				<tr>
					<%
						for (EventBean user : list) {
					%>
					<td><%=user.getSi()%></td>
					<td><%=user.getEvents()%></td>
					<td><button id="edit-profile-button" type="button"
							class="btn btn-primary">Edit</button></td>
					<td><a
						href="deletenotice.jsp?events=
					
					<%=user.getEvents()%>">Delete</a></td>
				</tr>
				<%
					}
				%>

			</table>
			<form action="#">
				<table border='1' id="profile-edit" style="display: none;">
					<tr style="text-align: center;">
						<th>Serial Number</th>
						<th>Events</th>
						<th>Update/Edit</th>
						<th>Delete Permanent</th>
					</tr>
					<tr>
						<%
							for (EventBean user : list) {
						%>

						<td><input name="event" type="text"
							value="<%=user.getEvents()%>"></td>
						<td><a id="edit-profile-button" href="#">Save</a></td>
						<td><a
							href="deletenotice.jsp?events=<%=user.getEvents()%>
					
					">Delete</a></td>
					</tr>
					<%
						}
					%>

				</table>
			</form>
		</div>




	</div>

	<div class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Modal body text goes here.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Add Notice -->
	<!-- Button trigger modal -->

	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"
				style="background: #000; width: 100%; color: red; height: 100%; position: absolute; right: 0;">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true" style="color: red;">&times;</span>
					</button>
				</div>
				<form action="AddEvents" method="post">
					<div class="modal-body">
						<table border='1'>
							<tr style="text-align: center;">
								<th>Serial Number</th>
								<th>Events</th>
							</tr>
							<tr>
								<td><input type="number" name="sinum"></td>
								<td><input type="text" name="event"></td>
							</tr>

						</table>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save Events</button>
					</div>
				</form>
			</div>
		</div>
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

</body>
</html>




