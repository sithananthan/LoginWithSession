<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="login.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<div id="div1">
		<form action="login" method="get">
			<div class="row">
				<label> Name : &nbsp; &nbsp; &nbsp;</label><input type="text"
					id="name" name="uname" /><br /> <br />
			</div>

			<div class="row">
				<label> Password: </label><input id="pwd" type="password" name="pwd" /><br />

				<br />
			</div>

			<div class="row">
				<input id="submit" type="submit" onclick="return validate()"
					value="login" />
			</div>
		</form>
	</div>
<script type="text/javascript" src="login.js"></script>
</body>
</html>