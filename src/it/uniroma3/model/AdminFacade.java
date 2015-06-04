package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

	@Stateless
	public class AdminFacade {
		
	    @PersistenceContext(unitName = "unit-jee-es2")
	    private EntityManager em;
	    
		public Admin getAdminByName(String name) {
			Query q = em.createQuery("SELECT a FROM Admin a WHERE a.name = :name");
			q.setParameter("name", name);
			Admin admin = (Admin) q.getSingleResult();
			return admin;
		}

		public EntityManager getEm() {
			return em;
		}

		public void setEm(EntityManager em) {
			this.em = em;
		}
		
}