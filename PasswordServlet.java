package next.xadmin.login.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import next.xadmin.login.bean.LoginBean;
import next.xadmin.login.database.PasswordDao;

/**
 * Servlet implementation class PasswordServlet
 */
@WebServlet("/change")
public class PasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordServlet() {
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
		
		String id = request.getParameter("userid");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		
        LoginBean loginBean = new LoginBean();
		
		loginBean.setUserid(id);
		loginBean.setPassword1(password1);
		loginBean.setPassword2(password2);
		
		PasswordDao passDao = new PasswordDao();
		String result = passDao.changepass(loginBean);
		if(result.equals("SUCCESS"))
		{
			//JOptionPane.showMessageDialog(null ,"Account Created");
			
			RequestDispatcher req = request.getRequestDispatcher("ChangePassword.jsp");
			req.include(request, response);
		}
		else 
		{
			RequestDispatcher req = request.getRequestDispatcher("ChangePassword.jsp");
			req.include(request, response);
		}
		
	}

}
