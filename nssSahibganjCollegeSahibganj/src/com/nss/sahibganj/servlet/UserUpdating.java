package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import com.mysql.jdbc.SocketMetadata.Helper;
import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;
import com.nss.sahibganj.helper.DeleteAndSaveHelper;

/**
 * Servlet implementation class UserUpdating
 */
@WebServlet("/UserUpdating")
public class UserUpdating extends HttpServlet {
	private static final long serialVersionUID = 1L;

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

			String name = request.getParameter("user_name");
			out.println(name);
			String mobile = request.getParameter("user_mobile");
			String deptt = request.getParameter("user_deptt");
			String csession = request.getParameter("user_session");
			String nssunit = request.getParameter("user_nssunit");
			String gender = request.getParameter("user_gender");
			String bg = request.getParameter("user_bg");
			Part part = request.getPart("profile");
			String profile = part.getSubmittedFileName();
			HttpSession hs = request.getSession();
			User user = (User) hs.getAttribute("currentUser");
			user.setName(name);
			user.setMobile(mobile);
			user.setDeptt(deptt);
			user.setCsession(csession);
			user.setNssunit(nssunit);
			user.setGender(gender);
			user.setBg(bg);
			user.setProfile(profile);

			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			boolean update = dao.updateUser(user);
			if (update) {
//				HttpSession hs = request.getSession();
				String path = request.getRealPath("/") + "profilepic1" + user.getProfile();
				if (DeleteAndSaveHelper.deleteFile(path)) {
					if (DeleteAndSaveHelper.saveFile(part.getInputStream(), path)) {
						response.sendRedirect("profile.jsp");
					}
				}

			} else {
				out.println("Not Updated");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
