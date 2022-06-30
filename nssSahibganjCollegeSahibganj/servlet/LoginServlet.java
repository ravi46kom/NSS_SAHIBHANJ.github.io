package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		PrintWriter out = response.getWriter();
		try {
			String email = request.getParameter("login_email");
			String password = request.getParameter("login_password");

			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			User u = dao.GetUserByEmailAndPass(email, password);

			if (u == null) {
				out.println("Error");

			} else {
				HttpSession hs = request.getSession();
				hs.setAttribute("currentUser", u);
			response.sendRedirect("profile.jsp");	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
