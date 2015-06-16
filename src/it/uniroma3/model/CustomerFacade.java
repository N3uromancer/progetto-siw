package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.faces.context.FacesContext;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

import java.util.List;

	@Stateless
	public class CustomerFacade {
		
	    @PersistenceContext(unitName = "unit-jee-es2")
	    private EntityManager em;
	    
		public Customer createCustomer(String firstName, String lastName) {
			Customer customer = new Customer(firstName, lastName);
			em.persist(customer);
			return customer;
		}
		
		public Customer createCustomer(String firstName, String lastName, String email, String password) {
			Customer customer = new Customer(firstName, lastName, email, password);
			em.persist(customer);
			return customer;
		}

		public Customer createCustomer(String firstName, String lastName, String email, String password, int phoneNumber, 
										String street, String city, String state, String country, String zipcode) {
			Address address = new Address(street, city, state, zipcode, country);
			em.persist(address);
			Customer customer = new Customer(firstName, lastName, email, password, phoneNumber, address);
			em.persist(customer);
			return customer;
		}
		
		public Customer getCustomerByEmail(String email) {
			Query q = em.createQuery("SELECT c FROM Customer c WHERE c.email = :email");
			q.setParameter("email", email);
			Customer customer = (Customer) q.getSingleResult();
			return customer;
		}
		
		public List<Customer> getAllCustomers() {
	        CriteriaQuery<Customer> cq = em.getCriteriaBuilder().createQuery(Customer.class);
	        cq.select(cq.from(Customer.class));
	        List<Customer> customers = em.createQuery(cq).getResultList();
			return customers;
		}
		
		public Customer getCustomerFromIdInRequestMap(){
			String stringId = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("customerId");
			long id = Long.valueOf(stringId).longValue();
			Customer customer = this.getCustomer(id);
			return customer;
		}
		
		public Customer getCustomer(Long id){
			/*Query q = em.createQuery("SELECT c FROM Customer c WHERE c.id = :id");
			q.setParameter("id", id);
			Customer customer = (Customer) q.getSingleResult();
			return customer;*/
			Customer customer = em.find(Customer.class, id);
			return customer;
		}
		
		public void updateCustomer(Customer customer) {
	        em.merge(customer);
		}
		
	    private void deleteCustomer(Customer customer) {
	        em.remove(customer);
	    }

		public void deleteCustomer(Long id) {
	        Customer customer = em.find(Customer.class, id);
	        deleteCustomer(customer);
		}
		
		public void deleteCustomerByEmail(String email) {
	        Customer customer = this.getCustomerByEmail(email);
	        deleteCustomer(customer);
		}

		public Customer getCustomer(String email) {
			Customer customer = em.find(Customer.class, email);
			return customer;	
		}
	
}