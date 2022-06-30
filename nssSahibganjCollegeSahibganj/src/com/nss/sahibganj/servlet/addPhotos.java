package com.nss.sahibganj.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.nss.sahibganj.dao.NoticeEventImageDao;
import com.nss.sahibganj.dao.UserDao;
import com.nss.sahibganj.entities.EventBean;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;

/**
 * Servlet implementation class addPhotos
 */
@MultipartConfig
@WebServlet("/addPhotos")
public class addPhotos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addPhotos() {
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

			Part part = request.getPart("photos");
			String caption = request.getParameter("caption");
			String textarea = request.getParameter("textarea");

			String photos = part.getSubmittedFileName();

			EventBean eb = new EventBean(photos, caption, textarea);
			NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
			boolean insert = dao.insertGallery(eb);
			if (insert) {
				InputStream is = part.getInputStream();
				byte[] data = new byte[is.available()];

				is.read(data);
				String path = request.getServletContext().getRealPath("/") + "gallery" + File.separator + photos;
				System.out.println(path);
				FileOutputStream fos = new FileOutputStream(path);
				fos.write(data);
//					HttpSession hs = request.getSession();
				response.sendRedirect("dashboard.jsp");
			} else {
				response.getWriter().append("Error");
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
