package com.hibernate.client;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.hibernate.model.Address;
import com.hibernate.model.Bank;
import com.hibernate.model.Customer;

public class ClientAddEntries
{
	public static void main(String []args)
	{
		try
		{
		Configuration config = new Configuration().configure();
		ServiceRegistry registry = new StandardServiceRegistryBuilder()
				.applySettings(config.getProperties()).build();
		SessionFactory factory = config.buildSessionFactory(registry);

		Session session = factory.getCurrentSession();
		Transaction txn = session.beginTransaction();
		
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
		
		
		session.save(c1);
		session.save(c2);
		session.save(c3);
		session.save(c4);
		
		session.save(b1);
		session.save(b2);
		session.save(b3);
		
		txn.commit();
		
		
		
		
		
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	
	
	
	
	
	
	
	}
}
