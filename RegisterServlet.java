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

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname= request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String passwrd=request.getParameter("password");
		String password1=request.getParameter("password1");
		String cno=request.getParameter("cno");
		String add=request.getParameter("add");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		HttpSession session=request.getSession();
	    String driver="com.ibm.db2.jcc.DB2Driver";
		String url="jdbc:db2://localhost:50000/ideajam";
		String username="rohith";
		String password="12bk1a05A1";
		String sql="insert into register(fname,lname,email,uname,passwrd,cno,addr,dob,gender,state,city)values(?,?,?,?,?,?,?,?,?,?,?)";
		String sql1="insert into login(loginid,password)values(?,?)";
		String sql2="select loginid from login where loginid=?";
		String sql3="insert into useridea(name1)values(?)";
		if(fname.equals("")||lname.equals("")||cno.equals("")||add.equals("")||state.equals("")||city.equals("")||email.equals("")||passwrd.equals("")||password1.equals("")||dob.equals(""))
		{
			String message="All Fields Are Mandatory";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/reg2.jsp").include(request, response);
		}
		else 
		{
			try
			{
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, username, password);
			PreparedStatement ps2=con.prepareStatement(sql2);
			ps2.setString(1, email);
			ResultSet rs=ps2.executeQuery();
			if(rs.next())
			{
				session.setAttribute("fname", fname);
				session.setAttribute("lname", lname);
				session.setAttribute("contact", cno);
				session.setAttribute("address", add);
				session.setAttribute("dob", dob);
				
				String message="Userid Exist! Please enter another emailid!!";
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
				ps.setString(3, email);
				ps.setString(4, uname);
				ps.setString(5, passwrd);
				ps.setString(6, cno);
				ps.setString(7, add);
				ps.setString(8, dob);
				ps.setString(9, gender);
				ps.setString(10, state);
				ps.setString(11, city);
				int i=ps.executeUpdate();
			PreparedStatement ps1=conn.prepareStatement(sql1);//login
				ps1.setString(1, uname);
				ps1.setString(2, passwrd);
				int j=ps1.executeUpdate();
				PreparedStatement ps3=con.prepareStatement(sql3);
				ps3.setString(1, uname);
				int k=ps3.executeUpdate();
				if(i!=0&&j!=0&&k!=0)
				{
					getServletContext().getRequestDispatcher("/userlogin.jsp").forward(request, response);
				}
				else
				{
					session.setAttribute("fname", fname);
					session.setAttribute("lname", lname);
					session.setAttribute("contact", cno);
					session.setAttribute("address", add);
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
			session.setAttribute("contact", cno);
			session.setAttribute("address", add);
			session.setAttribute("dob", dob);
			String message="Please enter the same password";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/reg2.jsp").include(request, response);
		}
	
	
	
	}
			catch(Exception e)
			{
				e.printStackTrace();
			}
}

	}
	
}

