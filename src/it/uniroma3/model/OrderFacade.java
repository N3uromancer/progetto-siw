package it.uniroma3.model;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ejb.Stateless;
import java.util.List;
import javax.persistence.Query;

@Stateless(name="orderFacade")
public class OrderFacade {

    @PersistenceContext(unitName = "unit-jee-es2")
    private EntityManager em;

    public Order createOrder(){
    	Order order = new Order();
    	em.persist(order);
    	return order;
    }
    
	public void updateOrder(Order order) {
        em.merge(order);
	}
	
    private void deleteOrder(Order order) {
        em.remove(order);
    }
    
	public List<Order> getAllOrdersByCustomer(Customer customer) {
		Query q = em.createQuery("SELECT o FROM Order o WHERE o.customer.email = :email");
		q.setParameter("email", customer.getEmail());
		List<Order> orders = q.getResultList();
		return orders;
	}
    
	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
    
    
}
