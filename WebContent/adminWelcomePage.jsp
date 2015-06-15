<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Area Admin - Progetto SIW</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<f:view>
	<div class="item">
		<div class="col-sm-12">
			<h1><span>Admin</span> Area</h1>
		</div>
	</div> 
	<div class="row">
		<div class="col-sm-6">
			<div class="single-widget">
				<h2>Admin info</h2>
				<ul class="nav nav-pills nav-stacked">
					<li><label>Name:</label> ${adminController.loggedAdmin.name}</li>
				</ul>
			</div>
		</div>
		<div class="col-sm-6">
		<div class="single-widget">
		<h2>You can:</h2>
		<ul class="nav nav-pills nav-stacked">
			<li>
				<a href='<c:url value="/faces/newProduct.jsp" />'>Insert a new product</a>
			</li>
			<li>
				<h:form>
					<h:commandLink action="#{productController.listProducts}"
						value="List all Products" />
				</h:form>
			</li>
			<li>
				<a href='<c:url value="/faces/newCustomer.jsp" />'>Insert a new customer</a>
			</li>
			<li>
				<h:form>
					<h:commandLink action="#{customerController.listCustomers}"
						value="List all Customers" />
				</h:form>
			</li>
			<li>
				<h:form>
					<h:commandLink action="#{orderController.listOrders}"
						value="List all Orders" />
				</h:form>
			</li>
			<li>
				<h:form>
					<h:commandLink action="#{orderController.listUnprocessedOrders}"
						value="Process Orders" />
				</h:form>
			</li>
			<li>
				<h:form>
					<h:commandLink action="#{adminController.logout}"
									value="Logout" />
				</h:form>
			</li>
		</ul>
		</div>
		</div>
	</div>
	</f:view>
	<jsp:include page="footer.jsp" />