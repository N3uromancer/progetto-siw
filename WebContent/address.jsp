<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Product</title>
</head>
<body>
	<f:view>
		<h1>${orderController.address.id}</h1>
		<h2>Details</h2>
		<div>Street: ${orderController.address.street}</div>
		<div>City: ${orderController.address.city}</div>
		<div>Country: ${orderController.address.country}</div>
		<div>State: ${orderController.address.state}</div>
		<div>Zipcode: ${orderController.address.zipcode}</div>
		<h:form>
			<h:commandLink action="#{productController.listOrders}"
						value="Back to order list" />
		</h:form>
	</f:view>
</body>
</html>