package it.uniroma3.model;

import javax.persistence.*;

@Entity
@Table(name = "orderline")
public class OrderLine {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column(nullable=false)
	private float unitPrice;
	
	@Column(nullable=false)
	private int quantity;
	
	@OneToOne(fetch=FetchType.EAGER)
	private Product product;
	
	public OrderLine(){}
	
	public OrderLine(float unitPrice, int quantity, Product product){
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.product = product;
	}
	
	public float getUnitPrice(){
		return this.unitPrice;
	}
	
	public int getQuantity(){
		return this.quantity;
	}
	
	public Product getProduct(){
		return this.product;
	}
	
	public void setUnitPrice(float newUnitPrice){
		this.unitPrice = newUnitPrice;
	}
	
	public void setQuantity(int newQuantity){
		this.quantity = newQuantity;
	}
	
	public void setProduct(Product newProduct){
		this.product = newProduct;
	}
}