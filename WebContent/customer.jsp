<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
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
</body>
</html>