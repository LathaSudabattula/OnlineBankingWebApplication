package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.EmployeeDAO;
import com.ts.dto.Employee;
@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		System.out.println("Hi");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
				
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		long ePhno = Long.parseLong(request.getParameter("ePhno"));
		String eEmail = request.getParameter("eEmail");
		double salary = Double.parseDouble(request.getParameter("salary"));
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
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
		Random r = new Random( System.currentTimeMillis() );
	    int x = 10000 + r.nextInt(20000);
	    String pass = "" + x;
		Employee employee = new Employee(fName, lName, gender, salary, job, ePhno, pass , date2, eEmail, null);		
		EmployeeDAO employeeDao = new EmployeeDAO();
		int x1 = employeeDao.register(employee);
		session.setAttribute("eEmail", eEmail);
		session.setAttribute("pass", pass);
		session.setAttribute("employeeId", employee.getEmpId());
		RequestDispatcher rd = request.getRequestDispatcher("EmployeeMail.jsp");
		rd.include(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

