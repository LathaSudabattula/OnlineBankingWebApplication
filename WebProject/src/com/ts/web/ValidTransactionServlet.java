package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.AccountsDAO;
import com.ts.dao.TransactionsDAO;
import com.ts.db.HibernateTemplate;
import com.ts.dto.Accounts;
import com.ts.dto.Transactions;

@WebServlet("/ValidTransactionServlet")
public class ValidTransactionServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
	
		HttpSession session = request.getSession(true);
		long bAccNo = (Long)session.getAttribute("bAccNo");
		long accNo = (Long)session.getAttribute("accountNumber");
		double amount = (Double)session.getAttribute("amount");
		
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date dateobj = new Date();
		String date = df.format(dateobj);
		java.util.Date date1 = null;
		try {
			date1 = df.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date  date2 = new java.sql.Date(date1.getTime());
		System.out.println(accNo + " " + bAccNo);
		AccountsDAO accountDao = new AccountsDAO();
		Accounts acc1 = accountDao.getAccount(accNo);
		Accounts account1 = new Accounts(accNo, (acc1.getBalance() - amount), acc1.getAccountOpenDate(), acc1.getStatus(), acc1.getCustomer());
		int x1 = HibernateTemplate.updateObject(account1);
		System.out.println(x1);
		
		AccountsDAO accountDao1 = new AccountsDAO();
		Accounts acc2 = accountDao1.getAccount(bAccNo);
		Accounts account2 = new Accounts(bAccNo, (acc2.getBalance() + amount), acc2.getAccountOpenDate(),acc2.getStatus(), acc2.getCustomer());
		int x2 = HibernateTemplate.updateObject(account2);
		System.out.println(x2);
		
		Transactions transaction = new Transactions(accNo, date2, bAccNo, "Debit", amount, account1.getBalance(), account2.getBalance());
		session.setAttribute("transaction", transaction);
		TransactionsDAO tDao = new TransactionsDAO();	
		int x = tDao.register(transaction);
		
		RequestDispatcher rd = request.getRequestDispatcher("TransactionSuccessPage.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

