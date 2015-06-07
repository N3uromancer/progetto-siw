package it.uniroma3.controller;

import it.uniroma3.model.*;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import java.util.List;

@ManagedBean
public class OrderController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	
	private List<OrderLine> orderLines;
	
	private Order currentOrder;
	
	@EJB(beanName="orderFacade")
	private OrderFacade orderFacade;
	
	
	public String createOrder(){
		this.currentOrder = orderFacade.createOrder();
		return "order";
	}
	
	public Order getCurrentOrder() {
		return currentOrder;
	}

	public void setCurrentOrder(Order currentOrder) {
		this.currentOrder = currentOrder;
	}

	public String addOrderLine(){
		return "order";
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

}
