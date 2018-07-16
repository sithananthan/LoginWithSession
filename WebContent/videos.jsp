<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<link type="text/css" rel="stylesheet" href="login1.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Videos Page</title>
</head>
<body>
	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>

	<div id="ss">
		<label>User <%=session.getAttribute("username")%> is
			watching!!!
		</label>
	</div>
	<div>
		<video width=640 height=360 src="Kannama.MKV" controls="controls"></video>
		<form action="logout">
			<input type="submit" value="logout">
		</form>
	</div>
</body>
</html>