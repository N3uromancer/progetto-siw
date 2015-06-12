package it.uniroma3.controller;

import it.uniroma3.model.*;

import java.util.List;

import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
//import javax.enterprise.context.SessionScoped;

@ManagedBean
@SessionScoped
public class CustomerController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String firstName;
	private String lastName;
	private Customer customer;
	private String password;
	private String email;
	private int phoneNumber;
	private String street, city, state, country, zipcode;
	private List<Customer> customers;
	
	@EJB
	private CustomerFacade customerFacade;
	
	public String createCustomer() {
		this.customer = customerFacade.createCustomer(firstName, lastName, email, password);
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
	
	public String login(){
		String nextPage = "";
		try{
		    this.customer = customerFacade.getCustomerByEmail(this.email);
			if(customer.verifyPassword(this.password)){
				nextPage = "customerWelcomePage";                                            //da implementare customer welcome page
			} else nextPage = "customerLogin";
		} 	
		catch(Exception e){
			nextPage = "customerLogin";
		}
		return nextPage;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}	
		
}
