package it.uniroma3.model;
import javax.persistence.*;

@Entity 
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column (nullable = false)
	private String name;
	
	@Column (nullable = false)
	private String password;
	
	public Admin(String name, String password){
		this.name = name;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getId() {
		return id;
	}
	
	public boolean equals(Object o){
		Admin a = (Admin)o;
		return this.name.equals(a.getName()) && this.password.equals(a.getPassword());
	}
}