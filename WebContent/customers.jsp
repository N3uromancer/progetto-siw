<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Customers</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
<f:view>
<h1>Customers</h1>
<h:form>
<table>
	<tr>
		<th>First name</th><th>Last name</th><th>Details</th>
	</tr>
	<c:forEach var="customer" items="#{customerController.customers}">
		<tr>
			<td>${customer.firstName}</td>
			<td>${customer.lastName}</td>
			<td>
				<h:commandLink action="#{customerController.findCustomer}" value="+">
					<f:param name="customerId" value="#{customer.id}" />
				</h:commandLink>
			</td>
		</tr>
	</c:forEach>
</table>
</h:form>
</f:view>
</body>
</html>