<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="login1.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Homepage</title>
</head>
<body>
	<%
		if(session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>

	<div id="ss">
		<label id="ww"> Welcome <%= session.getAttribute("username") %>
		</label> <a href="videos.jsp"> Click here to see videos</a>

		<form action="logout">
			<input type="submit" value="logout">
		</form>
	</div>
</body>
</html>