package next.xadmin.login.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import next.xadmin.login.bean.LoginBean;
import next.xadmin.login.util.DBConnection;

public class SynopsisView {
	
	public boolean check(LoginBean loginBean)
	{
		
		String UserId = loginBean.getUserid();
		
		Connection conn = null;
		boolean status = false;
		
		
		
		
		conn = DBConnection.createConnection();
		try {
			String sql = "SELECT * FROM SYS_EVAL WHERE STUDENT_ID = ?";
			PreparedStatement ps;
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, loginBean.getUserid());
				
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return status;
		
	}

}
