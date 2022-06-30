package com.nss.sahibganj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.nss.sahibganj.entities.Admin;

public class AdminDaoClass {
	private static Connection con;

	public AdminDaoClass(Connection con) {
		super();
		// TODO Auto-generated constructor stub
		this.con = con;
	}
	public AdminDaoClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	public Admin AlumniId(String AlumniId) {
		Admin admin = null;
		try {
			String qry = "SELECT * FROM `alumni` WHERE alumniId = ?";
			PreparedStatement ps = con.prepareStatement(qry);
			ps.setString(1, AlumniId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				admin = new Admin();
				admin.setAlumniId(rs.getString("alumniId"));
				admin.setAname(rs.getString("name"));
				admin.setAemail(rs.getString("email"));
				admin.setAmobile(rs.getString("mobile"));
				admin.setAdeptt(rs.getString("deptt"));
				admin.setAnssunit(rs.getString("nssunit"));
				admin.setAgender(rs.getString("gender"));
				admin.setAbg(rs.getString("bg"));
				admin.setAprofile(rs.getString("profile"));
			} else {
				System.out.println("Dao Error");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return null;
		
		
	}
}
