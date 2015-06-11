<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Operation info</title>
</head>
<body>
<h2>Product has been added to your order</h2>
<f:view>
<h:form>
   
	<div>
		<h:commandLink action = "#{productController.listProductsForCustomer}" value = "show products list" /><br />
		<h:commandLink action = "#{orderController.completeOrder}" value = "complete order" />
	</div>
</h:form>
</f:view>
</body>
</html>