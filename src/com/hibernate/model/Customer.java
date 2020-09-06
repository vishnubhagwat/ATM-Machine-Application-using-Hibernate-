package com.hibernate.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

@Entity
@Table(name="Customer")
public class Customer
{
	@Id
	@GeneratedValue
	@Column(name="CustId")
	private int custId;
	
	@Column(name="CustName")
	private String custName;
	
	@Embedded
	private Address address;
	
	
	@Column(name="AccNo")
	private long accNo;
	
	@Column(name="Balance")
	private long balance;
	
	@Column(name="Password")
	private String password;
	
	
	
	@ManyToMany
	@JoinTable(name="Bank_Customer",
	joinColumns={@JoinColumn(name="custId")},
	inverseJoinColumns={@JoinColumn(name="bankName")})
	private Set<Bank> bank;
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public int getCustId() {
		return custId;
	}

	public void setCustId(int custId) {
		this.custId = custId;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	

	public long getAccNo() {
		return accNo;
	}

	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}

	public long getBalance() {
		return balance;
	}

	public void setBalance(long balance) {
		this.balance = balance;
	}

	public Set<Bank> getBank() {
		return bank;
	}

	public void setBank(Set<Bank> bank) {
		this.bank = bank;
	}



	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", custName=" + custName + ", address=" + address + ", accNo=" + accNo
				+ ", balance=" + balance + ", bank=" + bank + ", getCustId()=" + getCustId() + ", getCustName()="
				+ getCustName() + ", getAddress()=" + getAddress() + ", getAccNo()=" + getAccNo() + ", getBalance()="
				+ getBalance() + ", getBank()=" + getBank() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer( String custName, Address address, long accNo, long balance,String password) {
		super();
		//this.custId = custId;
		this.custName = custName;
		this.address = address;
		this.password = password;
		this.accNo = accNo;
		this.balance = balance;
		//this.bank = bank;
	} 
	
	
	

}
