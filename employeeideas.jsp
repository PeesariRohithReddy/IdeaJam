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
<%  
response.setHeader("Pragma","no-cache");  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Expires","0");  
response.setDateHeader("Expires",-1);  
%>
<title>The Ideation center | Home :: Team8</title>
<meta charset="utf-8">
   
    <link href='stylet.css' rel='stylesheet' type='text/css' media='screen' />

<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="text/javascript" src="js/jquery.min.js"></script>
	 	<!---strat-slider---->
	    <link rel="stylesheet" type="text/css" href="css/slider1.css" />
		<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="js/jquery.cslider.js"></script>
			<script type="text/javascript">
				$(function() {
				
					$('#da-slider').cslider({
						autoplay	: true,
						bgincrement	: 450
					});
				
				});
			</script>
		<!---//strat-slider---->
		 <!-- scroll -->
		 <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		 <!-- //scroll -->

</head>
<body>
	<body>
	<!-- start slider -->
<div class="slider_bg">
			<!-- start header -->
		
	<div class="wrap">
			<div class="header">
			<h1>Welcome ${loginid}</h1>	
		<!-- start top-nav-->
		<div class="h_right">
		
			<ul class="menu">		
				<li class="active"><a  href="adminp.jsp">Home</a></li>
			
				
				<li><a href="employeeideas.jsp">Employee Ideas</a></li>
				
				<li><a href="posts.jsp">Posts</a></li>
				<li><a href="index.jsp">Logout</a></li>
				
			</ul>			
			<!-- start smart_nav * -->
	        <nav class="nav">
	            <ul class="nav-list">
	            	
	                <li class="nav-item"><a  href="#home">Home</a></li>
	                <li class="nav-item"><a href="#services" class="scroll">Blog</a></li>           
	                <li class="nav-item"><a href="#about" class="scroll">About</a></li>
	                <li class="nav-item"><a href="index.jsp"  class="scroll">Logout</a></li>
	                <li class="nav-item"><a href="#contact"  class="scroll">Contact</a></li>
	               
	                
	                <div class="clear"></div>
	            </ul>
	        </nav>
	        <script type="text/javascript" src="js/responsive.menu.js"></script>
			<!-- end smart_nav * -->
		</div>
		<div class="clear"></div>

			</div>
			</div>
			<!---//End-header--->
<!-- start main -->
				
<div>
							<!--  start product-table ..................................................................................... -->
				<form id="mainform" action="">
				<table>
		<tr>
			<th id="bgtitle">Username</th>
			<th id="bgtitle"> Idea </th>
		</tr>
		
		<c:forEach items="${table.rows}" var="r">
		<tr>
			
			                <td>${r.name1}</td>
					<td>${r.idea}</td>
					
					
		</tr>
		</c:forEach>
		
	</table>
				
				
				
				<!--  end product-table................................... --> 
				</form>
			</div>

	
   		 


</body>
</html>