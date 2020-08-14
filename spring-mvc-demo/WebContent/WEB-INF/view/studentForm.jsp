<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Student Registration Form</title>
<style type="text/css">
.error{color.red}
</style>
</head>
<body>
<h3>This is Student Registration Form</h3>
<hr>
	<form:form action="processForm" modelAttribute="student">
	
	First name * : <form:input path="firstName"/>
	
		
	<br><br>
	Last name: <form:input path="lastName"/>
		<br><br>
	
	Religion: 
	 <form:select path="religion">
	  	<form:option value="Islam">Islam</form:option>
	    <form:option value="Hindu">Hindu</form:option>
	    <form:option value="Christian">Christian</form:option>
	    <form:option value="Sik">Sikhism</form:option>
	 </form:select>
		<br><br>
		
	Country: 
	  <form:select path="country">
	  	<form:options items="${countryOptions}"/> 	
	  </form:select>
	    <br><br>
		
     Favorite Programming Language:
     Java<form:radiobutton path="favoriteLanguage" Value="Java"/>
     PHP<form:radiobutton path="favoriteLanguage" Value="PHP"/>
     C<form:radiobutton path="favoriteLanguage" Value="C"/>
     C++<form:radiobutton path="favoriteLanguage" Value="C++"/>   
	 Python<form:radiobutton path="favoriteLanguage" Value="Python"/>
	  <br><br>
	 
	 Hobby: 
	 <form:radiobuttons path="hobby" items="${hobbies}"/>
	  <br><br>
	Operating system:
	Microsoft Windows<form:checkbox path="operatingSystems" value="Microsoft Windows"/>
	Apple macOS<form:checkbox path="operatingSystems" value="Apple macOS"/>
	Linux<form:checkbox path="operatingSystems" value="Linux"/>
	Android<form:checkbox path="operatingSystems" value="Android"/>
	Apple's iOS<form:checkbox path="operatingSystems" value="Apple's iOS"/>
	<br><br>
	<input type="submit" value="Submit"/>
	</form:form>
</body>
</html>