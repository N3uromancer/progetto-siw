package it.uniroma3.model;

import javax.persistence.*;

@Entity
@NamedQuery(name = "findAllAddress", query = "SELECT a FROM Address a")
public class Address {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column(nullable = false)
	private String street;
	
	@Column(nullable = false)
	private String city;
	
	@Column(nullable = false)
	private String state;
	
	@Column(nullable = false)
	private String zipCode;
	
	@Column(nullable = false)
	private String country;
	
	@OneToOne(mappedBy = "address")
	private Customer customer;
	
	@OneToOne(mappedBy = "address")
	private Provider provider;
	
	public Address(){}
	
	public Address(String street, String city, String state, String zipCode, String country){
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
		this.country = country;
	}
	
	public String getStreet(){
		return this.street;
	}
	
	public String getCity(){
		return this.city;
	}
	
	public String getState(){
		return this.state;
	}
	
	public String getZipCode(){
		return this.zipCode;
	}
	
	public String getCountry(){
		return this.country;
	}
	
	public void setStreet(String newStreet){
		this.street = newStreet;
	}
	
	public void setCity(String newCity){
		this.city = newCity;
	}
	
	public void setState(String newState){
		this.state = newState;
	}
	
	public void setZipCode(String newZipCode){
		this.zipCode = newZipCode;
	}
	public void setCountry(String newCountry){
		this.country = newCountry;
	}
}