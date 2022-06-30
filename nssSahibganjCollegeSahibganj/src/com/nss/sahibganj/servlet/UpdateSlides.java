package com.nss.sahibganj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.nss.sahibganj.dao.NoticeEventImageDao;
import com.nss.sahibganj.entities.EventBean;
import com.nss.sahibganj.helper.ConnectionProvider;

/**
 * Servlet implementation class UpdateSlides
 */
@WebServlet("/UpdateSlides")
@MultipartConfig
public class UpdateSlides extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSlides() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Part part1 = request.getPart("slide1");
			Part part2 = request.getPart("slide2");
			Part part3 = request.getPart("slide3");
			String slide1 = part1.getSubmittedFileName();
			String slide2 = part2.getSubmittedFileName();
			String slide3 = part3.getSubmittedFileName();
			EventBean eb = new EventBean(slide1, slide2, slide3);
			NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
			boolean update = dao.updateSlides(eb);
			if (update) {
//				HttpSession hs = request.getSession();
				response.sendRedirect("dashboard.jsp");
			} else {
				response.getWriter().append("Error");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
