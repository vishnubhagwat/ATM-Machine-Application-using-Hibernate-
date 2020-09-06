

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

long Damount = Long.parseLong(request.getParameter("deposit"));

long accNo = (Long)session.getAttribute("accNo");

System.out.println("account no is "+accNo);

Configuration configuration = new Configuration().configure();  	
ServiceRegistry Registry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
SessionFactory factory = configuration.buildSessionFactory(Registry);
Session session1=factory.getCurrentSession();
Transaction t=session1.beginTransaction();

Query q = session1.createQuery("from Customer c where c.accNo = ?");
q.setParameter(0,accNo);
List<Customer> l1 = q.list();

Iterator<Customer> it = l1.iterator();

Customer c2 = it.next();
long balance = c2.getBalance();
int custId = c2.getCustId();

if(Damount >= 0)
{
balance = balance + Damount;

Session session2 = factory.getCurrentSession();
Customer c = (Customer)session2.get(Customer.class,custId);


c.setBalance(balance);
session2.update(c);

%>
<center><hr>
<h1>Amount Deposit is <%=Damount %></h1>
<h2>Available Balance is <%=balance  %></h2><hr>
<br><br><a style="color:black" href="Deposit.jsp">back</a><hr>
</center>

<%


t.commit();
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("NegativeAmount.jsp");
	rd.forward(request,response);
	}

%>

</body>
</html>