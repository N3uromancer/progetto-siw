<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Customer Login</title>
</head>
<body>
<f:view>
<h:form>
    <div>Name: <h:inputText value="#{customerController.name}" 
                     required="true"
                     requiredMessage="Name is mandatory"
                     id="name"/> <h:message for="name" />
	</div>
    <div>Password <h:inputText value="#{customerController.password}" 
                     required="true"
                     requiredMessage="Password is mandatory"
                     id="password"/> <h:message for="password" />
	</div>
	<div>
		<h:commandButton value="Submit"  action="#{customerController.login}"/>
	</div>
</h:form>
</f:view>
</body>
</html>