package com.nss.sahibganj.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	private static Connection con;
	// variables
	final static String url = "jdbc:mysql://127.0.0.1:3307/nss";
	final static String user = "root";
	final static String password = "";

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			System.out.println("Connection Provider True");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("Connection Provider false");
		}
		return con;
	}

}