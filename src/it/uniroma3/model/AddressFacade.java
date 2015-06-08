package it.uniroma3.model;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ejb.Stateless;
import javax.persistence.Query;

@Stateless(name="addressFacade")
public class AddressFacade {

    @PersistenceContext(unitName = "unit-jee-es2")
    private EntityManager em;

    public Address createAddress(){
    	Address address = new Address();
    	em.persist(address);
    	return address;
    }
    
	public void updateAddress(Address address) {
        em.merge(address);
	}
	
    private void deleteAddress(Address address) {
        em.remove(address);
    }
    
    
	public Address getAddressById(Long id) {
		Query q = em.createQuery("SELECT a FROM Address a WHERE a.id = :id");
		q.setParameter("id", id);
		Address address = (Address) q.getSingleResult();
		return address;
	}
	
	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
    
    
}
