<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Orders</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<f:view>
	<div class="item">
		<div class="col-sm-12">
			<h1>My<span> Orders</span></h1>
		</div>
	</div>
	<h:form>
		<div class="col-sm-12">
			<div class="table-responsive">
				<table class="table table-condensed" border="solid">
					<thead>
						<tr>
							<th>Order Id</th><th>State</th><th>Orderline</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="order" items="#{orderController.orders}">
							<tr>
								<td>${order.id}</td>
								<td>${order.state}</td>
								<td>
									<h:commandLink styleClass="btn btn-default" action="#{orderController.getOrderInfo}" value="View" >
										<f:param name="orderId" value="#{order.id}" />
									</h:commandLink>	
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</h:form>
</f:view>
<jsp:include page="footer.jsp" />