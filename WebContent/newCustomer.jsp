<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>New Customer</title>
	<jsp:include page="import.jsp" />
</head>
<body>
<f:view>
<h:form>
	<jsp:include page="header.jsp" />
    <div>First name: <h:inputText value="#{customerController.firstName}" 
                     required="true"
                     requiredMessage="First name is mandatory"
                     id="firstName"/> <h:message for="firstName" />
	</div>
    <div>Last name: <h:inputText value="#{customerController.lastName}" 
                     required="true"
                     requiredMessage="Last name is mandatory"
                     id="lastName"/> <h:message for="lastName" />
	</div>
    <div>Email: <h:inputText value="#{customerController.email}" 
                     required="true"
                     requiredMessage="Email is mandatory"
                     id="email"/> <h:message for="email" />
	</div>
    <div>Password: <h:inputSecret value="#{customerController.password}" 
                     required="true"
                     requiredMessage="Password is mandatory"
                     id="password"/> <h:message for="password" />
	</div>
	<div>
		<h:commandButton value="Submit"  action="#{customerController.createCustomer}"/>
	</div>
	<h:commandLink action="#{customerController.listCustomers}"
						value="List all Customers" />
</h:form>
</f:view>
</body>
</html>