package it.uniroma3.controller;

import it.uniroma3.model.*;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import java.util.List;


@ManagedBean
@SessionScoped
public class OrderController {
	
	//@ManagedProperty(value="#{param.id}")
	private Long id;
	
	private List<OrderLine> orderLines;
	
	private Order currentOrder;
	
	private Order order;
	
	private Customer customer;
	
	private float unitPrice;
	
	private Product product;
	
	private OrderLine orderLine;
	
	private List<Order> orders;

	private int quantity;
	
	private String productCode;
	
	@ManagedProperty(value="#{sessionScope['customerController'].customer}")
	private Customer currentCustomer;
	
	private Address address;
	
	@EJB(beanName="orderFacade")
	private OrderFacade orderFacade;
	
	@EJB(beanName="orderLineFacade")
	private OrderLineFacade orderLineFacade;
	
	@EJB
	private ProductFacade productFacade;
	
	
	public String createOrder(Customer customer){
		this.customer = customer;
		this.currentOrder = orderFacade.createOrder(customer);
		return "newOrder";
	}
	
	public String createOrderSimple(){
		this.currentOrder = orderFacade.createOrder(this.currentCustomer);
		return "newOrder";
	}
	
	public String completeOrder(){
		this.currentOrder = orderFacade.setState(this.currentOrder, "close");
		orderFacade.updateOrder(this.currentOrder);
		FacesContext.getCurrentInstance().getExternalContext().getSessionMap().remove(currentOrder);
		this.currentOrder = null;
		return "customerWelcomePage";
	}
	
	public String addOrderLine(){
		try{
			this.product = this.productFacade.getProductByCode(productCode);
		//se non esiste un prodotto con quel codice ritorna sulla stessa view
		} catch(Exception e) {return "productToOrder";}
		this.orderLine = this.orderLineFacade.createOrderLine(product.getPrice(), quantity, product);
		this.currentOrder.addOrderLine(orderLine);
		this.orderFacade.updateOrder(this.currentOrder);
		return "productAdded";
	}
	
	public String listOrders() {
		this.orders = orderFacade.getAllOrders();
		return "orders"; 
	}
	
	public String processOrder(long id){
		this.order = this.orderFacade.getOrder(id);
		boolean isProcessed = this.orderFacade.processOrder(this.order);
		if(isProcessed) return "orderProcessed";
		else return "orderNotProcessed";
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

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Customer getCurrentCustomer() {
		return currentCustomer;
	}

	public void setCurrentCustomer(Customer currentCustomer) {
		this.currentCustomer = currentCustomer;
	}

}
