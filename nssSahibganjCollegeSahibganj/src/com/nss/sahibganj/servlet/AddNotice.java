package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.nss.sahibganj.dao.NoticeEventImageDao;
import com.nss.sahibganj.entities.Noticebean;
import com.nss.sahibganj.helper.ConnectionProvider;

/**
 * Servlet implementation class AddNotice
 */
@WebServlet("/AddNotice")
public class AddNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNotice() {
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
		try (PrintWriter out = response.getWriter()) {
			int si = Integer.parseInt(request.getParameter("sinum"));
			String events = request.getParameter("notice");
			Noticebean nei = new Noticebean(si, events);
			NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());

			if (dao.addNotice(nei)) {
				response.sendRedirect("addOrUpdateNotice.jsp");
			} else {
				out.println("invalid");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
