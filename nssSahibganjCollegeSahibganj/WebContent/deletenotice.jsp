<%@page import="com.nss.sahibganj.dao.NoticeEventImageDao"%>
<jsp:useBean id="u" class="com.nss.sahibganj.entities.Noticebean"></jsp:useBean>
<jsp:useBean id="v" class="com.nss.sahibganj.entities.EventBean"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<%
	NoticeEventImageDao.deleteNotice(u);
	NoticeEventImageDao.deleteEvents(v);
	response.sendRedirect("addOrUpdateNotice.jsp");
%>
