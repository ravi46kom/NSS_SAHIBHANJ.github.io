package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.attribute.UserPrincipalLookupService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;

/**
 * Servlet implementation class RsgServlet
 */
@WebServlet("/RsgServlet")
public class RsgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RsgServlet() {
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
		response.setContentType("text/html;charset=UTF-8");

		try (PrintWriter out = response.getWriter()) {

			String check = request.getParameter("user_check");
			if (check == null) {
				out.println("Box Not Checked");
			} else {

				String name = request.getParameter("user_name");
				String mobile = request.getParameter("user_mobile");
				String email = request.getParameter("user_email");
				String deptt = request.getParameter("user_deptt");
				String csession = request.getParameter("user_session");
				String nssunit = request.getParameter("user_nssunit");
				String gender = request.getParameter("user_gender");
				String bg = request.getParameter("user_bg");
				String password = request.getParameter("user_password");
				User user = new User(name, mobile, email, deptt, csession, nssunit, gender, bg, password);

				UserDao dao = new UserDao(ConnectionProvider.getConnection());
				if (dao.saveUser(user)) {
					out.println("Done");
					response.sendRedirect("Login.jsp");
				} else {
					out.println("Error");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
