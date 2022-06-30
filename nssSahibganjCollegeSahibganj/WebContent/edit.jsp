<%@page import="com.nss.sahibganj.dao.UserDao"%>
<%@page import="com.nss.sahibganj.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
User user = new User();
%>
<%
UserDao dao = new UserDao();
%>
<form method="POST" action='UserHandler' name="frmEditUser"><input
type="hidden" name="action" value="edit" /> <%
String uid = request.getParameter("userId");
if (!((uid) == null)) {
int id = Integer.parseInt(uid);
user = dao.getUserById(id);
%>
<table>
<tr>
<td>User ID</td>
<td><input type="text" name="userId" readonly="readonly"
value="<%=user.getId()%>"></td>
</tr>
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Update" /></td>
</tr>
</table>
<%
} else
out.println("ID Not Found");
%>
</form>
</body>
</html>
