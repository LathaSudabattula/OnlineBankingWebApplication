package com.ts.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Customer {
	@Id@GeneratedValue
	private int customerId;
	@Column(length=25)
	private String firstName;
	@Column(length=25)
	private String lastName;
	@Column(length=25)
	private String gender;
	@Column(length=25)
	private String address;
	@Column(length=25)
	private Date dateOfBirth;
	@Column(length=25)
	private long phno;
	@Column(length=25)
	private String addressProof;
	@Column(length=25)
	private String addressNumber;
	@Column(length=25)
	private long aadharNumber;
	@Column(length=25)
	private String netBanking;
	@Column(length=50)
	private String customerEmail;
	@Column(length=25)
	private String password;
	@Column(length=25)
	private Date lastLogin;
	@OneToOne(mappedBy="customer")
	private Accounts account;
	@OneToMany(mappedBy="customer")
	private List<Beneficiary> beneficiary = new ArrayList<Beneficiary>();
	
	public List<Beneficiary> getBeneficiary() {
		return beneficiary;
	}

	public void setBeneficiary(List<Beneficiary> beneficiary) {
		this.beneficiary = beneficiary;
	}

	public Customer() {
		super();	
	}
	
	
	
	
	
	
	public String getAddressProof() {
		return addressProof;
	}

	public void setAddressProof(String addressProof) {
		this.addressProof = addressProof;
	}

	public String getAddressNumber() {
		return addressNumber;
	}

	public void setAddressNumber(String addressNumber) {
		this.addressNumber = addressNumber;
	}

	


	
	public String getNetBanking() {
		return netBanking;
	}

	public void setNetBanking(String netBanking) {
		this.netBanking = netBanking;
	}

	
	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public Customer(String firstName, String lastName, String gender, String address, Date dateOfBirth, long phno,
			String addressProof, String addressNumber, long aadharNumber, String netBanking,
			String customerEmail, String password, Date lastLogin) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.address = address;
		this.dateOfBirth = dateOfBirth;
		this.phno = phno;
		this.addressProof = addressProof;
		this.addressNumber = addressNumber;
		this.aadharNumber = aadharNumber;
		this.netBanking = netBanking;
		this.customerEmail = customerEmail;
		this.password = password;
		this.lastLogin = lastLogin;
	}

	public Customer(int customerId, String firstName, String lastName, String gender, String address, Date dateOfBirth,
			long phno, String addressProof, String addressNumber, long aadharNumber, String netBanking, 
			String customerEmail, String password, Date lastLogin) {
		super();
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.address = address;
		this.dateOfBirth = dateOfBirth;
		this.phno = phno;
		this.addressProof = addressProof;
		this.addressNumber = addressNumber;
		this.aadharNumber = aadharNumber;
		this.netBanking = netBanking;
		this.customerEmail = customerEmail;
		this.password = password;
		this.lastLogin = lastLogin;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public long getPhno() {
		return phno;
	}

	public void setPhno(long phno) {
		this.phno = phno;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public Accounts getAccount() {
		return account;
	}

	public void setAccount(Accounts accounts) {
		this.account = accounts;
	}
	
}