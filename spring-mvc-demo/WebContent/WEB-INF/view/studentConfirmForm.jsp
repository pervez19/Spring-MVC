<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirm Form</title>
</head>
<body>
<h3>This is Student Confirm Form</h3>
<hr>
 The Name of Student: ${student.firstName} ${student.lastName}
 <br><br>
 Country: ${student.country}
 <br><br>
 Religion: ${student.religion}
 <br><br>
 Favorite Language: ${student.favoriteLanguage}
 <br><br>
 Hobby: ${student.hobby}
 <br><br>
 Operating System: 
 <ul>
 	<c:forEach var="operatingSystem" items="${student.operatingSystems}">
    <li>${operatingSystem}</li>
    </c:forEach>
 </ul>
</body>

</html>