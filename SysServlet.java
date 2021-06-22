package next.xadmin.login.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import next.xadmin.login.bean.LoginBean;
import next.xadmin.login.database.Sysnopsis;

/**
 * Servlet implementation class SysServlet
 */
@WebServlet("/SysServlet")
public class SysServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SysServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sname = request.getParameter("sname");
		String sid = request.getParameter("sid");
		String title = request.getParameter("title");
		String ename = request.getParameter("ename");
		String eid = request.getParameter("eid");
		
		String suitability = request.getParameter("suitability");
		String originality = request.getParameter("originality");
		String introductory = request.getParameter("introductory");
		String probstmt = request.getParameter("probstmt");
		String redesign = request.getParameter("redesign");
		String relevance = request.getParameter("relevance");
		String language = request.getParameter("language");
		String quantumwork = request.getParameter("quantumwork");
		String references = request.getParameter("references");
		String overall = request.getParameter("overall");
		
		String accept = request.getParameter("accept");
		String minor = request.getParameter("minor");
		String major = request.getParameter("major");
		String reason = request.getParameter("reason");
		String comments = request.getParameter("comments");
		
		LoginBean loginBean = new LoginBean();
		
		loginBean.setSname(sname);
		loginBean.setSid(sid);
		loginBean.setTitle(title);
		loginBean.setEname(ename);
		loginBean.setEid(eid);
		
		loginBean.setSuitability(suitability);
		loginBean.setOriginality(originality);
		loginBean.setIntroductory(introductory);
		loginBean.setProbstmt(probstmt);
		loginBean.setRedesign(redesign);
		loginBean.setRelevance(relevance);
		loginBean.setLanguage(language);
		loginBean.setQuantumwork(quantumwork);
		loginBean.setReferences(references);
		loginBean.setOverall(overall);
		
		loginBean.setAccept(accept);
		loginBean.setMinor(minor);
		loginBean.setMajor(major);
		loginBean.setReasons(reason);
		loginBean.setComments(comments);
		
		Sysnopsis synopsis = new Sysnopsis();
		String result = synopsis.CreateSys(loginBean);
		
		if(result.equals("SUCCESS"))
		{
			//JOptionPane.showMessageDialog(null ,"Account Created");
			
			RequestDispatcher req = request.getRequestDispatcher("evalupload.jsp");
			req.include(request, response);
		}
		else 
		{
			RequestDispatcher req = request.getRequestDispatcher("Log.jsp");
			req.include(request, response);
		}
		
		
		//RequestDispatcher req = request.getRequestDispatcher("Prelogin.jsp");
		//req.include(request, response);
	}

}
