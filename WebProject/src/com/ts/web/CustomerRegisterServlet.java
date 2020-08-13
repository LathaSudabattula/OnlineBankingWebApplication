package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.dao.AccountsDAO;
import com.ts.dao.CustomerDAO;
import com.ts.dto.Accounts;
import com.ts.dto.Customer;

@WebServlet("/CustomerRegisterServlet")
public class CustomerRegisterServlet extends HttpServlet {

    public CustomerRegisterServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello!");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		long phno = Long.parseLong(request.getParameter("phNo"));
		String address = request.getParameter("address");
		String addressProof = request.getParameter("addressProof");
		String addressNumber = request.getParameter("addressNumber");
		String customerEmail = request.getParameter("email");

		String date1 = request.getParameter("dateOfBirth");

		System.out.println(phno + firstName + lastName + address + date1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date = null;
		try {
			date = sdf.parse(date1);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		java.sql.Date dateOfBirth = new java.sql.Date(date.getTime());
		String gender = request.getParameter("gender");
		long aadharNumber = Long.parseLong(request.getParameter("aadharNumber"));
		
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date dateobj = new java.util.Date();
		String date2 = df.format(dateobj);
		java.util.Date date3 = null;
		try {
			date3 = df.parse(date2);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date  accountOpenDate = new java.sql.Date(date3.getTime());
		Customer customer = new Customer(firstName,lastName, gender, address, dateOfBirth, phno, addressProof, addressNumber, aadharNumber, "no", customerEmail, null, null);		
		CustomerDAO customerDao = new CustomerDAO();
		Accounts accounts = new Accounts(0, accountOpenDate, "Pending", customer);
		AccountsDAO accountsDao = new AccountsDAO();
		int x = customerDao.register(customer);
		int x1 = accountsDao.register(accounts);
		RequestDispatcher rd = request.getRequestDispatcher("CustomerLoginPage.jsp");
		rd.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
