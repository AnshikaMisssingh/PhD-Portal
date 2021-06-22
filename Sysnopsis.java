package next.xadmin.login.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import next.xadmin.login.bean.LoginBean;
import next.xadmin.login.util.DBConnection;

public class Sysnopsis {
	
	public String CreateSys(LoginBean loginBean)
	{
		
		String sname = loginBean.getSname();
		String sid = loginBean.getSid();
		String title = loginBean.getTitle();
		String ename = loginBean.getEname();
		String eid = loginBean.getEid();
		
		String suitability = loginBean.getSuitability();
		String originality = loginBean.getOriginality();
		String introductory = loginBean.getIntroductory();
		String probstmt = loginBean.getProbstmt();
		String redesign = loginBean.getRedesign();
		String relevance = loginBean.getRelevance();
		String language = loginBean.getLanguage();
		String quantumwork = loginBean.getQuantumwork();
		String references = loginBean.getReferences();
		String overall = loginBean.getOverall();
		
		String accept = loginBean.getAccept();
		String minor = loginBean.getMinor();
		String major = loginBean.getMajor();
		String reason = loginBean.getReasons();
		String comments = loginBean.getComments();
		
		Connection conn = null;
		String r = "SUCCESS";
		int result = 0;
		
		conn = DBConnection.createConnection();
		
		String sql = "INSERT INTO SYS_EVAL(STUDENT_NAME, STUDENT_ID, PROJECT_NAME, EVALUATOR_NAME, EVALUATOR_ID, SUITABILITY_SCORE, ORIGINALITY_SCORE, INTRO_BCKGRND_SCORE, PROBLEM_STMT_SCORE, DESIGN_METHOD_SCORE, RELEVANCY_SCORE, LANGUAGE_SCORE, QUANTUM_OF_WORK_SCORE, REFERENCE_SCORE, OVERALL_SCORE, ACCEPT_WORD, MINOR_REVISION, MAJOR_REVISION, REASONS, COMMENTS) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, sname);
			preparedStatement.setString(2, sid);
			preparedStatement.setString(3, title);
			preparedStatement.setString(4, ename);
			preparedStatement.setString(5, eid);
			preparedStatement.setString(6, suitability);
			preparedStatement.setString(7, originality);
			preparedStatement.setString(8, introductory);
			preparedStatement.setString(9, probstmt);
			preparedStatement.setString(10, redesign);
			preparedStatement.setString(11, relevance);
			preparedStatement.setString(12, language);
			preparedStatement.setString(13, quantumwork);
			preparedStatement.setString(14, references);
			preparedStatement.setString(15, overall);
			preparedStatement.setString(16, accept);
			preparedStatement.setString(17, minor);
			preparedStatement.setString(18, major);
			preparedStatement.setString(19, reason);
			preparedStatement.setString(20, comments);
			
			result = preparedStatement.executeUpdate();
			
			if(result!=0)  
			{
				return "SUCCESS";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return r;
	}

}
