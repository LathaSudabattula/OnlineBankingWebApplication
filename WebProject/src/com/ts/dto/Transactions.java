package com.ts.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Transactions {
	@Id@GeneratedValue
	private int transactionId;
	@Column(length=25)
	private long accountNumber;
	@Column(length=25)
	private Date transactionDate;
	@Column(length=25)
	private long beneficiaryAccNo;
	@Column(length=25)
	private String  mode;
	@Column(length=25)
	private double amount;
	@Column(length=25)
	private double currentBalance;
	@Column(length=25)
	private double beneficiaryCurrentBalance;
	
	public Transactions() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Transactions(int transactionId, long accountNumber, Date transactionDate, long beneficiaryAccNo, String mode,
			double amount, double currentBalance, double beneficiaryCurrentBalance) {
		super();
		this.transactionId = transactionId;
		this.accountNumber = accountNumber;
		this.transactionDate = transactionDate;
		this.beneficiaryAccNo = beneficiaryAccNo;
		this.mode = mode;
		this.amount = amount;
		this.currentBalance = currentBalance;
		this.beneficiaryCurrentBalance = beneficiaryCurrentBalance;
	}

	public Transactions(long accountNumber, Date transactionDate, long beneficiaryAccNo, String mode,
			double amount, double currentBalance, double beneficiaryCurrentBalance) {
		super();
		this.accountNumber = accountNumber;
		this.transactionDate = transactionDate;
		this.beneficiaryAccNo = beneficiaryAccNo;
		this.mode = mode;
		this.amount = amount;
		this.currentBalance = currentBalance;
		this.beneficiaryCurrentBalance = beneficiaryCurrentBalance;
	}
	
	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public double getBeneficiaryCurrentBalance() {
		return beneficiaryCurrentBalance;
	}

	public void setBeneficiaryCurrentBalance(double beneficiaryCurrentBalance) {
		this.beneficiaryCurrentBalance = beneficiaryCurrentBalance;
	}

	public double getCurrentBalance() {
		return currentBalance;
	}
	public void setCurrentBalance(double currentBalance) {
		this.currentBalance = currentBalance;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public Date getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	public long getBeneficiaryAccNo() {
		return beneficiaryAccNo;
	}
	public void setBeneficiaryAccNo(long beneficiaryAccNo) {
		this.beneficiaryAccNo = beneficiaryAccNo;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
}