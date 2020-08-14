<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>This is Customer Form</h3>
<hr>
The Name of the Customer: ${customer.firstName} ${customer.lastName}<br><br>

the free Passes of Customer: ${customer.freePasses}<br><br>

Postal Code: ${customer.postalCode}<br><br>

Course code: ${customer.courseCode}
</body>
</html>