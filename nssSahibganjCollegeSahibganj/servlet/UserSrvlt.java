package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.User;

/**
 * Servlet implementation class UserSrvlt
 */
@WebServlet("/")
public class UserSrvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		userDao = new UserDao();
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
		
		 String action = request.getServletPath();

	        try {
	            switch (action) {
	                case "/new":
	                    showNewForm(request, response);
	                    break;
	                case "/delete":
	                    deleteUser(request, response);
	                    break;
	                case "/edit":
	                    showEditForm(request, response);
	                    break;
	                case "/update":
	                    updateUser1(request, response);
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
	        List < User > listUser = userDao.getStudents();
	        request.setAttribute("listUser", listUser);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
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
	        User existingUser = userDao.selectUser(id);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
	        request.setAttribute("user", existingUser);
	        dispatcher.forward(request, response);

	    }

	    private void insertUser(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException {
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
	        userDao.saveUser(user);
	        response.sendRedirect("list");
	    }

	    private void updateUser1(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException {
			String email = request.getParameter("user_email");
			String password = request.getParameter("user_password");
			User user = new User(email, password);

	        userDao.updateUser1(user);
	        response.sendRedirect("list");
	    }

	    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        userDao.deleteUser(id);
	        response.sendRedirect("list");

	    }
	

}
