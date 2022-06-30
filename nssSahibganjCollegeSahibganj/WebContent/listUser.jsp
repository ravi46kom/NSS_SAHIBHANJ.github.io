<%@page import="java.util.List"%>
<%@page import="com.nss.sahibganj.dao.NoticeEventImageDao"%>
<%@page import="com.nss.sahibganj.entities.Noticebean"%>
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
		//UserBean user = new UserBean();
			NoticeEventImageDao dao = new NoticeEventImageDao();
			List<Noticebean> userList = dao.getAllNotices();
			//Iterator<UserBean> itr = userList.iterator();
	%>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<tr>
			<%
				/*while(itr.hasNext())
					{
					System.out.println(user.getId());*/
					for (Noticebean user : userList) {
			%>
			<td><%=user.getNotices()%></td>

		</tr>
		<%
			}
			//}
		%>
	</table>
	<p>
		<a href="deletenotice?action=insert">Add User</a>
	</p>
</body>
</html>
