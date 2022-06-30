package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try (PrintWriter out = response.getWriter()) {

				String name = request.getParameter("user_name");
				String mobile = request.getParameter("user_mobile");
				String deptt = request.getParameter("user_deptt");
				String csession = request.getParameter("user_session");
				String nssunit = request.getParameter("user_nssunit");
				String gender = request.getParameter("user_gender");
				String bg = request.getParameter("user_bg");
				Part part = request.getPart("profile");
				String imagename = part.getSubmittedFileName();

				
				
				HttpSession hs = request.getSession();
				User user = (User) hs.getAttribute("currentUser");
				user.setName(name);
				user.setMobile(mobile);
				user.setDeptt(deptt);
				user.setCsession(csession);
				user.setNssunit(nssunit);
				user.setGender(gender);
				user.setBg(bg);
				user.setProfile(imagename);
				
				UserDao dao = new UserDao(ConnectionProvider.getConnection());
				boolean update = dao.updateUser(user);
				if(update) {
//					HttpSession hs = request.getSession();
					response.sendRedirect("profile.jsp");
				}else {
					out.println("Not Updated");
				}
	}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
