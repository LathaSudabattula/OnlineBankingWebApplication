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


@WebServlet("/RequestApprovalservlet")
public class RequestApprovalservlet extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession(true);
			long accNo = (Long)session.getAttribute("accNo");
			AccountsDAO accountsDao = new AccountsDAO();
			Accounts account = accountsDao.getAccount(accNo);
			Customer customer = account.getCustomer();
			Random r = new Random( System.currentTimeMillis() );
		    int x = 10000 + r.nextInt(20000);
		    String pass = "" + x;
		    System.out.println(pass);
		    session.setAttribute("pass", pass);
		    session.setAttribute("email", customer.getCustomerEmail());
		    session.setAttribute("cId", customer.getCustomerId());
		    Customer customer1 = new Customer(customer.getCustomerId(), customer.getFirstName(), customer.getLastName(), customer.getGender(), customer.getAddress(), customer.getDateOfBirth(), customer.getPhno(), customer.getAddressProof(), customer.getAddressNumber(), customer.getAadharNumber(), "yes",customer.getCustomerEmail(), pass, null);
		    int x1 = HibernateTemplate.updateObject(customer1);
		    Accounts account1 = new Accounts(account.getAccountNumber(), account.getBalance(), account.getAccountOpenDate(), "Enabled", customer1);
		    int x2 = HibernateTemplate.updateObject(account1);
		    RequestDispatcher rd = request.getRequestDispatcher("Mail.jsp");
			rd.forward(request, response);
		    
		}
	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
