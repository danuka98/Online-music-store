<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Home.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/ContactUs.css"/>
<title>Contact Us</title>
</head>
<body>
<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>

	
	<ul id ="navigation">
		<li class = "navibutton"><a href ="Home.jsp" class = "navibutton" >Home</a></li>
		<li class = "navibutton"><a href ="Genres.jsp" class = "navibutton">Genres</a></li>
		<li class = "navibutton"><a href ="ContactUs.jsp" class = "navibutton" id = "active">Contact Us</a></li>
		<li class = "navibutton"><a href ="AboutUs.jsp" class = "navibutton" >About Us</a></li>
		
		<div class = "dropdown">
			<button class = "dropbtn">Account</button>
				<div class = "dropContent">
					<a href = "#">View details</a>
					<a href = "UserLogin.jsp">Sign out</a>
				</div>
	    </div>
	    
	    <div class = "search">
	    	<input type ="text" placeholder = "Search.." name = "search">
	    	<button type = "submit">Search</button>
	    </div>
		
	</ul>
	
	<br><br><br><br>
	
	 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.798511757686!2d79.97075581515071!3d6.914677495003862!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae256db1a6771c5%3A0x2c63e344ab9a7536!2sSri%20Lanka%20Institute%20of%20Information%20Technology!5e0!3m2!1sen!2slk!4v1588311314461!5m2!1sen!2slk" width="1300" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>


	<br><br><br>
	
		<form action="contact" method="post">
		    <div class="container1">
			  
				  <div class="row">
				    <div class="col-25">
				      <label for="fname">First Name</label>
				    </div>
				    <div class="col-75">
					      <input type="text" id="fname" name="firstname" placeholder="Your name.. " required>
				    </div>
				  </div>
				  <div class="row">
				    <div class="col-25">
				      <label for="lname">Last Name</label>
				    </div>
				    <div class="col-75">
				      <input type="text" id="lname" name="lastname" placeholder="Your last name.." required>
				    </div>
				  </div>
				  <div class="row">
				    <div class="col-25">
				      <label for="lname">Email</label>
				    </div>
				    <div class="col-75">
				      <input type="text" id="lname" name="email" placeholder="Your Email.." required>
				    </div>
				  </div>
				  <div class="row">
				    <div class="col-25">
				      <label for="subject">Subject</label>
				    </div>
				    <div class="col-75">
				      <textarea id="subject" name="description" placeholder="Write something.." style="height:200px" required></textarea>
				    </div>
				  </div><br>
				  <div class="row">
				    <input type="submit" value="Submit">
				  </div>
			  
			</div>
    </form>
		
		<br><br><br><br>
	
	<footer class="footer-distributed">
 
		<div class="footer-left">
 
		<h3>Music<span>Store</span></h3>
 
		<p class="footer-links">
		<a href="Home.jsp">Home</a>
	·
		<a href="AboutUs.jsp">About us</a>
	·
		<a href="ContactUs.jsp">Contact us</a>
	·

		</p>
 
		<p class="footer-company-name">Music Store &copy; 2020</p>
		</div>
 
		<div class="footer-center">
 
		<div>
		<i class="fa fa-map-marker"></i>
		<p><span>Malabe road,Kollupitiya</span> Malabe,Sri Lanka</p>
		</div>
 
		<div>
		<i class="fa fa-phone"></i>
		<p>+94 10523 7854</p>
		</div>
 
		<div>
		<i class="fa fa-envelope"></i>
		<p><a href="#">contact@musicstore.com</a></p>
		</div>
 
		</div>
 
		<div class="footer-right">
 
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
 
		</div>
 
		</footer>
	
     
	
	
	

</body>
</html>