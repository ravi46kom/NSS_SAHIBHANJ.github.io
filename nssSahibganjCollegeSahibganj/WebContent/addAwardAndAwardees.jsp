<%@page import="com.nss.sahibganj.entities.Admin" %>

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
<title>Insert title here</title>
</head>
<body>

</body>
</html>