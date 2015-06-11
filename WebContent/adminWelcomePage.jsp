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
</head>
<body>
	<f:view>
		<h1>Area Admin</h1>
		<ul>
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
				<a href='<c:url value="/faces/newCustomer.jsp" />'>Insert a new customer</a></li>
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
		</ul>
	</f:view>
</body>
</html>