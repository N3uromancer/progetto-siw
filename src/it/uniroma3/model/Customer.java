package it.uniroma3.model;

import javax.persistence.*;
import java.util.*;

@Entity
@NamedQuery(name = "findAllCustomers", query = "SELECT c FROM Customer c")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column(nullable = false)
	private String firstName;
	
	@Column(nullable = false)
	private  String lastName;
	
	@Column(nullable = false)
	private String password;             //--------------------------------password
	
	@Column(nullable = false)
	private String email;
	
	@Column(nullable = false)
	private int phoneNumber;
	
	@OneToMany(mappedBy = "customer")
	private List<Order> orders;
	
	//@OneToOne
	//@JoinColumn(name = "address_id")
	//private Address address;
	
	public Customer(){
		this.orders = new LinkedList<Order>();
	}
	
	public Customer(String firstname, String lastname, String email, int phoneNumber, String password){
		this.firstName = firstname;
		this.lastName = lastname;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		
	}
	
	public Customer(String firstName, String lastName){
		this.firstName=firstName;
		this.lastName=lastName;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getId(){
		return this.id;
	}
	
	public String getFirstName(){
		return this.firstName;
	}
	
	public String getLastName(){
		return this.lastName;
	}
	
	
	public String getEMail(){
		return this.email;
	}
	
	public int getPhoneNumber(){
		return this.phoneNumber;
	}
	
	public void setFirstName(String newfirstName){
		this.firstName = newfirstName;
	}
	
	public void setLastName(String newLastName){
		this.lastName = newLastName;
	}
	
	public void setEmail(String newEmail){
		this.email = newEmail;
	}
		
	public void setPhoneNumber(int newPhoneNumber){
		this.phoneNumber = newPhoneNumber;
	}
	
	/*public void setAddress(Address newAddress){
		this.address = new Address();
		this.address = newAddress;
	}*/
	
	public void addOrder(Order newOrder){
		this.orders.add(newOrder);
	}
	
	public List<Order> getOrders(){
		return this.orders;
	}
}
