package it.uniroma3.model;

import javax.persistence.*;

@Entity
@Table(name = "orderline")
public class OrderLine {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private float unitPrice;
	
	private int quantity;
	
	public OrderLine(){}
	
	public OrderLine(float unitPrice, int quantity){
		this.unitPrice = unitPrice;
		this.quantity = quantity;
	}
	
	public float getUnitPrice(){
		return this.unitPrice;
	}
	
	public int getQuantity(){
		return this.quantity;
	}
	
	public void setUnitPrice(float newUnitPrice){
		this.unitPrice = newUnitPrice;
	}
	
	public void setQuantity(int newQuantity){
		this.quantity = newQuantity;
	}
}