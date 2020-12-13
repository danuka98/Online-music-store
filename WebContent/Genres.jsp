<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Home.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/albums.css"/>
<title>Genres</title>
</head>
<body>
<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>

	
	<ul id ="navigation">
		<li class = "navibutton"><a href ="Home.jsp" class = "navibutton" >Home</a></li>
		<li class = "navibutton"><a href ="Genres.jsp" class = "navibutton" id = "active">Genres</a></li>
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
	    <br>
	    
	    
	  <table width="70%" align="center" style="margin-top: 32px;">
            <tr>
                <td width="33.333%">
                    <fieldset class="subfieldset" id="rock"><a class="subfieldset" id="genre" href="rock.jsp">
                        Rock
                    </a></fieldset>
                </td>
                <td>
                    <fieldset class="subfieldset" id="Classical"><a class="subfieldset" id="genre" href="">
                        Classical
                    </a></fieldset>
                </td>
                <td width="33.333%">
                    <fieldset class="subfieldset" id="jazz"><a class="subfieldset" id="genre" href="">
                        Jazz
                    </a></fieldset>
                </td>    
            </tr>
            <tr>
                <td>
                    <fieldset class="subfieldset" id="pop"><a class="subfieldset" id="genre" href="">
                        Pop
                    </a></fieldset>
                </td>
                <td>
                    <fieldset class="subfieldset" id="hiphop"><a class="subfieldset" id="genre" href="">
                        Hip-Hop
                    </a></fieldset>
                </td>
                <td>
                    <fieldset class="subfieldset" id="edm"><a class="subfieldset" id="genre" href="">
                        EDM
                    </a></fieldset>
                </td>
            </tr>
        </table>


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