package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IdeaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public IdeaServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String idea=request.getParameter("idea");
		
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("loginid");
	    String driver="com.ibm.db2.jcc.DB2Driver";
		String url="jdbc:db2://localhost:50000/ideajam";
		String username="rohith";
		String password="12bk1a05A1";
		String sql="update useridea set(idea)=(?)where name1=?";
		
	
		
		
		{
			try
			{
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, username, password);
			PreparedStatement ps2=con.prepareStatement(sql);
			ps2.setString(1, idea);
			ps2.setString(2,userid);
			System.out.println(userid+idea);
			int i=ps2.executeUpdate();
			if(i!=0)
			{
			getServletContext().getRequestDispatcher("/idea.jsp").forward(request, response);
			}
			else
			{
				getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
			}
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
	
	
	
	
			
}

	}
	


