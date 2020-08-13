package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Customer;

public class CustomerDAO {

	private SessionFactory factory = null;
	
	public Customer getCustomer(String user) {

		return (Customer)HibernateTemplate.getObjectByUserName(user);
	}

	public int register(Customer customer) {
		return HibernateTemplate.addObject(customer);
	}

	public List<Customer> getAllCustomers() {
		List<Customer> customer=(List)HibernateTemplate.getObjectListByQuery("From Customer");
		System.out.println("Inside All Customers ..."+customer);
		return customer;	
	}

	public Customer getCustomer(int id) {
		return (Customer)HibernateTemplate.getObject(Customer.class,id);
	}
}