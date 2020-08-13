package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Beneficiary;

public class BeneficiaryDAO {

	private SessionFactory factory = null;
	
	/*public Beneficiary getAccount(String user) {

		return (Beneficiary)HibernateTemplate.getObjectByUserName(user);
	}*/

	public int register(Beneficiary Beneficiary) {
		return HibernateTemplate.addObject(Beneficiary);
	}

	public List<Beneficiary> getAllBeneficiary() {
		List<Beneficiary> Beneficiary=(List)HibernateTemplate.getObjectListByQuery("From Beneficiary");
		System.out.println("Inside All Beneficiary ..."+Beneficiary);
		return Beneficiary;	
	}

	/*public Beneficiary getBeneficiary() {
		return (Beneficiary)HibernateTemplate.getObject(Beneficiary.class,accNo);
	}*/
}

