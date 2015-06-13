package it.uniroma3.model;

import javax.persistence.*;
import java.util.*;

	@Entity
	@NamedQuery(name = "findAllProducts", query = "SELECT p FROM Product p")
	public class Product {
        
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;

	private Float unitPrice;
	
	@Column(length = 2000)
	private String description;

	@Column(nullable = false)
	private String code;
	
	private int quantity;
	
	@ManyToMany(mappedBy = "products")
	private List<Provider> providers;
	
	public Product() {
    }

	public Product(String name, Float price, String description, String code) {
        this.name = name;
        this.unitPrice = price;
        this.description = description;
        this.code = code;
}

    //          Getters & Setters        
    
   public Long getId() {
        return id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public Float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Float price) {
        this.unitPrice = price;
    }
	
    public boolean equals(Object obj) {
        Product product = (Product)obj;
        return this.getCode().equals(product.getCode());
    }

    public int hashCode() {
         return this.code.hashCode();
    }

	public void setId(Long id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public List<Provider> getProviders() {
		return providers;
	}

	public void setProviders(List<Provider> providers) {
		this.providers = providers;
	}
}