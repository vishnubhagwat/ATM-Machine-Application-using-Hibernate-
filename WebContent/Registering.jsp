
<%@page import="com.hibernate.model.Bank" %>
<%@page import="com.hibernate.model.Address" %>
<%@page import="com.hibernate.model.Customer" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.*"%>

<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.ProjectionList"%>
<%@page import="org.hibernate.criterion.Projections"%>
<%@page import="org.hibernate.criterion.Restrictions"%>

<%@page
	import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.service.ServiceRegistry"%>
<%@page import="org.hibernate.cfg.Configuration"%>


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

<%

//int custId = Integer.parseInt(request.getParameter("custId"));
String custName = request.getParameter("custName");
String bankName = request.getParameter("bankName"); 

long accNo = Long.parseLong(request.getParameter("accNo"));
String pass = request.getParameter("pass");
String street = request.getParameter("street");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");


Configuration configuration = new Configuration().configure();  	
ServiceRegistry Registry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
SessionFactory factory = configuration.buildSessionFactory(Registry);
Session session1=factory.getCurrentSession();
Transaction t=session1.beginTransaction();

Address ad = new Address(street,city,state,country);

Customer c = new Customer(custName,ad,accNo,0,pass);
Set<Bank> s = new HashSet();
Bank b = new Bank(bankName);

s.add(b);

c.setBank(s);

session1.save(c);
session1.save(b);

t.commit();

%>
<center><hr>
<h1>Account Number <%=accNo %> has been Registered Successfully</h1><hr><br><br>
<a style="color:black" href="Register.jsp">back</a><hr>
</center>

</body>
</html>