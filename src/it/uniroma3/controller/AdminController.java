package it.uniroma3.controller;

import it.uniroma3.model.*;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.context.FacesContext;



@ManagedBean
@SessionScoped
public class AdminController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String name;
	private String password;
	private Admin loggedAdmin;

	@EJB
	private AdminFacade adminFacade;
	
	public String login(){
		String nextPage;
		try{
			Admin admin = adminFacade.getAdminByName(this.name);
			if(admin.verifyPassword(this.password)){
				//FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("loggedAdmin", admin);
				FacesContext.getCurrentInstance().getExternalContext().getSessionMap().remove("customer");
				nextPage = "adminWelcomePage";
				this.setLoggedAdmin(admin);
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
	
	public String logout(){
		FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
		this.loggedAdmin = null;
		return "adminLogin";
	}
	
	public Admin getLoggedAdmin(){
		//this.loggedAdmin = (Admin) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("loggedAdmin");
		return loggedAdmin;
	}
	public void setLoggedAdmin(Admin admin){
		this.loggedAdmin = admin;
	}

}


