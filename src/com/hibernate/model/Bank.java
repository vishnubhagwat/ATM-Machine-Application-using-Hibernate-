package com.hibernate.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="Bank")
public class Bank 
{
	@Id
	@GeneratedValue
	@Column(name="SrNo")
	private int srNo;
	
	
	@Column(name="BankName")
	private String bankName;
	
	@ManyToMany(mappedBy="bank")	
	private Set<Customer> customer;

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public Set<Customer> getCustomer() {
		return customer;
	}

	public void setCustomer(Set<Customer> customer) {
		this.customer = customer;
	}

	public Bank(String bankName) {
		super();
		this.bankName = bankName;
		//this.customer = customer;
	}

	public Bank() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Bank [bankName=" + bankName + ", customer=" + customer + ", getBankName()=" + getBankName()
				+ ", getCustomer()=" + getCustomer() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	

}
