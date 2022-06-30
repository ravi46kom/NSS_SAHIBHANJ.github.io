package com.nss.sahibganj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nss.sahibganj.entities.Admin;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;

public class AdminDao {
	private static Connection con;

	public AdminDao(Connection con) {
		super();
		this.con = con;
	}

	public AdminDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	// Alumni data fetching
	public Admin AlumniId(String alumniId) {
		Admin admin = null;

		try {

			String qry = "SELECT * FROM `alumni` WHERE alumniId = ?";

			PreparedStatement ps = con.prepareStatement(qry);
			ps.setString(1, alumniId);
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
				System.out.println("Admin Dao error");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return admin;

	}

//Display All User
	public static List<User> getAllStudent() {
		List<User> list = new ArrayList<User>();

		try {
			String qry = "SELECT * FROM `ragistration`";
			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			PreparedStatement ps = con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User e = new User();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setMobile(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setDeptt(rs.getString(5));
				e.setCsession(rs.getString(6));
				e.setNssunit(rs.getString(7));
				e.setGender(rs.getString(8));
				e.setBg(rs.getString(9));
				e.setPassword(rs.getString(10));
				e.setProfile(rs.getString(11));
				e.setDateTime(rs.getTimestamp(12));
				list.add(e);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public boolean updateUser1(User user) throws SQLException {
		boolean rowUpdated = false;
		try {
			String qry = "UPDATE `ragistration` SET `email`=?,`pas`=? WHERE `id`=?";
			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			ps.setInt(9, user.getId());
			rowUpdated = ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rowUpdated;
	}

}
