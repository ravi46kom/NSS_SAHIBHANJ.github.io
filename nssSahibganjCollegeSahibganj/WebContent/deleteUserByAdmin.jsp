<%@page import="com.nss.sahibganj.dao.UserDao"%>
<jsp:useBean id="u" class="com.nss.sahibganj.entities.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<%  
    UserDao.deleteUser(u); 
    response.sendRedirect("sstudentlist.jsp");  
    %>
