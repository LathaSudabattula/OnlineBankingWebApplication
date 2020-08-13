package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Accounts;
import com.ts.dto.Transactions;

public class TransactionsDAO {

	private SessionFactory factory = null;
	
	/*public Transactions getAccount(String user) {

		return (Transactions)HibernateTemplate.getObjectByUserName(user);
	}*/

	public int register(Transactions accounts) {
		return HibernateTemplate.addObject(accounts);
	}

	public List<Transactions> getAllTransactions() {
		List<Transactions> accounts=(List)HibernateTemplate.getObjectListByQuery("From Transactions");
		System.out.println("Inside All Accounts ..."+accounts);
		return accounts;	
	}

	public List<Transactions> getTransactions(int accNo) {
		return (List<Transactions>)HibernateTemplate.getObject(Transactions.class,accNo);
	}
	public Transactions getTransaction(int tId) {
		return (Transactions)HibernateTemplate.getObject(Transactions.class,tId);
	}
}