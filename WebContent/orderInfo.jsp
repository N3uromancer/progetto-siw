<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Order info</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>Order info</h1>
	<f:view>
		<h:form>
			<table border="solid">
				<tr>
					<th>product</th> <th>quantity</th><th>price</th>
				</tr>
				<c:forEach var="orderLine" items="#{orderController.orderLines}">
					<tr>
						<td>${orderLine.prouct.name}</td>
						<td>${orderLine.quantity}</td>
						<td>${orderLine.unitPrice}</td>
					</tr>
				</c:forEach>
			</table>
			<h:commandLink action = "#{orderController.listCustomerOrders}" value = "go back to your orders info"/>
		</h:form>
	</f:view>
</body>
</html>