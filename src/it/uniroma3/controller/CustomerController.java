package it.uniroma3.controller;

import it.uniroma3.model.*;

import java.util.List;


import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class CustomerController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String firstName;
	private String lastName;
	private Customer customer;
	private List<Customer> customers;
	
	@EJB
	private CustomerFacade customerFacade;
	
	public String createCustomer() {
		this.customer = customerFacade.createCustomer(firstName, lastName);
		return "customer"; 
	}
	
	public String listCustomers() {
		this.customers = customerFacade.getAllCustomers();
		return "customers"; 
	}

	public String findCustomer() {
		this.customer = customerFacade.getCustomer(id);
		return "customer";
	}
	
	public String findCustomer(Long id) {
		this.customer = customerFacade.getCustomer(id);
		return "customer";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Customer> getCustomers() {
		return this.customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}
}


