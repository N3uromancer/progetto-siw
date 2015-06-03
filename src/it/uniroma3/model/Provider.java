package it.uniroma3.model;

import javax.persistence.*;
import java.util.*;

@Entity
@NamedQuery(name = "findProvidersByProduct", query = "SELECT p FROM Provider p ")
public class Provider {
	
	@Id
	@GeneratedValue (strategy = GenerationType.AUTO)
	private long id;
	
	@Column(nullable = false)
	private String name;
	
	@Column(nullable = false)
	private String phoneNumber;
	
	@Column(nullable = false)
	private String email;
	
	@Column(nullable = false)
	private String vatin;
	
	@OneToOne
	@JoinColumn(name = "address_id")
	private Address address;
	
	@ManyToMany
	private List<Product> products;
	
	public Provider(){
		//this.products = new LinkedList<Product>();
	}
	
	public Provider(String name, String phoneNumber, String email, String vatin){
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.vatin = vatin;
		//this.products = new LinkedList<Product>();
	}
	
	public String getName(){
		return this.name;
	}
	
	public String getPhoneNumber(){
		return this.phoneNumber;
	}
	
	public String getEmail(){
		return this.email;
	}
	
	public String getVatin(){
		return this.vatin;
	}
	public Address getAddress(){
		return this.address;
	}
	
	public void setName(String newName){
		this.name = newName;
	}
	
	public void setPhoneNumber(String newPhoneNumber){
		this.phoneNumber = newPhoneNumber;
	}
	
	public void setEmail(String newEmail){
		this.email = newEmail;
	}
	
	public void setVatin(String newVatin){
		this.vatin = newVatin;
	}
	
	public void setAddress(Address newAddress){
		this.address = newAddress;
	}
	
	public void addProduct(Product newProduct){
		//this.products.add(newProduct);
	}
}