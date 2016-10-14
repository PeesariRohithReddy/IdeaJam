<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<link href="css1/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		<!--//webfonts-->
</head>
 
<body>
	<div class="main">
		<form action="AdminServlet" method="get">
    		<h1><span>Admin</span> <lable> Login </lable> </h1>
  			<div class="inset">
	  			<p>
	    		 <label for="email" >USERNAME</label>
   	 			<input type="text" name="loginid" placeholder="enter username" required/>
				</p>
  				<p>
				    <label for="password">PASSWORD</label>
				    <input type="password" name="password" placeholder="enter password" required/>
  				</p>
				  
 			 </div>
 	 
			  <p class="p-container">
			    <input type="submit" value="Login">
			    
			    <span><a href="#">Forgot password ?</a></span>
			    
			  </p>
			  
					
		</form>
		<h3>${msg}</h3>
	</div>  
			
</body>
</html>