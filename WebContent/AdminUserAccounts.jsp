<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Admin.css"/>
<title>AdminuserAcoount</title>
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
	
	<form method = "post" action = "usDeatils">
	
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
		
		<!-- getting user account details -->
		<c:forEach var = "acc" items ="${usDeatils}">
		
		<c:set var = "id" value ="${acc.accountID}"/>
		<c:set var = "name" value ="${acc.name}"/>
		<c:set var = "email" value ="${acc.email}"/>
		<c:set var = "phoneNo" value ="${acc.phoneNo}"/>
		<c:set var = "age" value ="${acc.age}"/>
		<c:set var = "username" value ="${acc.userName}"/>
		<c:set var = "pwd" value = "${acc.password}"/>
		
		<tr class = "tr">
			<td>${acc.accountID}</td>
			<td>${acc.name}</td>
			<td>${acc.email}</td>
			<td>${acc.phoneNo}</td>
			<td>${acc.age}</td>
			<td>${acc.userName}</td> 
			<td>${acc.password}</td>
			
			<!-- update user account details -->
			<td><c:url value = "UpdateAdminUserAccounts.jsp" var = "adupdate">
				<c:param name = "id" value = "${id}"/>
				<c:param name = "name" value = "${name}"/>
				<c:param name = "email" value = "${email}"/>
				<c:param name = "phoneNo" value = "${phoneNo}"/>
				<c:param name = "age" value = "${age}"/>
				<c:param name = "username" value = "${username}"/>
				<c:param name = "pwd" value = "${pwd}"/>
			</c:url>
			<a href = "${adupdate}" class ="up">update</a>
			
			
			<!-- delete user account details -->
			<c:url value = "DeleteAdminUserAccounts.jsp" var = "addelete">
				<c:param name = "id" value = "${id}"/>
				<c:param name = "name" value = "${name}"/>
				<c:param name = "email" value = "${email}"/>
				<c:param name = "phoneNo" value = "${phoneNo}"/>
				<c:param name = "age" value = "${age}"/>
				<c:param name = "username" value = "${username}"/>
				<c:param name = "pwd" value = "${pwd}"/>
			</c:url>
			<a href = "${addelete}">delete</a></td>
		</tr>
		</c:forEach>
	
	</table>
	
	<input type = "submit" value = "show">
	</form>

</body>
</html>