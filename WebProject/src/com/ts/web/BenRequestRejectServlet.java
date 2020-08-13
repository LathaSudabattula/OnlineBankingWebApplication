package com.ts.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.BeneficiaryDAO;
import com.ts.db.HibernateTemplate;
import com.ts.dto.Accounts;
import com.ts.dto.Beneficiary;


@WebServlet("/BenRequestRejectServlet")
public class BenRequestRejectServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Beneficiary beneficiary = (Beneficiary)session.getAttribute("beneficiary");
		int customerId = (Integer)session.getAttribute("customerId");
		Beneficiary beneficiary1 = new Beneficiary(beneficiary.getBeneficiaryAccNumber(), beneficiary.getTransactionLimit(), "Rejected", beneficiary.getCustomer());
		int x = HibernateTemplate.deleteObject(Beneficiary.class, beneficiary.getBeneficiaryId());
		System.out.println(x);
			BeneficiaryDAO beneficiaryDao = new BeneficiaryDAO();
			int x1 = beneficiaryDao.register(beneficiary1);	
		RequestDispatcher rd = request.getRequestDispatcher("BeneficiaryRequests.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
