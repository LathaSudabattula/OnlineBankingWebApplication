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

@WebServlet("/FundsTransferServlet")
public class FundsTransferServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		long bAccNo = Long.parseLong(request.getParameter("bAccNumber"));
	
		HttpSession session = request.getSession(true);
		long accNo = (Long)session.getAttribute("accountNumber");
		
		double amount = Double.parseDouble(request.getParameter("amount"));
		
		//System.out.println(bAccNo + " " + amount + accNo);

		
		AccountsDAO accDao1 = new AccountsDAO();
        Accounts account2 = accDao1.getAccount(bAccNo);	
        AccountsDAO accDao2 = new AccountsDAO();
        Accounts account1 = accDao2.getAccount(accNo);	
        
		//System.out.println(account1);
		//System.out.println(account2);
		
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
	
		Accounts acc1 = new Accounts(accNo, (account1.getBalance() - amount), account1.getAccountOpenDate(), account1.getStatus(), account1.getCustomer());
		int x1 = HibernateTemplate.updateObject(acc1);
		System.out.println(x1);

		Accounts acc2 = new Accounts(bAccNo, (account2.getBalance() + amount), account2.getAccountOpenDate(), account2.getStatus(), account2.getCustomer());
		int x2 = HibernateTemplate.updateObject(acc2);
		System.out.println(x2);
		
		Transactions transaction = new Transactions(accNo, date2, bAccNo, "Debit", amount, acc1.getBalance(), acc2.getBalance());
		

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

