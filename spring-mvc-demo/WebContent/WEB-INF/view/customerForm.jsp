<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Form</title>
<style type="text/css">
.error{color:red}

</style>
</head>
<body>
<h3>This is Customer Registration Form</h3>
<hr>
	<form:form action="processForm" modelAttribute="customer">

		
		 First name * : <form:input path="firstName"/>	
		<form:errors path="firstName" cssClass="error"/><br><br>
		
		Last name: <form:input path="lastName"/><br><br>
		
		 Free Passage * : <form:input path="freePasses"/>	
		<form:errors path="freePasses" cssClass="error"/><br><br>
		
		
		 Postal Code * : <form:input path="postalCode"/>	
		<form:errors path="postalCode" cssClass="error"/><br><br>
		
		Course Code * : <form:input path="courseCode"/>	
		<form:errors path="courseCode" cssClass="error"/><br><br>
		
	<input type="submit" value="Submit">
	</form:form>
</body>
</html>