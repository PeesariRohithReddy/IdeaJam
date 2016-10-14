<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<html>
<head>
<title> sign up</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style3.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo3.css" media="all" />
    <script type="text/javascript" src="registervalidation.js"></script>
</head>
<body onload="document.reg2.fname.focus()">
<div class="container">
			<header>
				<h1><span>Sign Up</span>Ideation Center</h1>
            </header>       
      <div  class="form">
    		<form action="RegisterServlet" method="post" id="contactform" name="reg2" onsubmit="return formValidation()"> 
    			<p class="contact"></p> 
    			<input id="fname" name="fname" placeholder="First name" required="" tabindex="1" type="text" value="${fname}"> 
    			
    			<p class="contact"></p>
    			<input id="lname" name="lname" placeholder="last name" required="" tabindex="1" type="text" value="${lname}"> 
    			 
    			<p class="contact"></p> 
    			<input id="email" name="email" placeholder="email id" required="" type="text"> 
                
                <p class="contact"></p> 
    			<input id="uname" name="uname" placeholder="username" required="" tabindex="2" type="text"> 
    			 
                <p class="contact"></p> 
    			<input type="password" id="password" name="password" placeholder="password" required=""> 
                
                <p class="contact"></p> 
    			<input type="password" id="password1" name="password1" placeholder="retype password" required=""> 

 				<p class="contact"></p> 
    			<input id="cno" name="cno" placeholder="contact no." required="" tabindex="2" type="text" value="${contact}">
    			
    			 <p class="contact"></p> 
    			<input id="add" name="add" placeholder="address" required="" tabindex="2" type="text" value="${address}">
 				       		
        		 <p class="contact"></p>
    			<input type="date" name="dob" placeholder="enter D.O.B" required="" value="${dob}">
               
            <select class="select-style gender" name="gender">
            <option value="select">i am..</option>
            <option value="m">Male</option>
            <option value="f">Female</option>
            </select><br><br>
           
            <select class="select-style gender" name="state">
			<option value="default">select a state</option>
			<option value="DELHI">Delhi</option>
			<option value="ANDHRA PRADESH">Andhra pradesh</option>
			<option value="UTTAR PRADEH">Uttar pradesh</option>
			</select><br><br>
			<select class="select-style gender" name="city">
			<option value="default">select a city</option>
			<option value="Gurgaon">Gurgaon</option>
			<option value="Ambala">Ambala</option>
			<option value="Varanasi">Varanasi</option>
			<option value="Hyderabad">Hyderabad</option>
			<option value="Vishakapatnam">Vishakapatnam</option>
			<option value="Vijawada">Vijawada</option>
			</select><br><br>
            <p class="contact"></p> 
           <img src="http://localhost:8080/idea_jam/CaptchaServlet"><br><br> <input type="text" name=captcha placeholder="enter the captcha"><br><br>
        
           
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign Up" type="submit"> 	 
   </form> 
</div>      
</div>

</body>
</html>