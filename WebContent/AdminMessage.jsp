<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Admin.css"/>
<title>Messages</title>
</head>
<body>
<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>
	<a href = "Adminlogin.jsp"><button class = "button">Log out</button></a>
	<hr>
	
	<!-- side bar -->
	
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
	
	
	
	<form action="contactDeatils" method = "post">
		<table class = "admintable" border = "1">
			<tr>
				<th>ContactID</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Message</th>
			</tr>
			
		<!-- getting information about contact us  -->	
		
		<c:forEach var = "acc" items ="${contactDeatils}">
				
			<tr class = "tr">
				<td>${acc.contactID}</td>
				<td>${acc.fname}</td>
				<td>${acc.lname}</td>
				<td>${acc.email}</td>
				<td>${acc.description}</td>
			</tr>
			
		</c:forEach>
		</table>
	<input type = "submit" value = "show">
	</form>
</body>
</html>