<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Address</title>
</head>
<body>
<h1>Address of ${orderController.customer.firstName} ${orderController.lastName}</h1>
	<f:view>
		<h1>${orderController.customer.address.id}</h1>
		<h2>Details</h2>
		<div>Street: ${orderController.customer.address.street}</div>
		<div>City: ${orderController.customer.address.city}</div>
		<div>Country: ${orderController.customer.address.country}</div>
		<div>State: ${orderController.customer.address.state}</div>
		<div>Zipcode: ${orderController.customer.address.zipcode}</div>
		<h:form>
			<h:commandLink action="#{orderController.listOrders}"
						value="Back to order list" />
		</h:form>
	</f:view>
</body>
</html>