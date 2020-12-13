<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Admin.css"/>
<title>Update most popular details</title>
</head>
<body>

<!-- get the value of a form parameter -->
<%
		String id = request.getParameter("id");
		String artistName = request.getParameter("artistName");
		String songName = request.getParameter("songName");
		
%>

<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>
	<a href = "Adminlogin.jsp"><button class = "button">Log out</button></a>
	<hr>
	
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

	<form method = "post" action = "adMostPopularUpdate">
	<table class = "admintable" border = "1">
		<tr>
			<th>PopularID</th>
			<th>ArtistName</th>
			<th>SongName</th>
			<th>update/delete</th>
		</tr>
		
		<!-- update most popular songs details -->
		
		<tr class = "tr">
			<td><input class = "tex"type = "text" name = "id" value = "<%= id%>" readonly></td>
			<td><input class = "tex"type = "text" name = "artistName" value = "<%= artistName%>"></td>
			<td><input class = "tex"type = "text" name = "songName" value = "<%= songName%>"></td>
			
			<td><input type = "submit" value = "save"></td>
		</tr>
		
	
	</table>
	
	<input type = "submit" value = "show">
	</form>
</body>
</html>