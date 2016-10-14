<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource url="jdbc:db2://localhost:50000/ideajam" driver="com.ibm.db2.jcc.DB2Driver" user="rohith" password="12bk1a05A1" var="db"/>
    <sql:query  dataSource="${db}" var="table">
    select * from useridea
    </sql:query>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css2/style.css" rel="stylesheet" type="text/css"  media="all" />
</head>
<%
try
{
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/ideajam", "rohith", "12bk1a05A1");
String uname=(String)session.getAttribute("loginid");
String sql="select * from useridea where name1=?";

PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, uname);
ResultSet rs=ps.executeQuery();


%>
<body>
<%
while(rs.next())
{ 
%>
<div class="wrap">
	<div class="header">
	
        <div class="nav">
            <ul>
                          
            
              <li><a href="profile.jsp"> Profile </a></li>
            </ul>
        </div>
       <div class="clear"></div>
    </div>
    <div class="sidebar">
    	<h2> IDEATION CENTRE </h2>
    	<div style="height:500px;width:650px;border:solid 2px #FED136;overflow:scroll;overflow-x:hidden;overflow-y:scroll;">
    	<c:forEach items="${table.rows}" var="r">
        <ul type="square" style="margin:10px;">
        <li><lable style="color:#FED136;">Employee Name : </lable><%=uname %><br><br> <label style="color:#FED136;">Idea : </label>${r.idea} <br>
        <!-- LikeBtn.com BEGIN -->
<span class="likebtn-wrapper" data-show_dislike_label="true" data-popup_enabled="false" data-popup_hide_on_outside_click="false" data-show_copyright="false" data-share_enabled="false"></span>
<script type="text/javascript" src="http://w.likebtn.com/js/w/widget.js" async="async"></script>
<!-- LikeBtn.com END --></li>  
 
  </ul>
        </c:forEach>     
        
    
    </div>
   </div>
    <div class="content">
 
    	<h1>Your idea</h1>
		<font color="black"> <%=rs.getString("idea")%></font>
		
	</div>
	 <div class="clear"></div>	

 </div> 
    
<div class="footer">
    
 </div>        

<%
}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>   

</body>
</html>