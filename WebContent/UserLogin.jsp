<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "Images and css/UserLogin.css"/>
<title>User Login</title>
</head>
<body>
<br>
	<header>
		<img src = "Images and css/logo1.png"  alt = "logo" id = "logo" />
		<h1 id ="head">Online Music Store</h1>
	</header>

	<form action ="userlog" method ="post">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
				<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
				<div class="login-form">
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">Username</label>
							<input id="user" type="text" name="username" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label>
							<input id="pass" type="password" class="input" name = "userpass" data-type="password">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> Keep me Signed in</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign In">
						</div>
						<div class="hr"></div>
	</form>			
	<form action="userReg" method ="post">		
					</div>
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label">Username</label>
							<input id="user" type="text" name="username" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label>
							<input id="pass" type="password" name="pwd" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">Name</label>
							<input id="pass" type="text" name="name" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Age</label>
							<input id="pass" type="text" name="age" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Phone Number</label>
							<input id="pass" type="text" name="phoneNo" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Email Address</label>
							<input id="pass" type="text" name="email" class="input">
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
						<div class="hr"></div>
						
					</div>
				</div>
			</div>
	</div>
	</form>
</body>
</html>