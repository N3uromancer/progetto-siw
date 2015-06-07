package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

	@Stateless(name="orderLineFacade")
	public class OrderLineFacade {
		
	    @PersistenceContext(unitName = "unit-jee-es2")
	    private EntityManager em;
	    
	    public OrderLine createOrderLine(float unitPrice, int quantity){
	    	OrderLine orderLine = new OrderLine(unitPrice, quantity);
	    	em.persist(orderLine);
	    	return orderLine;
	    }
	    
		public EntityManager getEm() {
			return em;
		}

		public void setEm(EntityManager em) {
			this.em = em;
		}
		
}