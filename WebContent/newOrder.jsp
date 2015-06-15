<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Current Order</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<f:view>
	<div class="item">
		<div class="col-sm-12">
			<h1>Current<span> Order</span></h1>
		</div>
	</div>
	<section id="cart_items">
		<div class="container">
			<h:form>
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-6">
						<h:commandLink styleClass="btn btn-default padding-left" action = "#{productController.listProducts}" value = "Add product"/>
					</div>
					<div class="col-sm-4">
						<h:commandLink styleClass="btn btn-default padding-right" action = "#{orderController.completeOrder}" value = "complete order" />
					</div>
				</div>
			</h:form>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="description">Product</td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="ol" items="${orderController.currentOrder.orderLines}">
							<tr>
								<td class="cart_description">
									<h4>${ol.product.name}</h4>
									<p>${ol.product.code}</p>
								</td>
								<td class="cart_price">
									<p>${ol.unitPrice}</p>
								</td>
								<td class="cart_quantity">
									<div class="cart_quantity_button">
										<p>${ol.quantity}</p>
									</div>
								</td>
								<td class="cart_total">
									<p class="cart_total_price">${ol.unitPrice*ol.quantity}</p>
								</td>
								<td class="cart_delete">
									<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>	
	</f:view>
	<jsp:include page="footer.jsp" />