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

@WebServlet("/OnlineRegisterServlet")
public class OnlineRegisterServlet extends HttpServlet {

    public OnlineRegisterServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello!");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		long phno = Long.parseLong(request.getParameter("phno"));
		
		
		long aadharNumber = Long.parseLong(request.getParameter("aadharNumber"));
		
		long accountNumber = Long.parseLong(request.getParameter("accountNumber"));
		
		AccountsDAO accountDao = new AccountsDAO();
		Accounts account = accountDao.getAccount(accountNumber);
		if (account != null) {
			Customer customer = account.getCustomer();
			if (customer != null) {
				if (customer.getAadharNumber() == aadharNumber && customer.getPhno() == phno) {
					RequestDispatcher rd = request.getRequestDispatcher("OnlineRegister.jsp");
					rd.forward(request, response);
				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("CustomerHomePage.jsp");
					rd.forward(request, response);
				}
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("CustomerHomePage.jsp");
				rd.forward(request, response);
			}
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("CustomerHomePage.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
