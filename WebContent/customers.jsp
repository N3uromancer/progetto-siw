<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Customers</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="item">
		<div class="col-sm-12">
			<h1><span>Customers</span> List</h1>
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
									<c:forEach var="customer" items="#{customerController.customers}">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordian" href="#${customer.id}">
														<span class="badge pull-right"><i class="fa fa-plus"></i></span>
														<b>ID:</b> ${customer.id} | <b>Name:</b> ${customer.firstName} ${customer.lastName}
													</a>
												</h4>
											</div>
											<div id="${customer.id}" class="panel-collapse collapse">
												<div class="panel-body">
													<ul>
														<li><b>Customer Info</b></li>
														<li>First name: ${customer.firstName}</li>
														<li>Last name: ${customer.lastName}</li>
														<li>Email: ${customer.email}</li>
														<li>Phone: ${customer.phoneNumber}</li>
														<li>City: ${customer.address.city}</li>
														<li>Street: ${customer.address.street}</li>
														<li>Country: ${customer.address.country}</li>
														<li>State: ${customer.address.state}</li>
														<li>Zipcode: ${customer.address.zipCode}</li>
														<!--li>
															<h:commandLink action="#{customerController.findCustomer}" value="">
																	<f:param name="customerId" value="#{customer.id}" />
															</h:commandLink>
														</li-->													
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