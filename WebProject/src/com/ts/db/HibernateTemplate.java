package com.ts.db;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.ts.dto.Customer;
import com.ts.dto.Employee;
import com.ts.dto.Transactions;

public class HibernateTemplate {

	private static SessionFactory sessionFactory;
	
	static
	{
		sessionFactory=new Configuration().configure().buildSessionFactory();
	}
	
	public static int addObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		
		try {
			
			Session session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.save(obj);
			
			tx.commit();
			
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		return result;
	}
	
	public static Object getObject(Class c,Serializable serializable)
	{
		Object obj=null;
		
		try {			
			return sessionFactory.openSession().get(c,serializable);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return obj;
	}
	public static List<Transactions> getTransactionByUserName(String userName) {
		
	String queryString = "from Transactions where userName = :userName";
	  Query query = sessionFactory.openSession().createQuery(queryString);
	  query.setString("userName", userName);
	  Object queryResult = query.uniqueResult();
	  List<Transactions> transactions = (List<Transactions>)queryResult;
	  //System.out.println(customer.getUserName() +" "+customer.getPassword()); 
	  return transactions; 
	}
	public static Object getObjectByUserName(String userName) {
		
		String queryString = "from Customer where userName = :userName";
		System.out.println("In Hibernate"+userName);
		  Query query = sessionFactory.openSession().createQuery(queryString);
		  query.setString("userName", userName);
		  Object queryResult = query.uniqueResult();
		  Customer customer = (Customer)queryResult;
		  System.out.println("In Hibernate Object"+customer);
		  //System.out.println(customer.getUserName() +" "+customer.getPassword()); 
		  return customer; 
		}

	public static Object getEmpByUserName(String userName) {
		
		String queryString = "from Employee where userName = :userName";
		  Query query = sessionFactory.openSession().createQuery(queryString);
		  query.setString("userName", userName);
		  Object queryResult = query.uniqueResult();
		  Employee employee = (Employee)queryResult;
		  //System.out.println(customer.getUserName() +" "+customer.getPassword()); 
		  return employee; 
		}
	public static List<Object> getObjectListByQuery(String query)
	{
		return sessionFactory.openSession().createQuery(query).list();
	}
	
	public static int updateObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		
		try {
			
			Session session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.saveOrUpdate(obj);
			
			tx.commit();
			
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static int deleteObject(Class c,Serializable serializable)
	{
		int result=0;
		
		Session session=sessionFactory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		try {
			
			Object obj=session.get(c,serializable);
			
			session.delete(obj);
			
			tx.commit();
			
			result=1;
						
		} catch (Exception e) {
			
			e.printStackTrace();
			
			tx.rollback();
		}
		
		return result;
	}
}
