<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>New Customer</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="item">
		<div class="col-sm-12">
			<h1>New<span> Customer</span></h1>
		</div>
	</div>
<f:view>
<div class="row">  	
	<div class="col-sm-12">
		<div class="contact-form">
			<h:form styleClass="contact-form row">
    			<div class="form-group col-md-6">
    				First name: <h:inputText value="#{customerController.firstName}" 
    								styleClass="form-control"
                				    required="true"
                    	 			requiredMessage="First name is mandatory"
                    	 			id="firstName"/> <h:message style="color:red" for="firstName" />
				</div>
    			<div class="form-group col-md-6">
    				Last name: <h:inputText value="#{customerController.lastName}" 
    									styleClass="form-control"
                		     			required="true"
                	    	 			requiredMessage="Last name is mandatory"
                	    	 			id="lastName"/> <h:message style="color:red" for="lastName" />
				</div>
    			<div class="form-group col-md-6">
    				Email: <h:inputText value="#{customerController.email}" 
    							 styleClass="form-control"
                    			 required="true"
                    			 requiredMessage="Email is mandatory"
                    			 id="email"/> <h:message styleClass="red" for="email" />
				</div>
    			<div class="form-group col-md-6">
    				Password: <h:inputSecret value="#{customerController.password}" 
    							 styleClass="form-control"
                    			 required="true"
                    			 requiredMessage="Password is mandatory"
                    			 id="password"/> <h:message style="color:red" for="password" />
				</div>
    			<div class="form-group col-md-6">
    				Phone number: <h:inputText value="#{customerController.phoneNumber}" 
    								styleClass="form-control"
                				    required="true"
                    	 			requiredMessage="Phone number is mandatory"
                    	 			id="phoneNumber"/> <h:message style="color:red" for="phoneNumber" />
				</div>
    			<div class="form-group col-md-6">
    				City: <h:inputText value="#{customerController.city}" 
    								styleClass="form-control"
                				    required="true"
                    	 			requiredMessage="City is mandatory"
                    	 			id="city"/> <h:message style="color:red" for="city" />
				</div>
    			<div class="form-group col-md-6">
    				Street: <h:inputText value="#{customerController.street}" 
    									styleClass="form-control"
                		     			required="true"
                	    	 			requiredMessage="Street is mandatory"
                	    	 			id="street"/> <h:message style="color:red" for="street" />
				</div>
    			<div class="form-group col-md-6">
    				Country: <h:inputText value="#{customerController.country}" 
    							 styleClass="form-control"
                    			 required="true"
                    			 requiredMessage="Country is mandatory"
                    			 id="country"/> <h:message style="color:red" for="country" />
				</div>
    			<div class="form-group col-md-6">
    				State: <h:inputText value="#{customerController.state}" 
    							 styleClass="form-control"
                    			 required="true"
                    			 requiredMessage="State is mandatory"
                    			 id="state"/> <h:message style="color:red" for="state" />
				</div>
    			<div class="form-group col-md-6">
    				Zip code: <h:inputText value="#{customerController.zipcode}" 
    							 styleClass="form-control"
                    			 required="true"
                    			 requiredMessage="Zip code is mandatory"
                    			 id="zipcode"/> <h:message style="color:red" for="zipcode" />
				</div>
				<div class="form-group col-md-12">
					<h:commandButton value="Create"  styleClass="btn btn-primary" 
								action="#{customerController.createCustomer}"/>
				</div>
			</h:form>
		</div>
	</div>
</div>
</f:view>
<jsp:include page="footer.jsp" />