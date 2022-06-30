package com.nss.sahibganj.servlet;

import java.io.IOException;

import com.nss.sahibganj.dao.NoticeEventImageDao;
import com.nss.sahibganj.entities.EventBean;
import com.nss.sahibganj.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddEvents
 */
@WebServlet("/AddEvents")
public class AddEvents extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddEvents() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		int si = Integer.parseInt(request.getParameter("sinum"));
		String events = request.getParameter("event");
		EventBean nei = new EventBean(si, events);
		NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
		if (dao.addEvents(nei)) {
			response.sendRedirect("addOrUpdateEvents.jsp");

		} else {
			response.sendRedirect("dashboard.jsp");
		}
	}

}
