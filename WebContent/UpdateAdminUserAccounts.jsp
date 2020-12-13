<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Admin.css"/>
<title>updateAdminUserAccounts</title>
</head>
<body>

<!-- get the value of a form parameter -->
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNo = request.getParameter("phoneNo");
		String age = request.getParameter("age");
		String userName = request.getParameter("username");
		String pwd = request.getParameter("pwd");
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

	<form method = "post" action = "adUpdate">
	<table class = "admintable" border = "1">
		<tr>
			<th>userID</th>
			<th>Name</th>
			<th>Email</th>
			<th>phoneNo</th>
			<th>Age</th>
			<th>userName</th>
			<th>Password</th>
			<th>update/delete</th>
		</tr>
		
		<!-- update user accounts details -->
		
		<tr class = "tr">
			<td><input class = "tex"type = "text" name = "userid" value = "<%= id%>" readonly></td>
			<td><input class = "tex"type = "text" name = "name" value = "<%= name%>"></td>
			<td><input class = "tex"type = "text" name = "email" value = "<%= email%>"></td>
			<td><input class = "tex"type = "text" name = "phoneno" value = "<%= phoneNo%>"></td>
			<td><input class = "tex"type = "text" name = "age" value = "<%= age%>"></td>
			<td><input class = "tex"type = "text" name = "username" value = "<%= userName%>"></td>
			<td><input class = "tex"type = "text" name = "pwd" value = "<%= pwd%>"></td>
			
			<td><input type = "submit" value = "save"></td>
		</tr>
		
	
	</table>
	
	<input type = "submit" value = "show">
	</form>
</body>
</html>