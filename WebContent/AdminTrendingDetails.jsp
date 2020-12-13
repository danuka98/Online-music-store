<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Admin.css"/>
<title>Trending Details</title>
</head>
<body>
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
	
	<form method = "post" action = "trendDeatils">
	
	<table class = "admintable" border = "1">
	
		<tr>
			<th>TrendingID</th>
			<th>ArtistName</th>
			<th>SongName</th>
			<th>update/delete</th>
		</tr>
		
		<!-- getting trending song details -->
		<c:forEach var = "acc" items ="${trendDeatils}">
		
		<c:set var = "id" value ="${acc.trendingID}"/>
		<c:set var = "artistName" value ="${acc.artistName}"/>
		<c:set var = "songName" value ="${acc.songName}"/>
	
		
		<tr class = "tr">
			<td>${acc.trendingID}</td>
			<td>${acc.artistName}</td>
			<td>${acc.songName}</td>
			
			<!-- update trending song details -->
			<td><c:url value = "UpdateAdminTrendingDetails.jsp" var = "adTrendUpdate">
				<c:param name = "id" value = "${id}"/>
				<c:param name = "artistName" value = "${artistName}"/>
				<c:param name = "songName" value = "${songName}"/>
			</c:url>
			<a href = "${adTrendUpdate}" class ="up">update</a>
			
			<!-- delete trending song details -->
			<c:url value = "DeleteAdminTrendingDetails.jsp" var = "adTrendDelete">
				<c:param name = "id" value = "${id}"/>
				<c:param name = "artistName" value = "${artistName}"/>
				<c:param name = "songName" value = "${songName}"/>
			</c:url>
			<a href = "${adTrendDelete}">delete</a></td>
		</tr>
		</c:forEach>
	
	</table>
	
	<input type = "submit" value = "show">
	</form>

</body>
</html>