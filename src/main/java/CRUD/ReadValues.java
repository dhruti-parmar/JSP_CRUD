package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jspcrud.DB_Connection;
import com.jspcrud.UserBean;

public class ReadValues {

	public List<UserBean> getValues() {
		DB_Connection db_conn = new DB_Connection();
		Connection conn = db_conn.get_connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<UserBean> list = new ArrayList<UserBean>();
		
		try {
			String query = "select * from user";
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				
				UserBean ub = new UserBean();
				
				System.out.println(rs.getString("sl_no"));
				System.out.println(rs.getString("user_name"));
				System.out.println(rs.getString("mobile"));
				System.out.println(rs.getString("email"));
				
				ub.setSl_no(rs.getInt("sl_no"));
				ub.setUser_name(rs.getString("user_name"));
				ub.setMobile(rs.getString("mobile"));
				ub.setEmail(rs.getString("email"));
				
				list.add(ub);
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
		
	}
	
	public static void main(String[] args) {
		ReadValues rv = new ReadValues();
		rv.getValues();
	}
}
