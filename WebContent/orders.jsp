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
	<div class="item">
		<div class="col-sm-12">
			<h1><span>Orders</span> List</h1>
		</div>
	</div> 
	<f:view>
		<h:form>
			<section>
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="left-sidebar">
								<div class="panel-group category-products" id="accordian">
									<c:forEach var="order" items="#{orderController.orders}">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<h:commandLink style="color:red" action="#{orderController.deleteOrder}" value="x">
														<f:param name="orderId" value="#{order.id}" />
													</h:commandLink>
													<a data-toggle="collapse" data-parent="#accordian" href="#${order.id}">
														<span class="badge pull-right"><i class="fa fa-plus"></i></span>
														Order ID: ${order.id} | Order state: ${order.state}
													</a>
												</h4>
											</div>
											<div id="${order.id}" class="panel-collapse collapse">
												<div class="panel-body">
													<ul>
														<li><b>Customer Info</b></li>
														<li>First name: ${order.customer.firstName}</li>
														<li>Last name: ${order.customer.lastName}</li>
														<li>Email: ${order.customer.email}</li>
														<li>Phone: ${order.customer.phoneNumber}</li>
														<li>City: ${order.customer.address.city}</li>
														<li>Street: ${order.customer.address.street}</li>
														<li>Country: ${order.customer.address.country}</li>
														<li>State: ${order.customer.address.state}</li>
														<li>Zipcode: ${order.customer.address.zipCode}</li>
													</ul>
												</div>
											</div>
										</div>				
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>	
	</h:form>
</f:view>
<jsp:include page="footer.jsp" />