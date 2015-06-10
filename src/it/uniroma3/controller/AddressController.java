package it.uniroma3.controller;

import javax.faces.bean.ManagedBean;
import it.uniroma3.model.*;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.persistence.Column;
import javax.persistence.OneToOne;

import java.util.List;

@ManagedBean
public class AddressController {
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String street;
	private String city;
	private String state;
	private String zipCode;
	private String country;
	private Address address;
	
	@EJB
	private AddressFacade addressFacade;

	
	
/*getters & setters methods*/
	
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

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public AddressFacade getAddressFacade() {
		return addressFacade;
	}

	public void setAddressFacade(AddressFacade addressFacade) {
		this.addressFacade = addressFacade;
	}

	public Long getId() {
		return id;
	}
}