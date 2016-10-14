 <%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>update profile </title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style3.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo3.css" media="all" />
    <script type="text/javascript" src="registervalidation.js"></script>
</head>
<%
try
{
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/ideajam", "rohith", "12bk1a05A1");
String uname=(String)session.getAttribute("loginid");
String sql="select * from register where uname=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, uname);
ResultSet rs=ps.executeQuery();
%>

<body onload="document.reg2.fname.focus()">
<%
while(rs.next())
{

%>
<div class="container">
			<header>
				<h1><span>You Can Update here</span>${loginid}</h1>
            </header>       
      <div  class="form">
    		<form action="UpdateServlet" method="post" id="contactform" name="update" onsubmit="return formValidation()"> 
    			<p class="contact"></p> 
    			<input id="fname" name="fname" placeholder="First name" required="" tabindex="1" type="text" value="<%=rs.getString(1)%>"> 
    			
    			<p class="contact"></p>
    			<input id="lname" name="lname" placeholder="last name" required="" tabindex="1" type="text" value="<%=rs.getString(2)%>"> 
    			
    			<p class="contact"></p> <label><%=rs.getString(3)%></label>
    			<input id="email" name="email" placeholder="email id" required="" type="hidden"> 
                
                <p class="contact"></p> 
    			<input type="hidden" id="uname" name="uname" placeholder="username" required="" tabindex="2" type="text" value="<%=rs.getString(4)%>"> 
    			 
                <p class="contact"></p> 
    			<input type="password" id="password" name="password" placeholder="password" required="" value="<%=rs.getString(5)%>"> 
                
                <p class="contact"></p> 
    			<input type="password" id="password1" name="password1" placeholder="retype password" required="" value="<%=rs.getString(5)%>"> 
    			
  				<p class="contact"></p> 
    			<input id="cno" name="cno" placeholder="contact no." required="" tabindex="2" type="text" value="<%=rs.getString(6)%>">
    			
    			 <p class="contact"></p> 
    			<input id="add" name="add" placeholder="address" required="" tabindex="2" type="text" value="<%=rs.getString(7)%>">

				 <p class="contact"></p> 
    			<input type="date" name="dob" placeholder="enter D.O.B" required="" value="<%=rs.getString(8)%>">
    			
            <select class="select-style gender" name="state">
			<option value="default">select a state</option>
			<option value="<%=rs.getString(9)%>" disabled="disabled"><%=rs.getString(9)%></option>
			<option value="DELHI">Delhi</option>
			<option value="ANDHRA PRADESH">Telangana </option>
			<option value="UTTAR PRADEH">Andrapradesh</option>
			</select><br><br>
			<select class="select-style gender" name="city">
			<option value="default">select a city</option>
			<option value="<%=rs.getString(10)%>" disabled="disabled"><%=rs.getString(10)%></option>
			<option value="Gurgaon">Gurgaon</option>
			<option value="Ambala">Ambala</option>
			<option value="Varanasi">Varanasi</option>
			<option value="Hyderabad">Hyderabad</option>
			<option value="Vishakapatnam">Vishakapatnam</option>
			<option value="Vijawada">Vijawada</option>
			</select><br><br>
            <p class="contact"></p> 
           
           
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Update" type="submit"> 	 
   </form> 
   
   ${msg}
<%
}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>   
   
</div>      
</div>


</body>
</html>