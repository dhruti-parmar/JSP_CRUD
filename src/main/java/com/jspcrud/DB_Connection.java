package com.jspcrud;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {

	public static void main(String args[]) {
		DB_Connection db_conn = new DB_Connection();
		System.out.println(db_conn.get_connection());
	}

	public Connection get_connection() {

		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_crud","root","Root");
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}

}
