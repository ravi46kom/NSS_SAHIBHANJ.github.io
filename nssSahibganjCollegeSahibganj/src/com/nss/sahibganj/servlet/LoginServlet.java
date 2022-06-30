package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.Message;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;
import com.nss.sahibganj.helper.Validation;

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
			// if(Validation.isValidEmail(email)&&Validation.isValidPassword(password)) {
			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			User u = dao.GetUserByEmailAndPass(email, password);

			if (u == null) {
//				out.println("Error");
				Message msg = new Message("Invalid Details ! try with another", "error", "alert-danger");
				HttpSession hs = request.getSession();
				hs.setAttribute("msg", msg);

				response.sendRedirect("Login.jsp");
			} else {
				HttpSession hs = request.getSession();
				hs.setAttribute("currentUser", u);
				response.sendRedirect("profile.jsp");
			}

			// }
			// else {
			// out.print("Enter Valid Email or Password");
			// }

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
