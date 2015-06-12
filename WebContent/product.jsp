<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Product</title>
		<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<f:view>
		<h1>${productController.product.name}</h1>
		<h2>Details</h2>
		<div>Code: ${productController.product.code}</div>
		<div>Price: ${productController.product.price}</div>
		<div>Description: ${productController.product.description}</div>
		<h:form>
			<h:commandLink action="#{productController.listProducts}"
						value="Back to products list" />
		</h:form>
	</f:view>
</body>
</html>