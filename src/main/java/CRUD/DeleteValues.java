package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jspcrud.DB_Connection;
import com.jspcrud.UserBean;

public class DeleteValues {
	public void delete_value(int sl_no) {
		DB_Connection db_conn = new DB_Connection();
		Connection conn = db_conn.get_connection();
		
		PreparedStatement ps = null;
		
		try {
			String query = "delete from user where sl_no=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, sl_no);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
	
}
