package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.CustomerDAO;
import com.ts.dto.Accounts;
import com.ts.dto.Customer;

@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int  customerId = Integer.parseInt(request.getParameter("customerId"));
		String pass = request.getParameter("password");
		System.out.println(pass + " " + customerId);
		
		CustomerDAO customerDao = new CustomerDAO();
	
		Customer customer = customerDao.getCustomer(customerId);
	
		
		System.out.println(customer);
		out.print("<html>");		
		if(customer!=null){
			HttpSession session = request.getSession(true);
			session.setAttribute("customerId", customerId);
       
			if(pass.equals(customer.getPassword()))
			{
				Accounts account = customer.getAccount();
				System.out.println(account);
				
					if(account.getStatus().equals("Enabled")) {
						session.setAttribute("accountNumber", account.getAccountNumber());
						RequestDispatcher rd = request.getRequestDispatcher("CustomerHomePage1.jsp");
						rd.forward(request, response);
					}
				
				RequestDispatcher rd = request.getRequestDispatcher("CustomerInvalidLogin.jsp");
	     		rd.forward(request, response);
			}
			else
			{
				//out.print("<body>");
				//out.print("<center><h1>Invalid Credentials..</h1></center>");
				RequestDispatcher rd = request.getRequestDispatcher("CustomerInvalidLogin.jsp");
				rd.include(request, response);
				//out.print("</body>");			
			}
			
		}
		else
		{
			//out.print("<body>");
			//out.print("<center><h1>Invalid Credentials..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("CustomerInvalidLogin.jsp");
			rd.include(request, response);
			//out.print("</body>");			
		}
		out.println("</html>");		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
