package com.ts.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Accounts;
import com.ts.dto.Customer;


@WebServlet("/RequestRejectServlet")
public class RequestRejectServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Accounts account = (Accounts)session.getAttribute("appaccount");
		Customer customer = account.getCustomer();
		Customer customer1 = new Customer(customer.getCustomerId(), customer.getFirstName(), customer.getLastName(), customer.getGender(), customer.getAddress(), customer.getDateOfBirth(), customer.getPhno(), customer.getAddressProof(), customer.getAddressNumber(), customer.getAadharNumber(), "no",customer.getCustomerEmail(), null, null);
	    int x1 = HibernateTemplate.updateObject(customer1);
	    Accounts account1 = new Accounts(account.getAccountNumber(), account.getBalance(), account.getAccountOpenDate(), "Disabled", customer1);
	    int x2 = HibernateTemplate.updateObject(account1);
	    RequestDispatcher rd = request.getRequestDispatcher("Requests.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
