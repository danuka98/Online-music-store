<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Home.css"/>
<title>About us</title>
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
		<li class = "navibutton"><a href ="ContactUs.jsp" class = "navibutton">Contact Us</a></li>
		<li class = "navibutton"><a href ="AboutUs.jsp" class = "navibutton" id = "active">About Us</a></li>
		
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
	<br><br>
	 <fieldset id="aboutus">
            <h1 align="center">Our Mission</h1>
            <h3 align="left">To provide music fans, a place to enjoy their favourite music, support their favourite artists and discover new music with ease</h3>
            <p>This project is about an online music store. We will be focusing on a website that is used to sell digital music files.
             The users will be able to make an online payment and own digital copies of music.
              The purchased music will then be displayed on the users personal library. 
              From there, they can either stream the files through the browser or download them to their devices for offline usage.
               The users will be able to purchase music as either single tracks or full albums. If they purchase an album,
                they will be able to request for a physical copy of that album, and it will be delivered by mail, if available.
                 The website will have profile pages for all the available artists. 
                 Sales reports will be kept for each artist and they will be displayed on the profile page of the relevant artist. 
                 Our website will provide a wide range of music genres, styles to choose from; ranging from rock, metal, jazz and classical to pop,
                  hip-hop and EDM. The artists and albums will be categorised by genre.
                   The users will be able to search music by artist, track title or album title.
                    Additionally, they can discover more artists belonging to a specific genre by browsing the genre category section. 
                    That user will then be able to see those recommendations on the personal library page.
                     We expect users with various music tastes ranging from average pop fans to enthusiastic classical and jazz fans.
                      We intend to keep the user interface as simple as possible to suite all types of users. .</p>
     </fieldset>
	
	
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