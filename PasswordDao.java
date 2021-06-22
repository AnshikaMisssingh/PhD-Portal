package next.xadmin.login.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import next.xadmin.login.bean.LoginBean;
import next.xadmin.login.util.DBConnection;

public class PasswordDao {
	
	public String changepass(LoginBean loginBean) {
		
		String userid = loginBean.getUserid();
		String password1 = loginBean.getPassword1();
		String password2 = loginBean.getPassword2();
		
		Connection conn = null;
		String r = "FAIL";
		int result = 0;
		
		if(password1.equals(password2))
		{
			conn = DBConnection.createConnection();
			String sql = "UPDATE LOGIN SET PASSWORD = ? WHERE USER_ID = ?";
			try {
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1, password2);
				stmt.setString(2, userid);
				
				result = stmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			if(result!=0)  
			{
				return "SUCCESS";
			}
		}
		
		
		return r;
		
	}

}
