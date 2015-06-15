<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>New Product</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="item">
		<div class="col-sm-12">
			<h1>New<span> Product</span></h1>
		</div>
	</div>
<f:view>
<div class="row">  	
	<div class="col-sm-12">
		<div class="contact-form">
<h:form styleClass="contact-form row">
    <div class="form-group col-md-6">
    	Name: <h:inputText value="#{productController.name}" 
    				styleClass="form-control"
                     required="true"
                     requiredMessage="Name is mandatory"
                     id="name"/> <h:message for="name" />
	</div>
    <div class="form-group col-md-6">
    	Code: <h:inputText styleClass="form-control" value="#{productController.code}" 
                     required="true"
                     requiredMessage="Code is mandatory"
                     id="code"/> <h:message for="code" />
	</div>
    <div class="form-group col-md-6">
    	Price: <h:inputText styleClass="form-control" value="#{productController.price}" 
                     required="true"
                     requiredMessage="Price is mandatory"
                     converterMessage="Price must be a number"
                     id="price"/> <h:message for="price" />
	</div>
    <div class="form-group col-md-6">
    	Quantity: <h:inputText styleClass="form-control" value="#{productController.quantity}" 
                     required="true"
                     requiredMessage="Quantity is mandatory"
                     converterMessage="Quantity must be a number"
                     id="quantity"/> <h:message for="quantity" />
	</div>
    <div  class="form-group col-md-12">
    	Description: <h:inputTextarea styleClass="form-control" value="#{productController.description}" 
    				required="false" 
    				cols="20" 
    				rows="5" /> 
                     
	</div>
	<div class="form-group col-md-12">
		<h:commandButton styleClass="btn btn-primary"  value="Create"  action="#{productController.createProduct}"/>
	</div>
</h:form>
</div>
</div>
</div>
</f:view>
<jsp:include page="footer.jsp" />