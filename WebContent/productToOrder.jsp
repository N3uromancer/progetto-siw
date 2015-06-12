<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Add product</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<f:view>
		<h:form>
			Product code:<h:inputText value="#{orderController.productCode}" 
                     required="true"
                     requiredMessage="code is mandatory"
                     id="code"/> <h:message for="code" />
            Product quantity:<h:inputText value="#{orderController.quantity}" 
                     required="true"
                     requiredMessage="quantity is mandatory"
                     id="quantity"/> <h:message for="quantity" />
            <h:commandButton value="Submit"  action="#{orderController.addOrderLine}"/>          
		</h:form>
	</f:view>
</body>
</html>