package com.ts.web;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.AccountsDAO;
import com.ts.db.HibernateTemplate;
import com.ts.dto.Accounts;
import com.ts.dto.Customer;


@WebServlet("/ActivationServlet")
public class ActivationServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long accNo = Long.parseLong(request.getParameter("accNo"));
		String email = request.getParameter("email");
		long phNo = Long.parseLong(request.getParameter("phNo"));
		AccountsDAO accountsDao = new AccountsDAO();
		Accounts accounts = accountsDao.getAccount(accNo);
		if(accounts != null && accounts.getCustomer().getNetBanking().equalsIgnoreCase("No") && accounts.getStatus().equalsIgnoreCase("enabled") && accounts.getCustomer().getCustomerEmail().equalsIgnoreCase(email) && accounts.getCustomer().getPhno() == phNo) {
			Random r = new Random( System.currentTimeMillis() );
		    int x = 10000 + r.nextInt(20000);
		    String pass = "" + x;
			Customer customer = new Customer(accounts.getCustomer().getCustomerId(), accounts.getCustomer().getFirstName(), accounts.getCustomer().getLastName(), accounts.getCustomer().getGender(), accounts.getCustomer().getAddress(), accounts.getCustomer().getDateOfBirth(), accounts.getCustomer().getPhno(), accounts.getCustomer().getAddressProof(), accounts.getCustomer().getAddressNumber(), accounts.getCustomer().getAadharNumber(), "yes", accounts.getCustomer().getCustomerEmail(), pass, null);
			HibernateTemplate.updateObject(customer);
			HttpSession session = request.getSession(true);
			session.setAttribute("pass",pass);
			session.setAttribute("email", email);
			session.setAttribute("cId", accounts.getCustomer().getCustomerId());
			RequestDispatcher rd = request.getRequestDispatcher("ActivationMail.jsp");
			rd.forward(request, response);
		}
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				doGet(request, response);
	}

}
