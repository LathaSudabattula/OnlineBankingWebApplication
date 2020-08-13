package com.ts.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Accounts {
	@Id@GeneratedValue
	private long accountNumber;
	@Column(length=25)
	private double balance;
	@Column(length=25)
	private Date accountOpenDate;
	@Column(length=25)
	private String status;
	
	@OneToOne
	@JoinColumn(name="customerId")
	private Customer customer;
	

	public Accounts() {
		super();	
	}
	
	public Accounts(long accountNumber, double balance,Date accountOpenDate, String status, Customer customer) {
		super();
		this.accountNumber = accountNumber;
		this.balance = balance;
		this.accountOpenDate = accountOpenDate;
		this.status = status;
		this.customer = customer;
	}
	
	public Accounts(double balance,Date accountOpenDate, String status, Customer customer) {
		super();
		this.balance = balance;
		this.accountOpenDate = accountOpenDate;
		this.status = status;
		this.customer = customer;
	}
	
	@Override
	public String toString() {
		return "Accounts [accountNumber=" + accountNumber + ", balance=" + balance
				+ ", accountOpenDate=" + accountOpenDate + ", status=" + status + ", customer=" + customer + "]";
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}


	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public Date getAccountOpenDate() {
		return accountOpenDate;
	}

	public void setAccountOpenDate(Date accountOpenDate) {
		this.accountOpenDate = accountOpenDate;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
}