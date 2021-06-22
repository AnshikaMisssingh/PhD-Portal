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
import next.xadmin.login.database.Thesis;

/**
 * Servlet implementation class ThesisServlet
 */
@WebServlet("/ThesisServlet")
public class ThesisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThesisServlet() {
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
		
		String award = request.getParameter("award");
		String corrections = request.getParameter("corrections");
		String revise = request.getParameter("revise");
		String reject = request.getParameter("reject");
		
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
		
		loginBean.setAward(award);
		loginBean.setCorrections(corrections);
		loginBean.setRevise(revise);
		loginBean.setReject(reject);
		
		Thesis thesis = new Thesis();
		String result = thesis.CreateThesis(loginBean);
		
		if(result.equals("SUCCESS"))
		{
			//JOptionPane.showMessageDialog(null ,"Account Created");
			
			RequestDispatcher req = request.getRequestDispatcher("fillformthesis.jsp");
			req.include(request, response);
		}
		else 
		{
			RequestDispatcher req = request.getRequestDispatcher("Log.jsp");
			req.include(request, response);
		}
		
	}

}
