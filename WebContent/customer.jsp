<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Customer</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<f:view>
	<div class="item">
		<div class="col-sm-12">
			<h1><span>Customer</span> Info</h1>
		</div>
	</div>
		<div class="col-sm-6">
			<div class="single-widget">
				<h2>Customer</h2>
				<ul class="nav nav-pills nav-stacked">
					<li><b>First Name:</b> ${customerController.firstName}</li>
					<li><b>Last Name:</b> ${customerController.lastName}</li>
					<li><b>Email:</b> ${customerController.email}</li>
					<li><b>Phone:</b> ${customerController.phoneNumber}</li>
				</ul>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="single-widget">
				<h2>Address</h2>
				<ul class="nav nav-pills nav-stacked">		
					<li><b>City:</b> ${customerController.city}</li>
					<li><b>Street:</b> ${customerController.street}</li>
					<li><b>Country:</b> ${customerController.country}</li>
					<li><b>State:</b> ${customerController.state}</li>
					<li><b>Zipcode:</b> ${customerController.zipcode}</li>
				</ul>
			</div>
		</div>
		<div class="col-sm-2 col-sm-offset-5">
			<h:form>
				<h:commandLink styleClass="btn btn-default" action="#{customerController.listCustomers}"
									value="List Customers" />
			</h:form>
		</div>
		</f:view>
	<jsp:include page="footer.jsp" />