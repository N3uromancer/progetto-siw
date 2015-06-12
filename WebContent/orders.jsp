<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Orders</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
<h1>Orders</h1>
<f:view>
<h:form>
<table border="solid">
	<tr>
		<th>ID</th><th>Customer</th><th>Address</th><th>Order state</th>
	</tr>
	<c:forEach var="order" items="#{orderController.orders}">
		<tr>
			<td>${order.id}</td>
			<td>${order.customer.firstName} ${order.customer.lastName}</td>
			<td>
				${order.customer.address.street}, ${order.customer.address.city} - ${order.customer.address.country} (${order.customer.address.zipCode}) 
			</td>
			<td>
			${order.state}
			</td>
		</tr>
	</c:forEach>
</table>
</h:form>
</f:view>
</body>
</html>