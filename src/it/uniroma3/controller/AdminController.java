package it.uniroma3.controller;

import it.uniroma3.model.*;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class AdminController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String name;
	private String password;

	@EJB
	private AdminFacade adminFacade;
	
	public String login(){
		String nextPage;
		try{
			Admin admin = adminFacade.getAdminByName(this.name);
			if(admin.verifyPassword(this.password)){
				nextPage = "adminWelcomePage";
			} else nextPage = "adminLogin";
		} 	
		catch(Exception e){
			nextPage = "adminLogin";
		}
		return nextPage;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}


