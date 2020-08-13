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
import com.ts.dao.EmployeeDAO;
import com.ts.dto.Accounts;
import com.ts.dto.Customer;
import com.ts.dto.Employee;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int empId = Integer.parseInt(request.getParameter("empId"));
		String pass = request.getParameter("password");
		System.out.println(pass + " " + empId);
		EmployeeDAO employeeDao = new EmployeeDAO();
		Employee employee = employeeDao.getEmployee(empId);
		System.out.println("Hi!");
		//System.out.println(customer);
		out.print("<html>");		
		if(employee!=null){
			HttpSession session = request.getSession(true);
			session.setAttribute("empId", empId);       
			if(pass.equals(employee.getPassword()) && employee.getJob().equalsIgnoreCase("manager"))
			{
				RequestDispatcher rd = request.getRequestDispatcher("ManagerHomePage.jsp");
	     		rd.forward(request, response);
			}
			else if(pass.equals(employee.getPassword()))
			{
				//out.print("<body>");
				//out.print("<center><h1>Invalid Credentials..</h1></center>");
				RequestDispatcher rd = request.getRequestDispatcher("EmpHomePage.jsp");
				rd.include(request, response);
				//out.print("</body>");			
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("EmployeeInvalidLogin.jsp");
				rd.include(request, response);
			}
			
		}
		else
		{
			//out.print("<body>");
			//out.print("<center><h1>Invalid Credentials..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("EmployeeInvalidLogin.jsp");
			rd.include(request, response);
			//out.print("</body>");			
		}
		out.println("</html>");		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
