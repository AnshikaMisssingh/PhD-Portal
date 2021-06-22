package next.xadmin.login.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import next.xadmin.login.bean.LoginBean;
import next.xadmin.login.database.SynopsisView;

/**
 * Servlet implementation class SupervisorSys
 */
@WebServlet("/SupervisorSys")
public class SupervisorSys extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupervisorSys() {
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
		
		String userid = request.getParameter("sid");
		LoginBean loginBean = new LoginBean();
		loginBean.setUserid(userid);
		
		SynopsisView sysview = new SynopsisView();
		
		
		if(sysview.check(loginBean))
		{
			//System.out.println("logged in");
			RequestDispatcher req = request.getRequestDispatcher("viewsys.jsp");
			req.include(request, response);
			
		}
		
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("Supervisor.jsp");
			req.include(request, response);
		}
	}

}
