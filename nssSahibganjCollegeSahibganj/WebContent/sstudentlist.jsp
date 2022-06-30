<%@page import="java.util.List"%>
<%@page import="com.nss.sahibganj.dao.AdminDao"%>
<%@page import="com.nss.sahibganj.entities.Admin"%>
<%
	Admin a = (Admin) session.getAttribute("currentUser");
	if (a == null) {
		response.sendRedirect("login.jsp");
	} else {

	}
%>



<%@page import="com.nss.sahibganj.dao.UserDao"%>
<%@page import="com.nss.sahibganj.entities.User"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN PANEL~ALL STUDENT LIST</title>
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
			</label> <a href="#">New Request</a> <a href="AddUpdateSlides.jsp">Update
				Slides</a> <a href="addOrUpdateNotice.jsp">Add/Update Notice</a> <a
				href="addOrUpdateEvents.jsp">Add/Update Events</a> <a href="#">Add
				Award&Awardees</a> <a href="#">Update/Add Regular Activities</a><a
				href="user-list.jsp">Student List Month Wise</a> <a href="#">List
				Year Wise</a> <a href="sstudentlist.jsp">All Student List</a>

		</div>
		<div
			style="background: #000; width: 81.5%; color: red; height: 100%; position: absolute; right: 0;">

			<h1 style="text-align: center;">ALL STUDENT LIST</h1>
			<%
				List<User> list = AdminDao.getAllStudent();
				request.setAttribute("list", list);
			%>
			<table border='1'>
				<tr style="text-align: center;">
					<th>Id</th>
					<th>Name</th>
					<th>Mobile</th>
					<th>Email</th>
					<th>Department</th>
					<th>Session</th>
					<th>Unit</th>
					<th>Gender</th>
					<th>Blood Group</th>
					<th>Profile</th>
					<th>Ragistration Time</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<% for(User user:list){
					%>
				<tr style="font-size: 12px; text-align: center; color: yellow;">
					<td><%=user.getId() %></td>
					<td><%=user.getName() %></td>
					<td><%= user.getMobile() %></td>
					<td><%= user.getEmail() %></td>
					<td><%= user.getDeptt() %></td>
					<td><%= user.getCsession() %></td>
					<td><%= user.getNssunit() %></td>
					<td><%= user.getGender() %></td>
					<td><%= user.getBg()%></td>
					<td><%= user.getProfile()%></td>
					<td><%= user.getDateTime() %></td>
					<td><a href='EditServlet?id= <%= user.getId()%>}'>edit</a></td>
					<td><a href='deleteUserByAdmin.jsp?id=<%= user.getId()%>'>delete</a></td>
				</tr>

				<% }%>
				<!-- <c:forEach items="${list}" var="u">

					<tr style="font-size: 12px; text-align: center; color: yellow;">
						<td>${u.getId()}</td>
						<td></td>
						<td>${u.getName()}</td>
						<td>${u.getMobile()}</td>
						<td>${u.getEmail()}</td>
						<td>${u.getDeptt()}</td>
						<td>${u.getCsession()}</td>
						<td>${u.getNssunit()}</td>
						<td>${u.getGender()}</td>
						<td>${u.getBg()}</td>
						<td>${u.getPassword()}</td>
						<td>${u.getProfile()}</td>
						<td>${u.getDateTime()}</td>
						<td><a href='EditServlet?id= ${u.getId()}'>edit</a></td>
						<td><a href='deleteUserByAdmin.jsp?id=${u.getId()}'>delete</a></td>
					</tr>

				</c:forEach> -->
			</table>

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

</body>
</html>
