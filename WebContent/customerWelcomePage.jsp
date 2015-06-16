<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII" isELIgnored = "false" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Customer Welcome Page</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<f:view>
	<div class="item">
		<div class="col-sm-12">
			<h1><span>Customer</span> Area</h1>
		</div>
	</div> 
	<div class="row">
		<div class="col-sm-4">
			<div class="single-widget">
				<h2>Customer info</h2>
				<ul class="nav nav-pills nav-stacked">
					<li><label>First name:</label> ${customerController.customer.firstName}</li>
					<li><label>Last name:</label> ${customerController.customer.lastName}</li>
					<li><label>Email:</label> ${customerController.customer.email}</li>
					<li><label>Phone number:</label> ${customerController.customer.phoneNumber}</li>
				</ul>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="single-widget">
				<h2>Customer Address</h2>
				<ul class="nav nav-pills nav-stacked">
					<li><label>City:</label> ${customerController.customer.address.city}</li>
					<li><label>Street:</label> ${customerController.customer.address.street}</li>
					<li><label>Country:</label> ${customerController.customer.address.country}</li>
					<li><label>State:</label> ${customerController.customer.address.state}</li>
					<li><label>Zip code:</label> ${customerController.customer.address.zipCode}</li>
				</ul>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="single-widget">
				<h2>You can:</h2>
				<ul class="nav nav-pills nav-stacked">
					<c:if test="${orderController.currentOrder==null}">
						<li>
							<h:form>
								<h:commandLink action = "#{orderController.createOrderSimple}" value = "Create a new order"></h:commandLink>
							</h:form>
						</li>
					</c:if>
					<c:if test="${orderController.currentOrder!=null}">
						<li>
							<h:form>
								<h:commandLink action = "#{productController.listProductsForCustomer}" value = "Add product to your current order"></h:commandLink>
							</h:form>
						</li>
					</c:if>
					<li>
						<h:form>
							<h:commandLink action = "#{orderController.listCustomerOrders}" value = "List all your orders"></h:commandLink>
						</h:form>
					</li>
					<li>
						<h:form>
							<h:commandLink action="#{customerController.logout}"
								value="Logout" />
						</h:form>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</f:view>
	<jsp:include page="footer.jsp" />