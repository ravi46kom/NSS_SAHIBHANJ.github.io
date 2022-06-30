package com.nss.sahibganj.dao;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;

public class UserDao {
	private static Connection con;

	public UserDao(Connection con) {
		super();
		con = ConnectionProvider.getConnection();
		this.con = con;
	}

	public UserDao() {
		// TODO Auto-generated constructor stub
	}

	// Add User
	public boolean saveUser(User user) {
		boolean f = false;
		try {

			String qry = "INSERT INTO `ragistration` (`name`, `mobile`, `email`, `deptt`, `session`, `nssunit`, `gender`, `bg`, `pas`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) ";
			
			
			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setString(1, user.getName());
			ps.setString(2, user.getMobile());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getDeptt());
			ps.setString(5, user.getCsession());
			ps.setString(6, user.getNssunit());
			ps.setString(7, user.getGender());
			ps.setString(8, user.getBg());
			ps.setString(9, user.getPassword());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}

// Select User or login
	public User GetUserByEmailAndPass(String email, String password) {
		User user = null;

		try {

			String qry = "select * from ragistration where email = ? and pas = ?";

			PreparedStatement ps = con.prepareStatement(qry);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
// Fetchig Data
				user = new User();

				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setDeptt(rs.getString("deptt"));
				user.setCsession(rs.getString("session"));
				user.setNssunit(rs.getString("nssunit"));
				user.setBg(rs.getString("bg"));
				user.setGender(rs.getString("gender"));
				user.setId(rs.getInt("id"));
				user.setProfile(rs.getString("profile"));
				user.setDateTime(rs.getTimestamp("ragtime"));

			} else {
				System.out.println("error");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;

	}

// udpdate user
	public boolean updateUser(User user) {
		boolean f = false;
		try {

			String qry = "UPDATE `ragistration` SET `name`=?,`mobile`=?,`deptt`=?,`session`=?,`nssunit`=?,`gender`=?,`bg`=?,`profile`=? WHERE `id`=?";
			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setString(1, user.getName());
			ps.setString(2, user.getMobile());
			ps.setString(3, user.getDeptt());
			ps.setString(4, user.getCsession());
			ps.setString(5, user.getNssunit());
			ps.setString(6, user.getGender());
			ps.setString(7, user.getBg());
			ps.setString(8, user.getProfile());
			ps.setInt(9, user.getId());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}

	// Select User By id
	public User selectUser(int id) {
		User user = null;
		try {

			String qry = "SELECT * FROM `ragistration` `id``name``mobile``email``deptt``session``nssunit``gender``bg``profile``ragtime` WHERE `id` = ?";
			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setInt(1, id);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String name = rs.getString("");
				String mobile = rs.getString("mobile");
				String email = rs.getString("email");
				String deptt = rs.getString("deptt");
				String csession = rs.getString("session");
				String nssunit = rs.getString("nssunit");
				String gender = rs.getString("gender");
				String bg = rs.getString("bg");
				String profile = rs.getString("profile");
				java.sql.Timestamp dateTime = rs.getTimestamp("ragtime");
				user = new User(id, name, mobile, email, deptt, csession, nssunit, gender, bg, profile, dateTime);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return user;
	}

	/*
	 * 
	 * 
	 * 
	 * 
	 * public static List<User> getStudents() { List<User> list = new
	 * ArrayList<User>(); try { String qry = "SELECT * FROM `ragistration`";
	 * 
	 * PreparedStatement ps = con.prepareStatement(qry); ResultSet rs =
	 * ps.executeQuery(); while (rs.next()) { int id = rs.getInt("id"); String name
	 * = rs.getString(""); String mobile = rs.getString("mobile"); String email =
	 * rs.getString("email"); String deptt = rs.getString("deptt"); String csession
	 * = rs.getString("session"); String nssunit = rs.getString("nssunit"); String
	 * gender = rs.getString("gender"); String bg = rs.getString("bg"); String
	 * profile = rs.getString("profile"); java.sql.Timestamp dateTime =
	 * rs.getTimestamp("ragtime"); list.add(new User(id, name, mobile, email, deptt,
	 * csession, nssunit, gender, bg, profile, dateTime)); } } catch (SQLException
	 * e) { e.printStackTrace(); }
	 * 
	 * return list; }
	 */

	public static int deleteUser(User u) throws SQLException {
		int status = 0;
		try {
			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			String qry = "DELETE FROM `ragistration` WHERE `id` = ?";
			PreparedStatement ps = con.prepareStatement(qry);
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// test
	public void removeUser(int userId) {
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		try {
			String sql = "DELETE FROM `ragistration` WHERE `id`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.executeUpdate();
			System.out.println(userId);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void editUser(User userBean) {
		try {
			String sql = "UPDATE `ragistration` SET `name`=? `mobile`=? WHERE `id`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userBean.getName());
			ps.setString(2, userBean.getMobile());
			ps.setInt(3, userBean.getId());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		try {
			String sql = "SELECT * FROM `ragistration`";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User userBean = new User();
				userBean.setId(rs.getInt("id"));
				userBean.setName(rs.getString("name"));
				userBean.setMobile(rs.getString("mobile"));
				users.add(userBean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	public User getUserById(int userId) {
		User user = new User();
		try {
			String sql = "SELECT * FROM `ragistration`WHERE `id`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setMobile(rs.getString("mobile"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

}
