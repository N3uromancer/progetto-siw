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
	First Name : ${customerController.customer.firstName} <br />
	Last Name : ${customerController.customer.lastName} <br />
	</f:view>
	<a href='<c:url value="/faces/admin.jsp" />'>Back</a>
</body>
</html>