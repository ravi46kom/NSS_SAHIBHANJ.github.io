<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action='UserHandler' name="frmAddUser"><input
type="hidden" name="action" value="insert" />
<p><b>Add New Record</b></p>
<table>
<tr>
<td>User ID</td>
<td><input type="text" name="userid" /></td>
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
<td><input type="submit" value="Submit" /></td>
</tr>
</table>
</form>
<p><a href="listUser.jsp">View-All-Records</a></p>
</body>
</html>