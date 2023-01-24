<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>Company home page</title>
	</head>

	<body>
		<h2>
			Welcome
		</h2>
		<hr>
		<p>
			Welcome to the luv2code company home page
		</p>
		<hr>
			<!-- display username and role -->
			<p>
				User: <security:authentication property = "principal.username"/>
				<br><br>
				Role(s): <security:authentication property = "principal.authorities"/>
			</p>
		<hr>
		
		<hr>
			<!-- add a link to point to /leaders... this is for the managers -->
			<p>
				<a href = "${pageContext.request.contextPath}/leaders"> Leadership Meeting</a>
				(Only for Manager peeps)
			</p>
		<hr>
		
		<form:form action= "${pageContext.request.contextPath}/logout" method = "POST">
		<input type = "submit" value = "Logout"/>
		</form:form>
		 
	</body>
</html>