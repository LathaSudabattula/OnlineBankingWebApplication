package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Employee;

public class EmployeeDAO {

	private SessionFactory factory = null;
	
	public Employee getEmployee(String user) {

		return (Employee)HibernateTemplate.getEmpByUserName(user);
	}

	public int register(Employee employee) {
		return HibernateTemplate.addObject(employee);
	}

	public List<Employee> getAllEmployees() {
		List<Employee> employees=(List)HibernateTemplate.getObjectListByQuery("From Employee");
		System.out.println("Inside All Employees ..."+employees);
		return employees;	
	}

	public Employee getEmployee(int id) {
		return (Employee)HibernateTemplate.getObject(Employee.class,id);
	}
}