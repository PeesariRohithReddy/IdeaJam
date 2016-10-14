 package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("loginid");// textfield value
		String passwrd=request.getParameter("password");// textfield value
		String driver="com.ibm.db2.jcc.DB2Driver";
		String url="jdbc:db2://localhost:50000/ideajam";
		String username="rohith";// database connectivity username
		String password="12bk1a05A1";// database connectivity password 
		if(userid.equals("")||passwrd.equals(""))
		{
			//response.getWriter().write("Userid or Password cannot be empty");
			String message="userid or password cannot be empty";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/userlogin.jsp").include(request, response);
			
		}
		else 
			try
		{
				
			Class.forName(driver);
		Connection conn=DriverManager.getConnection(url, username, password);// database username and password
		PreparedStatement  ps=conn.prepareStatement("select * from login where loginid=? and password=?");
		ps.setString(1, userid);//  text field name
		ps.setString(2, passwrd);// text field password field
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			HttpSession session=request.getSession();
			session.setAttribute("loginid", userid);
			getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
		}
		else
		{
			String message="Please enter correct emailid or password";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/userlogin.jsp").include(request, response);
		}
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

}
