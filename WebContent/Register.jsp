<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css" />
</head>
<body>

<center>
<h1>New Customer Registration</h1><hr>
<table border="10">
<form action="Registering.jsp">

<tr><th>
Customer Name:</th><td> <input type="text" name="custName" required/></td></tr>
<tr><th>
Bank Name:</th><td> <input type="text" name="bankName" required/></td></tr>
<tr><th>
Account Number:</th><td> <input type="text" name="accNo" required/></td></tr>
<tr><th>
Password: </th><td> <input type="text" name="pass" required/></td></tr>
<tr><th>
Street:</th><td> <input type="text" name="street" required/></td></tr>
<tr><th>
City:</th><td> <input type="text" name="city" required/></td></tr>
<tr><th>
State:</th><td> <input type="text" name="state" required/></td></tr>
<tr><th>
Country:</th><td> <input type="text" name="country" required/></td></tr>
</table><br><br><hr>
<input type="submit" value="submit" />
</form><hr>
<br><br>
<a style="color:black" style="color:black" href="Index.jsp"> back </a><hr>
</center>

</body>
</html>