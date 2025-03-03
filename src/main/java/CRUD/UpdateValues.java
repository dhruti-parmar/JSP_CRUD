package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jspcrud.DB_Connection;
import com.jspcrud.UserBean;

public class UpdateValues {
	
	public UserBean getValue_user(int sl_no) {
		DB_Connection db_conn = new DB_Connection();
		Connection conn = db_conn.get_connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		UserBean ub = new UserBean();
		
		try {
			String query = "select * from user where sl_no=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, sl_no);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				
				ub.setSl_no(rs.getInt("sl_no"));
				ub.setUser_name(rs.getString("user_name"));
				ub.setMobile(rs.getString("mobile"));
				ub.setEmail(rs.getString("email"));
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		return ub;
	}
	
	public void update_user(UserBean ub) {
		DB_Connection db_conn = new DB_Connection();
		Connection conn = db_conn.get_connection();
		
		PreparedStatement ps = null;
		
		try {
			String query = "update user set user_name=?,mobile=?,email=? where sl_no=?";
			ps = conn.prepareStatement(query);
			
			ps.setString(1, ub.getUser_name());
			ps.setString(2, ub.getMobile());
			ps.setString(3, ub.getEmail());
			ps.setInt(4, ub.getSl_no());
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}
