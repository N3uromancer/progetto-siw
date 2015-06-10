package it.uniroma3.model;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "orders")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@OneToMany(fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "orders_id")
	private List<OrderLine> orderLines;
	
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private Customer customer;

	public Order(Customer customer){
		this.customer = customer;
		this.orderLines = new LinkedList<OrderLine>();
	}	
	
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

	public List<OrderLine> getOrderLines() {
		return orderLines;
	}

	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}

	public long getId() {
		return id;
	}
}