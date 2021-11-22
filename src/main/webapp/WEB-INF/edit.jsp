<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Edit Language</title>
</head>
<body>
<div class = "container">
<h1>Edit ${language.languageName }</h1>
<a href="/delete/${language.id }">delete</a> | <a href = "/">dashboard</a>

<form:form method = "POST" action = "/edit/${language.id}" modelAttribute="language">
	<form:label path="languageName">Name</form:label>
	<form:errors path = "languageName"/>
	<form:input type = "text" path="languageName"/>
	
	<form:label path="creator">Creator</form:label>
	<form:errors path = "creator"/>
	<form:input type = "text" path="creator"/>
	
	<form:label path="version">Version</form:label>
	<form:errors path = "version"/>
	<form:input type = "text" path="version"/>
	<button type="submit" class="btn btn-primary my-2">Submit</button>
	
</form:form>
</div>

</body>
</html>