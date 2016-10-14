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

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname= request.getParameter("fname");
		String lname=request.getParameter("lname");
		String contact=request.getParameter("cno");
		String address=request.getParameter("add");
		
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String uname=request.getParameter("uname");
		String passwrd=request.getParameter("password");
		String password1=request.getParameter("password1");
		String dob=request.getParameter("dob");
		String driver="com.ibm.db2.jcc.DB2Driver";
		String url="jdbc:db2://localhost:50000/ideajam";
		String username="rohith";
		String password="12bk1a05A1";
		HttpSession session=request.getSession();
		String sql="update register set(fname,lname,cno,addr,state,city,passwrd,dob)=(?,?,?,?,?,?,?,?)where uname=?";
		String sql1="update login set(password)=(?)where loginid=?";
		
		
		
		if(fname.equals("")||lname.equals("")||contact.equals("")||address.equals("")||state.equals("")||city.equals("")||uname.equals("")||passwrd.equals("")||password1.equals("")||dob.equals(""))
		{
			String message="All Fields Are Mandatory";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/reg2.jsp").include(request, response);
		}
			
		else if(passwrd.equals(password1))
		{
			try
			{
				Class.forName(driver);
				Connection conn=DriverManager.getConnection(url, username, password);
				PreparedStatement ps=conn.prepareStatement(sql);// register
				ps.setString(1, fname);
				ps.setString(2, lname);
				ps.setString(3, contact);
				ps.setString(4, address);
			
				ps.setString(5, state);
				ps.setString(6, city);
				ps.setString(7, passwrd);
				ps.setString(8, dob);
				ps.setString(9, uname);
				int i=ps.executeUpdate();
			PreparedStatement ps1=conn.prepareStatement(sql1);//login
				ps1.setString(1, passwrd);
				ps1.setString(2, uname);
				int j=ps1.executeUpdate();
				if(i!=0&&j!=0)
				{
					getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
				}
				else
				{
					session.setAttribute("fname", fname);
					session.setAttribute("lname", lname);
					session.setAttribute("cno", contact);
					session.setAttribute("add", address);
					session.setAttribute("dob", dob);
					String message="Please Try Again";
					request.setAttribute("msg", message);
					getServletContext().getRequestDispatcher("/reg2.jsp").include(request, response);
				}
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			session.setAttribute("fname", fname);
			session.setAttribute("lname", lname);
			session.setAttribute("cno", contact);
			session.setAttribute("add", address);
			session.setAttribute("dob", dob);
			String message="Please enter the same password";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/reg2.jsp").include(request, response);
		}
	
		
			
	
	}

	
	
}

