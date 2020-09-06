
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
</head>
<body>



<% 


long accNo2 = Long.parseLong(request.getParameter("accNo"));
String pass2 = request.getParameter("pass");



long accNo = (Long)session.getAttribute("accNo");
String pass = (String)session.getAttribute("pass");
/*
Configuration configuration = new Configuration().configure();  	
ServiceRegistry Registry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
SessionFactory factory = configuration.buildSessionFactory(Registry);
Session session1=factory.getCurrentSession();
Transaction t=session1.beginTransaction();
*/
/*
Query q = session1.createQuery("from Customer c where accNo = ?");
q.setParameter(0,accNo);
List<Customer> l1 = q.list();
Iterator<Customer> it = l1.iterator();
Customer c=null;
int custId=0;
if(it.hasNext())
{
 c = (Customer)it.next();
 custId = c.getCustId();
}



Session session2=factory.getCurrentSession();
Query q2 = session2.createQuery("from Customer c where password = ?");
q2.setParameter(0,pass);
List<Customer> l2 = q2.list();
Iterator<Customer> itr = l2.iterator();
Customer c2 =null;
int custId2 = 0;
if(itr.hasNext())
{
c2 = (Customer)itr.next();

custId2 = c2.getCustId();
}
*/
/*
if((custId == custId2) && custId != 0 && custId2 != 0)
{
	RequestDispatcher rd = request.getRequestDispatcher("Withdraw.jsp");
	rd.forward(request,response);
	
	
	}
else 
{
	RequestDispatcher rd2 = request.getRequestDispatcher("Invalid.jsp");
	rd2.forward(request,response);
	
	
	}



t.commit();
*/

if((pass.equals(pass2)) && (accNo == accNo2))
{
	RequestDispatcher rd = request.getRequestDispatcher("Withdraw.jsp");
	rd.forward(request,response);
	}
else
{
	RequestDispatcher rd2 = request.getRequestDispatcher("Invalid.jsp");
	rd2.forward(request,response);
	
	}

%>

</body>
</html>