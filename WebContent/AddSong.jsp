<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Admin.css"/>
<title>Add Song</title>
</head>
<body>


<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>
	<a href = "Adminlogin.jsp"><button class = "button">Log out</button></a>
	<hr>
	
	<!--SideBar  -->
	
	<div class = "sidebar">
		<a href = "Admin.jsp">Trending List</a>
		<a href = "MostPopular.jsp">Most Popular List</a>
		<a href = "AddSong.jsp">Songs List</a>
		<a href = "AdminUserAccounts.jsp">Accounts</a>
		<hr>
		<a href = "AdminTrendingDetails.jsp">Trending Details</a>
		<a href = "AdminMostPopularDetails.jsp">Most Popular Details</a>
		<a href = "AdminMessage.jsp">Messages</a>
	</div>
	
	
	<!--upload songs  -->
	
	<div class = "trending">
		<h3 class = "head">Upload songs</h3>
		<form method = "post" action="add">
		
			Artist Name:
			<input type = "text" name = "ArtistName"><br><br>
			Song Name:
			<input type = "text" name = "songName"><br><br>
			Upload Photo:
			<input type = "file" name = "songPhoto"><br><br>
			Upload Audio File:
			<input type = "file" name = "audio"><br><br> 
		
			<input type = "submit" name = "submit" value = "save">
		</form>
	</div>
</body>
</html>