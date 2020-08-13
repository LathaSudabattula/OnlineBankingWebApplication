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
import com.ts.dao.CustomerDAO;
import com.ts.db.HibernateTemplate;
import com.ts.dto.Beneficiary;
import com.ts.dto.Customer;

@WebServlet("/AddBeneficiariesServlet")
public class AddBeneficiariesServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hi");
		HttpSession session = request.getSession(true);
		long bAccNo = Long.parseLong(request.getParameter("bAccNo"));
		int transactionLimit = Integer.parseInt(request.getParameter("limit"));
		CustomerDAO customerDao = new CustomerDAO();
		int customerId = (Integer)session.getAttribute("customerId");
		Customer customer = customerDao.getCustomer(customerId);
		BeneficiaryDAO beneficiaryDao = new BeneficiaryDAO();
		Beneficiary beneficiary = new Beneficiary(bAccNo, transactionLimit,"Pending", customer);
		System.out.println(beneficiary);
		int x = beneficiaryDao.register(beneficiary);
		System.out.println(x);
		RequestDispatcher rd = request.getRequestDispatcher("ManageBeneficiaries.jsp");
		rd.include(request, response);
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
