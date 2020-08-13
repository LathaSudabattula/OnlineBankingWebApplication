package com.ts.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Beneficiary {
	public Beneficiary() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Id@GeneratedValue
	private int beneficiaryId;
	@Column(length=25)
	private long beneficiaryAccNumber;
	@Column(length=25)
	private int transactionLimit;
	@Column(length=25)
	private String status;
	@ManyToOne
	@JoinColumn(name="customerId")
	private Customer customer = new Customer();
	
	
	public int getTransactionLimit() {
		return transactionLimit;
	}
	public void setTransactionLimit(int transactionLimit) {
		this.transactionLimit = transactionLimit;
	}
	@Override
	public String toString() {
		return "Beneficiary [beneficiaryId=" + beneficiaryId + ", beneficiaryAccNumber=" + beneficiaryAccNumber
				+ ", transactionLimit=" + transactionLimit + ", status=" + status + ", customer=" + customer + "]";
	}
	public Beneficiary(int beneficiaryId, long beneficiaryAccNumber, int transactionLimit, String status,
			Customer customer) {
		super();
		this.beneficiaryId = beneficiaryId;
		this.beneficiaryAccNumber = beneficiaryAccNumber;
		this.transactionLimit = transactionLimit;
		this.status = status;
		this.customer = customer;
	}
	public Beneficiary(long beneficiaryAccNumber, int transactionLimit, String status, Customer customer) {
		super();
		this.beneficiaryAccNumber = beneficiaryAccNumber;
		this.transactionLimit = transactionLimit;
		this.status = status;
		this.customer = customer;
	}
	public int getBeneficiaryId() {
		return beneficiaryId;
	}
	public void setBeneficiaryId(int beneficiaryId) {
		this.beneficiaryId = beneficiaryId;
	}
	public long getBeneficiaryAccNumber() {
		return beneficiaryAccNumber;
	}
	public void setBeneficiaryAccNumber(long beneficiaryAccNumber) {
		this.beneficiaryAccNumber = beneficiaryAccNumber;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
}
