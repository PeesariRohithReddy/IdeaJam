<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="text/javascript" src="js/jquery.min.js"></script>
	 	<!---strat-slider---->
	    <link rel="stylesheet" type="text/css" href="css/slider2.css" />
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
				
		<!-- start top-nav-->
		<div class="h_right">
			<ul class="menu">		
				<li><a href="adminp.jsp" class="scroll">Back</a></li>
				
				
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
			<br><br>
			
		
 		</div>

		  <form action="TopicServlet" method="post">
             <div class="services" id="services">
		  	<div class="wrap">
		  		<h3>Welcome ${loginid}</h3>
		  		<p class="a">Post your Topic here</p>
				<div class="form">
			
					 
				     <div class="form-text">
					  Post Your Topic
						
					</div>
				     <textarea placeholder="Your Post" name="post" ></textarea>
						 
						 <div class="clear"> </div>
						 <br>
						 <br>
						 <input type="submit" value="Submit" >		
								 
				 </div>
   		   </div>
   		 </div>
   		</form>  	
   		 
 		
   		 
	
   		 
         <!----start-bottom-footer---->
				<div class="bottom-footer">
					<div class="wrap"> 
						<div class="bottom-footer-left">
							<p>&#169; Copyright 2014 Team8</a></p>
						</div>
						<div class="bottom-footer-center">
							<ul class="bottom-social-icons">
								<li><a class="bottom-twitter" href="#"> </a></li>
								<li><a class="bottom-facebook" href="#"> </a></li>
								<li><a class="bottom-pin" href="#"> </a></li>
								<div class="clear"> </div>
							</ul>
						</div>			  
						<div class="clear"> </div>
					</div>
				</div>
				<!----//End-bottom-footer---->
 


</body>
</html>