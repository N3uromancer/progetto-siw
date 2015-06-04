package it.uniroma3.model;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "orders")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@OneToMany
	@JoinColumn(name = "orderline_id")
	private List<OrderLine> orderLines;
	
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private Customer customer;

	public Order(){
		this.orderLines = new LinkedList<OrderLine>();
	}	
	
	public Customer getCustomer(){
		return this.customer;
	}
	
	public void setCustomer(Customer newCustomer){
		this.customer = newCustomer;
	}
	
	public void addOrderLine(OrderLine newOrderLine){
		orderLines.add(newOrderLine);
	}
}