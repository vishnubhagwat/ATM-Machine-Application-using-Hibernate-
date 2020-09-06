
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


Configuration configuration = new Configuration().configure();  	
ServiceRegistry Registry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
SessionFactory factory = configuration.buildSessionFactory(Registry);
Session session1=factory.getCurrentSession();
Transaction t=session1.beginTransaction();

Address ad1 = new Address("Dnyaneshwar Nagar","Akola","Maharashtra","India");

Address ad2 = new Address("Dadar","Mumbai","Maharashtra","India");

Address ad3 = new Address("Hinjewadi","Pune","Maharashtra","India");

Address ad4 = new Address("Karve Road","Pune","Maharashtra","India");


Customer c1 = new Customer("Vishnu",ad3,123,10000,"Vishnu@123");
Customer c2 = new Customer("Krishna",ad4,456,20000,"Krishna@123");
Customer c3 = new Customer("Gajanan",ad1,789,40000,"Gajanan@123");
Customer c4 = new Customer("Devyani",ad2,159,30000,"Devyani@123");
		
Bank b1 = new Bank();
b1.setBankName("Canara Bank");

Bank b2 = new Bank();
b2.setBankName("SBI");

Bank b3 = new Bank();
b3.setBankName("Bank of Maharashtra");

Set<Customer> Canara = new HashSet();
Canara.add(c1);
Canara.add(c2);

Set<Customer> SBI = new HashSet();
SBI.add(c3);
SBI.add(c4);

Set<Customer> BOM = new HashSet();
BOM.add(c1);
BOM.add(c4);

Set<Bank> sc1 = new HashSet();
sc1.add(b1);
sc1.add(b3);

Set<Bank> sc2 = new HashSet();
sc2.add(b1);

Set<Bank> sc3 = new HashSet();
sc3.add(b2);

Set<Bank> sc4 = new HashSet();

sc4.add(b2);
sc4.add(b3);


session1.save(c1);
session1.save(c2);
session1.save(c3);
session1.save(c4);

session1.save(b1);
session1.save(b2);
session1.save(b3);

t.commit();


%>

</body>
</html>