<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>The Ideation center | Home :: Team8</title>
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="text/javascript" src="js/jquery.min.js"></script>
	 	<!---strat-slider---->
	    <link rel="stylesheet" type="text/css" href="css/slider.css" />
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
				<li class="active"><a  href="#home">Home</a></li>
				<li><a href="#services" class="scroll">Blog</a></li>
				<li><a href="#about" class="scroll">About</a></li>
				<li class="last"><a href="#contact"  class="scroll">Contact</a></li>
				<li><a href="update.jsp">Update</a></li>
				<li><a href="ideationcenter.jsp">View Ideas</a></li>
				<li><a href="index.jsp">Logout</a></li>
				
			</ul>			
			<!-- start smart_nav * -->
	        <nav class="nav">
	            <ul class="nav-list">
	                <li class="nav-item"><a  href="#home">Home</a></li>
	                <li class="nav-item"><a href="#services" class="scroll">Blog</a></li>           
	                <li class="nav-item"><a href="#about" class="scroll">About</a></li>
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
				<!---start-da-slider----->
				<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<p>Welcome To Our ideation centre!</p>
					<h2>IT'S NICE TO MEET YOU</h2>
					<p class="a"><a href="#">TELL ME MORE</a></p>
				</div>
				<div class="da-slide">
					<p>Welcome To Our ideation centre!</p>
					<h2>IT'S NICE TO MEET YOU</h2>
					<p class="a"><a href="#">TELL ME MORE</a></p>
				</div>
				<div class="da-slide">
					<p>Welcome To Our ideation centre!</p>
					<h2>IT'S NICE TO MEET YOU</h2>
					<p class="a"><a href="#">TELL ME MORE</a></p>
				</div>
				<div class="da-slide">
					<p>Welcome To Our ideation centre!</p>
					<h2>IT'S NICE TO MEET YOU</h2>
					<p class="a"><a href="#">TELL ME MORE</a></p>
				</div>	
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
 			<!---//End-da-slider----->
 		</div>

		  <form action="IdeaServlet" method="post">
             <div class="services" id="services">
		  	<div class="wrap">
		  		<h3>Welcome ${loginid}</h3>
		  		<p class="a">Post your idea here</p>
				<div class="form">
				     <div class="form-text">
					  Post Your IDEAS
						
					</div>
				     <textarea placeholder="Your Message" name="idea" ></textarea>
						 
						 <div class="clear"> </div>
						 <br>
						 <br>
						 <input type="submit" value="Submit" >		
								 
				 </div>
   		   </div>
   		 </div>
   		</form>  	
   		 
 		
   		 <!---start-about---->
		  <div class="about" id="about">
		  	<div class="wrap">
		  		<h3>ABOUT</h3>
		  		<p class="a">Proin iaculis purus consequat sem cure.</p>
				<!---start-about-time-line---->
				<div class="about-time-line">
					<li>
							<div class="cbp_tmicon img1"> </div>
							<div class="cbp_tmlabel">
								<h2>JULY 2010</h2>
								<h2>Our Humble Beginnings</h2>
								<p>Proin iaculis purus consequat sem cure  digni ssim. Donec porttitora entum suscipit aenean rhoncus posuere odio in tincidunt. Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum suscipit.</p>
							</div>
					</li>
					<li>
							<div class="cbp_tmicon1 img2"> </div>
							<div class="cbp_tmlabel cbp_tmlabel1">
								<h2>JANUARY 2011</h2>
								<h2>Facing Startup Battles </h2>
								<p>Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum suscipit aenean rhoncus posuere odio in tincidunt. Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum suscipit aenean rhoncus posuere odio in tincidunt.</p>
							</div>
					</li><br />
					<li>
							<div class="cbp_tmicon2 img3"> </div>
							<div class="cbp_tmlabel">
								<h2>DECEMBER 2012</h2>
								<h2>Enter The Dark Days </h2>
								<p>Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum suscipit aenean rhoncus posuere odio in tincidunt. Proin iaculis purus consequat sem cure digni.</p>
							</div>
					</li>
					<li>
							<div class="cbp_tmicon3 img4"> </div>
							<div class="cbp_tmlabel cbp_tmlabel1">
								<h2>FEBRUARY 2014</h2>
								<h2>Our Triumph </h2>
								<p>Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum suscipit aenean rhoncus posuere odio in tincidunt. Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum suscipit aenean.</p>
							</div>
					</li>
					<li>
							<div class="cbp_tmicon4 img5"> </div>
					</li>
					<div class="clear"> </div>
   		   </div>
   		 </div>    
   		</div>
 			<!---//end-about---->     
           <!----start-team-members---->
				
				<!----//End-team-members----> 
				
								<script type="text/javascript">
								$(window).load(function() {
								    $(".flexiselDemo3").flexisel({
								        visibleItems: 5,
								        animationSpeed: 1000,
								        autoPlay: true,
								        autoPlaySpeed: 3000,            
								        pauseOnHover: true,
								        enableResponsiveBreakpoints: true,
								        responsiveBreakpoints: { 
								            portrait: { 
								                changePoint:480,
								                visibleItems: 1
								            }, 
								            landscape: { 
								                changePoint:640,
								                visibleItems: 2
								            },
								            tablet: { 
								                changePoint:768,
								                visibleItems: 3
								            }
								        }
								    });
								});
								</script>
						<!---->
				  <!---->
				  </div>				
			</div>
	<
   		  <div class="contact" id="contact">
		  	<div class="wrap">
		  		<h3>CONTACT US</h3>
		  		<p class="a">Proin iaculis purus consequat sem cure.</p>
				<div class="form">
				     <div class="form-text">
					    <input type="text" class="textbox" value="Your Name*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
						<input type="text" class="textbox" value="Your E-mail*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail';}">
						<input name="Website" type="text" class="Subject" value="Website" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Website';}">
					</div>
						 <textarea placeholder="Your Message"></textarea>
						 <div class="clear"> </div>
						 <br><br>
						 <input type="submit" value="SEND MESSAGE">		
						
				 </div>
   		   </div>
   		 </div>
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
								<li><a class="bottom-google" href="#"> </a></li>
								<div class="clear"> </div>
							</ul>
						</div>			  
						<div class="clear"> </div>
					</div>
				</div>
				<!----//End-bottom-footer---->
 


</body>
</html>