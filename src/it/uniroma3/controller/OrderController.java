package it.uniroma3.controller;

import it.uniroma3.model.*;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
//import javax.faces.bean.SessionScoped;

import java.util.List;
import java.util.ArrayList;;

@ManagedBean
public class OrderController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	
	private List<OrderLine> orderLines;
	
	private Order currentOrder;
	
	private Customer customer;
	
	private float unitPrice;
	
	private Product product;
	
	private OrderLine orderLine;
	
	private List<Order> orders;

	private int quantity;
	
	private String productCode;
	
	private Address address;
	
	@EJB(beanName="orderFacade")
	private OrderFacade orderFacade;
	
	@EJB(beanName="orderLineFacade")
	private OrderLineFacade orderLineFacade;
	
	@EJB//(beanName="productFacade")
	private ProductFacade productFacade;
	
	
	public String createOrder(Customer customer){
		this.customer = customer;
		this.currentOrder = orderFacade.createOrder(this.customer);
		this.orderLines = new ArrayList<OrderLine>();
		return "newOrder";
	}
	
	public String createOrderSimple(){
		this.currentOrder = orderFacade.createOrder();
		this.orderLines = new ArrayList<OrderLine>();
		return "newOrder";
	}
	
	public String completeOrder(){
		this.currentOrder = null;
		return "order";
	}
	
	public String addOrderLine(){
		this.product = this.productFacade.getProductByCode(productCode);
		this.orderLine = this.orderLineFacade.createOrderLine(unitPrice, quantity, product);
		//this.orderLines.add(this.orderLine);
		this.orderFacade.updateOrder(this.currentOrder);
		return "productAdded";
	}
	
	public String listOrders() {
		this.orders = orderFacade.getAllOrders();
		return "orders"; 
	}
	
	public String listUnprocessedOrders(){
		this.orders = orderFacade.getUnprocessedOrders();
		return "unprocessedOrders";
	}
	public String listOrderLines(){
		this.orderLines = this.orderLineFacade.getOrderLinesByOrderId(id);
		return "newOrder";
	}
	
	public String findAddress(Long id){
		this.address = this.orderFacade.findAddressByOrderId(id);
		return "address";
	}
	
	public Order getCurrentOrder() {
		return currentOrder;
	}

	public void setCurrentOrder(Order currentOrder) {
		this.currentOrder = currentOrder;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<OrderLine> getOrderLines() {
		return orderLines;
	}

	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}
	
	public float getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public OrderLine getOrderLine() {
		return orderLine;
	}

	public void setOrderLine(OrderLine orderLine) {
		this.orderLine = orderLine;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	
	
}
