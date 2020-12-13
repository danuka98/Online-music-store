<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/General.css"/>
<link rel = "stylesheet" type = "text/css" href = "Images and css/Admin.css"/>
<title>AdminLogin</title>
</head>
<body>

<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>
	
	
	<hr>
	
	<!-- Admin Login -->
	
	<fieldset class ="adminLogin">
		<legend class = "adLog">Login</legend><br><br>
	
		<form method="post" action="adLogin">
			<label>UserName :</label>
			<input type = "text" name = "username" required><br><br>
			
			<label>Password :</label>
			<input type = "password" name = "pwd" required><br><br>
			
			<input type = "submit" value ="Submit" id = "adminsubmit">
	
		</form>
	
	</fieldset>
	
	
</body>
</html>