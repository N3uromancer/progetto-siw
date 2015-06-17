<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Not processed order</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="item">
		<div class="col-sm-12">
			<h1>Not Processed<span> Order</span></h1>
		</div>
	</div>
	<div class="col-sm-4 col-sm-offset-4">
		<div class="alert alert-danger">Some product in this order is not available in stock.</div>
			<f:view>
			<h:form>
				<h:commandLink styleClass="btn btn-default" action="#{orderController.listUnprocessedOrders}"
							value="Back to the Process orders list" />
			</h:form>
		</f:view>
	</div>
<jsp:include page="footer.jsp" />