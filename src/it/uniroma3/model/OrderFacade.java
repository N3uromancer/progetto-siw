package it.uniroma3.model;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ejb.Stateless;

import java.util.List;

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
    
	public void updateOrder(Order order) {
        em.merge(order);
	}
	
	public Address findAddressByOrderId(Long id){
		Query q = em.createQuery("SELECT o FROM Order o WHERE o.customer.address.id = :id");
		q.setParameter("id", id);
		Address address = (Address)q.getSingleResult();
		return address;
	}
	
    private void deleteOrder(Order order) {
        em.remove(order);
    }
    
	public List<Order> getAllOrders() {
        CriteriaQuery<Order> cq = em.getCriteriaBuilder().createQuery(Order.class);
        cq.select(cq.from(Order.class));
        List<Order> orders = em.createQuery(cq).getResultList();
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
