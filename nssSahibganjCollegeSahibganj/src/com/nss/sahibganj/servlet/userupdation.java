package com.nss.sahibganj.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;
import com.nss.sahibganj.helper.DeleteAndSaveHelper;

/**
 * Servlet implementation class userupdation
 */
@WebServlet("/userupdation")
@MultipartConfig
public class userupdation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public userupdation() {
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
		try (PrintWriter out = response.getWriter()) {

			String name = request.getParameter("user_name");
			out.print(name);
			String mobile = request.getParameter("user_mobile");
			out.println(mobile);
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
				String path = request.getRealPath("/") + "profilepic1" + File.separator + user.getProfile();
				DeleteAndSaveHelper.deleteFile(path);
				if (DeleteAndSaveHelper.saveFile(part.getInputStream(), path)) {
					// response.sendRedirect("profile.jsp");
					response.getWriter().append("File Uploaded");
				}

			} else {
				out.println("Not Updated");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
