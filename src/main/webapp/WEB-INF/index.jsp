<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Languages</title>
</head>
<body>
<div class = "container">
<h1>Language List</h1>

<table class="table table-striped">
	<thead>
		<tr>
		<th>Language Name</th>
		<th>Creator</th>
		<th>Version</th>
		<th>Action</th>
		</tr>
		<c:forEach items = "${allLanguages}" var = "language">
		<tr>
		<td><a href = "/show/${language.id}">${language.languageName }</a></td>
		<td>${language.creator }</td>
		<td>${language.version}</td>
		<td><a href="/delete/${language.id }">delete</a> | <a href = "/edit/${language.id}">edit</a></td>
		</tr>
		</c:forEach>
		<tr>
	</thead>
</table>

<div class = "row">
<h3>Add a language</h3>
<div class = "col-2">

<form:form method = "POST" action = "/new" modelAttribute="language">
	<form:label path="languageName">Language Name</form:label>
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
</div>
</div>

</body>
</html>