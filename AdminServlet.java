package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("loginid");
		String password=request.getParameter("password");
		if(userid.equals("")||password.equals(""))
		{
			String message="username or password cannot be empty";
			request.setAttribute("msg", message);
			//response.getWriter().write("Userid Or Password cannot be empty");
getServletContext().getRequestDispatcher("/adminlogin.jsp").include(request, response);
		}
		else if(userid.equals("admin")&&password.equals("admin"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("loginid", userid);
			getServletContext().getRequestDispatcher("/adminp.jsp").forward(request, response);
		}
		else
		{
			String message="Please enter correct username or password";
			request.setAttribute("msg", message);
			
		    getServletContext().getRequestDispatcher("/adminlogin.jsp").include(request, response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
