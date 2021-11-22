<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>View Language</title>
</head>
<body>
<div class = "container-fluid">
<div class = "row">
<div class = "col col-4 offset-2">
<a href = "/">Dashboard</a>
	
		<p>${language.languageName }</p>
		<p>${language.creator }</p>
		<p>${language.version}</p>
		<a href="/delete/${language.id }">delete</a> | <a href = "/edit/${language.id}">edit</a>
		
</div>
</div>	
</div>
</body>
</html>