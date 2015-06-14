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
		Welcome: ${customerController.customer.firstName}<br />
		<c:if test="${orderController.currentOrder==null}">
			<h:form>
				<h:commandLink action = "#{orderController.createOrderSimple}" value = "Create a new order"></h:commandLink>
			</h:form>
		</c:if>
		<c:if test="${orderController.currentOrder!=null}">
			<h:form>
				<h:commandLink action = "#{productController.listProductsForCustomer}" value = "Add product to your current order"></h:commandLink>
			</h:form>
		</c:if>
		<h:form>
				<h:commandLink action = "#{orderController.listCustomerOrders}" value = "List all your orders"></h:commandLink>
		</h:form>
		<h:form>
			<h:commandLink action="#{customerController.logout}"
						value="Logout" />
		</h:form>
	</f:view>
</body>
</html>

