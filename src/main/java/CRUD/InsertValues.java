package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jspcrud.DB_Connection;

public class InsertValues {

	public void insertValues(String user_name, String email,String mobile) {
		DB_Connection db_conn = new DB_Connection();
		Connection conn = db_conn.get_connection();

		PreparedStatement ps = null;

		try {
			String query = "insert into user(user_name,email, mobile) values(?,?,?)";
			ps = conn.prepareStatement(query);
			ps.setString(1, user_name);
			ps.setString(2, email);
			ps.setString(3, mobile);

			ps.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}
