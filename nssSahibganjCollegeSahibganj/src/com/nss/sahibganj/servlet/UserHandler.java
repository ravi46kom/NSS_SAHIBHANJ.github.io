package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.nss.sahibganj.dao.NoticeEventImageDao;
import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.Noticebean;
import com.nss.sahibganj.entities.User;

/**
 * Servlet implementation class UserHandler
 */
public class UserHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERT = "/user.jsp";
	private static String Edit = "/edit.jsp";
	private static String UserRecord = "/listUser.jsp";
	private UserDao dao;
	private NoticeEventImageDao daoo;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserHandler() {
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

		String action = request.getServletPath();
		PrintWriter out = response.getWriter();
		doGet(request, response);
		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertUser(request, response);
				break;
			case "/delete":
				deleteUser(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateUser(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		request.setAttribute("users", daoo.getAllNotices());
		RequestDispatcher dispatcher = request.getRequestDispatcher("user.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		UserDao dao = new UserDao();
		User existingUser = dao.selectUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);

	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		UserDao dao = new UserDao();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		User newUser = new User();
		dao.editUser(newUser);
		response.sendRedirect("list");
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		UserDao dao = new UserDao();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String country = request.getParameter("country");

		User book = new User();
		dao.updateUser(book);
		response.sendRedirect("list");
	}

	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int si = Integer.parseInt(request.getParameter("id"));
		Noticebean nei = new Noticebean();

	}

	/*
	 * 
	 * 
	 * 
	 * String redirect = ""; String uId = request.getParameter("userid"); String
	 * action = request.getParameter("action"); if (!((uId) == null) &&
	 * action.equalsIgnoreCase("insert")) { int id = Integer.parseInt(uId); User
	 * user = new User(); user.setId(id);
	 * user.setName(request.getParameter("Name"));
	 * user.setMobile(request.getParameter("Mobile")); dao.saveUser(user); redirect
	 * = UserRecord; request.setAttribute("users", dao.getAllUsers());
	 * System.out.println("Record Added Successfully"); } else if
	 * (action.equalsIgnoreCase("delete")) {
	 * 
	 * String userId = request.getParameter("userId"); int uid =
	 * Integer.parseInt(userId); dao.removeUser(uid); redirect = UserRecord;
	 * request.setAttribute("users", dao.getAllUsers());
	 * System.out.println("Record Deleted Successfully"); } else if
	 * (action.equalsIgnoreCase("editform")) { redirect = Edit; } else if
	 * (action.equalsIgnoreCase("edit")) { String userId =
	 * request.getParameter("userId"); int uid = Integer.parseInt(userId); User user
	 * = new User(); user.setId(uid); user.setName(request.getParameter("Name"));
	 * user.setMobile(request.getParameter("Mobile")); dao.editUser(user);
	 * request.setAttribute("user", user); redirect = UserRecord;
	 * System.out.println("Record updated Successfully"); } else if
	 * (action.equalsIgnoreCase("listUser")) { redirect = UserRecord;
	 * request.setAttribute("users", daoo.getAllNotices()); } else { redirect =
	 * INSERT; }
	 * 
	 * RequestDispatcher rd = request.getRequestDispatcher(redirect);
	 * rd.forward(request, response);
	 * 
	 * }
	 */
}
