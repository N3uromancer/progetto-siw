<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Customers</title>
</head>
<body>
<f:view>
<h1>Customers</h1>
<h:form>
<table>
	<tr>
		<th>Id</th><th>Last name</th><th>Details</th>
	</tr>
	<c:forEach var="order" items="#{orderController.orders}">
		<tr>
			<td>${order.id}</td>
			<td></td>
			<td>
				<h:commandLink action="#{orderController.findAddress}" value="Address">
					<f:param name="id" value="#{order.id}" />
				</h:commandLink>
			</td>
		</tr>
	</c:forEach>
</table>
</h:form>
</f:view>
</body>
</html>