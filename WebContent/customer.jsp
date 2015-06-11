<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Customer</title>
</head>
<body>
	<f:view>
	<ul>
		<li>Id : ${customerController.customer.id}</li>
		<li>First Name : ${customerController.customer.firstName}</li>
		<li>Last Name : ${customerController.customer.lastName}</li>
		<li>Email : ${customerController.customer.email}</li>
	</ul>
	<h:form>
		<h:commandLink action="#{customerController.listCustomers}"
					value="Back" />
	</h:form>
	</f:view>
</body>
</html>