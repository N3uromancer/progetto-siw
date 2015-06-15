package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

	@Stateless(name="orderLineFacade")
	public class OrderLineFacade {
		
	    @PersistenceContext(unitName = "unit-jee-es2")
	    private EntityManager em;
	    
	    public OrderLine createOrderLine(float unitPrice, int quantity, Product product){
	    	OrderLine orderLine = new OrderLine(unitPrice, quantity, product);
	    	em.persist(orderLine);
	    	return orderLine;
	    }
	    
	    public List<OrderLine> getOrderLinesByOrderId(Long id){
			Query q = em.createQuery("SELECT ol FROM OrderLine ol, Order o WHERE o.id = :id");
			q.setParameter("id", id);
			List<OrderLine> orderLines = (List<OrderLine>) q.getResultList();
			return orderLines;
	    }
	    
		public void updateOrderLine(OrderLine orderLine) {
	        em.merge(orderLine);
		}
		
		public OrderLine setQuantity(OrderLine orderLine, int quantity){
			orderLine.setQuantity(quantity);
			return orderLine;
		}
		
		public EntityManager getEm() {
			return em;
		}

		public void setEm(EntityManager em) {
			this.em = em;
		}
}