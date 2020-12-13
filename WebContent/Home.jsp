<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Home.css"/>
<title>Online Music Store</title>
</head>
<body>
	<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>

	
	<ul id ="navigation">
		<li class = "navibutton"><a href ="Home.jsp" class = "navibutton" id = "active">Home</a></li>
		<li class = "navibutton"><a href ="Genres.jsp" class = "navibutton">Genres</a></li>
		<li class = "navibutton"><a href ="ContactUs.jsp" class = "navibutton">Contact Us</a></li>
		<li class = "navibutton"><a href ="AboutUs.jsp" class = "navibutton">About Us</a></li>
		
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
	
	<!-- image slide show -->
	
	<div class ="slideshow">
		<div class ="slide">
			<img src="Images and css/1.jpg" id = "im"/>
		</div>
		<div class ="slide">
			<img src="Images and css/2.jpg" id = "im"/>
		</div>
		<div class ="slide">
			<img src="Images and css/3.jpg" id = "im"/>
		</div>
	</div>
	<br>
	<div style="text-align:center">
	    <span class="dot"></span> 
	    <span class="dot"></span> 
	    <span class="dot"></span> 
	</div>
	
	<br><br>
	
	<!-- retrieve data  -->
	
	<h2>Trending Song :</h2>
	<div class = "box">
		<div class ="row">
			<div class = "column">
				<div class ="card">
					<img src = "imgRetrive" class = "img1"/><br><br>
					<a href ="PlayMusic.jsp"><input type ="button" value = "play"></a>
					<a href = "play"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet2" class ="img1"/><br><br>
					<a href ="PlayMusic1.jsp"><input type ="button" value = "play"></a>
					<a href = "./PlayMusicServlet1"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet3" class ="img1"/><br><br>
					<a href ="PlayMusic2.jsp"><input type ="button" value = "play"></a>
					<a href = "play4"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet4" class ="img1"/><br><br>
					<a href ="PlayMusic3.jsp"><input type ="button" value = "play"></a>
					<a href = "play3"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet5" class ="img1"/><br><br>
					<a href ="PlayMusic4.jsp"><input type ="button" value = "play"></a>
					<a href = "play2"><input type ="button" value = "download"></a>
				</div>
			</div>
		</div>
	</div>
	<br><br>
	<h2>Most Popular Song :</h2>
	<div class = "box">
		<div class ="row">
			<div class = "column">
				<div class ="card">
					<img src = "imgRetrive" class = "img1"/><br><br>
					<a href ="PlayMusic.jsp"><input type ="button" value = "play"></a>
					<a href = "./PlayMusicServlet"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet2" class ="img1"/><br><br>
					<a href ="PlayMusic1.jsp"><input type ="button" value = "play"></a>
					<a href = "./PlayMusicServlet1"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet3" class ="img1"/><br><br>
					<a href ="PlayMusic2.jsp"><input type ="button" value = "play"></a>
					<a href = "./PlayMusicServlet4"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet4" class ="img1"/><br><br>
					<a href ="PlayMusic3.jsp"><input type ="button" value = "play"></a>
					<a href = "./PlayMusicServlet3"><input type ="button" value = "download"></a>
				</div>
			</div>
			<div class = "column">
				<div class ="card">
					<img src = "./ImageRetrivingServlet5" class ="img1"/><br><br>
					<a href ="PlayMusic4.jsp"><input type ="button" value = "play"></a>
					<a href = "./PlayMusicServlet2"><input type ="button" value = "download"></a>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- footer -->
	
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
	
	
	
	
	<script>
		var slideIndex = 0;
		showSlides();
		
		function showSlides() {
		  var i;
		  var slides = document.getElementsByClassName("slide");
		  var dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++) {
		    slides[i].style.display = "none";  
		  }
		  
		  slideIndex++;
		  if (slideIndex > slides.length) {
			  slideIndex = 1
		  }    
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 2000);
		}
	</script>
</body>
</html>