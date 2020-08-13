package com.ts.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id@GeneratedValue
	private int empId;
	@Column(length=25)
	private String fName;
	@Column(length=25)
	private String lName;
	@Column(length=25)
	private String gender;
	@Column(length=25)
	private double salary;
	@Column(length=25)
	private String job;
	@Column(length=25)
	private long ePhno;
	@Column(length=25)
	private String password;
	@Column(length=25)
	private Date dateOfJoin;
	@Column(length=50)
	private String eEmail;
	@Column(length=25)
	private Date lastLogin;
	
	
	public Employee() {
		super();	
	}
	
		public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

				public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

				@Override
	public String toString() {
		return "Employee [empId=" + empId + ", fName=" + fName + ", lName=" + lName + ", gender=" + gender + ", salary="
				+ salary + ", job=" + job + ", ePhno=" + ePhno + ", password=" + password + ", dateOfJoin=" + dateOfJoin
				+ ", eEmail=" + eEmail + ", lastLogin=" + lastLogin + "]";
	}

				public Employee(String fName, String lName, String gender, double salary, String job, long ePhno, String password,
			Date dateOfJoin, String eEmail, Date lastLogin) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.gender = gender;
		this.salary = salary;
		this.job = job;
		this.ePhno = ePhno;
		this.password = password;
		this.dateOfJoin = dateOfJoin;
		this.eEmail = eEmail;
		this.lastLogin = lastLogin;
	}

				public Employee(int empId, String fName, String lName, String gender, double salary, String job, long ePhno,
			String password, Date dateOfJoin, String eEmail, Date lastLogin) {
		super();
		this.empId = empId;
		this.fName = fName;
		this.lName = lName;
		this.gender = gender;
		this.salary = salary;
		this.job = job;
		this.ePhno = ePhno;
		this.password = password;
		this.dateOfJoin = dateOfJoin;
		this.eEmail = eEmail;
		this.lastLogin = lastLogin;
	}

				public long getePhno() {
		return ePhno;
	}

	public void setePhno(long ePhno) {
		this.ePhno = ePhno;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}
	

	public String geteEmail() {
		return eEmail;
	}

	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDateOfJoin() {
		return dateOfJoin;
	}
	public void setDateOfJoin(Date dateOfJoin) {
		this.dateOfJoin = dateOfJoin;
	}
}
