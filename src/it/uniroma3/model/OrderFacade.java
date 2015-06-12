package it.uniroma3.model;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ejb.Stateless;

import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

@Stateless(name="orderFacade")
public class OrderFacade {

    @PersistenceContext(unitName = "unit-jee-es2")
    private EntityManager em;

    public Order createOrder(Customer customer){
    	Order order = new Order(customer);
    	em.persist(order);
    	return order;
    }
    
    public Order createOrder(){
    	Order order = new Order();
    	em.persist(order);
    	return order;
    }
    
	public void updateOrder(Order order) {
        em.merge(order);
	}
	
	public Address findAddressByOrderId(Long id){
		Query q = em.createQuery("SELECT o.customer.address FROM Order o WHERE o.id = :id");
		q.setParameter("id", id);
		Address address = (Address)q.getSingleResult();
		return address;
	}
	
    public void deleteOrder(Order order) {
        em.remove(order);
    }
    
	public List<Order> getAllOrders() {
        CriteriaQuery<Order> cq = em.getCriteriaBuilder().createQuery(Order.class);
        cq.select(cq.from(Order.class));
        List<Order> orders = em.createQuery(cq).getResultList();
		return orders;
	}
	
	public boolean processOrder(Order order){
		boolean isProcessed = true;
		for(OrderLine ol : order.getOrderLines()){
			Product product = ol.getProduct();
			if(product.getQuantity()<ol.getQuantity()){
				isProcessed = false;
			}
		}
		if(isProcessed){
			order.setProcessingDate(Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome")));
			order.setState("processed");
		}
		return isProcessed;
	}
	
	public Order getOrder(Long id){
		Query q = em.createQuery("SELECT o FROM Order o WHERE o.id = :id");
		q.setParameter("id", id);
		Order order = (Order)q.getSingleResult();
		return order;
	}

	public List<Order> getUnprocessedOrders(){
		Query q = em.createQuery("SELECT o FROM Order o WHERE o.state = 'close'");
		List<Order> orders = (List<Order>)q.getResultList();
		return orders;
	}
	
	public List<Order> getAllOrdersByCustomer(Customer customer) {
		Query q = em.createQuery("SELECT o FROM Order o WHERE o.customer.email = :email");
		q.setParameter("email", customer.getEmail());
		List<Order> orders = (List<Order>)q.getResultList();
		return orders;
	}
    
	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
    
    
}
