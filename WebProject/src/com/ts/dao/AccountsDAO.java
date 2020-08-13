package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Accounts;

public class AccountsDAO {

	private SessionFactory factory = null;
	
	/*public Accounts getAccount(String user) {

		return (Accounts)HibernateTemplate.getObjectByUserName(user);
	}*/

	public int register(Accounts accounts) {
		return HibernateTemplate.addObject(accounts);
	}

	public List<Accounts> getAllAccounts() {
		List<Accounts> accounts=(List)HibernateTemplate.getObjectListByQuery("From Accounts");
		System.out.println("Inside All Accounts ..."+accounts);
		return accounts;	
	}

	public Accounts getAccount(long accNo) {
		return (Accounts)HibernateTemplate.getObject(Accounts.class,accNo);
	}
}

