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
<form action="Deposit2.jsp"><hr>
<h1>Enter Deposit Amount: </h1><hr><br><br><input type="text" name="deposit" required><br><br>
<input type="submit" value="Deposit" />
<hr>
<input type="hidden" name="accNo" value=accNo>
</form>
<br><br><a style="color:black" href="ATM.jsp">back</a><hr>
</center>

</body>
</html>