<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Progetto SIW - Gabriele Di Bonaventura e Igor Proshchenko</title>
	<jsp:include page="import.jsp" />
</head>
<body>
<jsp:include page="header.jsp" />
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">	
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-12">
									<h1>Progetto<span> Sistemi Informativi su Web</span></h1>
									<h2>Gabriele Di Bonaventura e Igor Proshchenko</h2>
									<a href="contact.jsp" class="btn btn-default get">Our contact</a>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-12">
									<h1><span>Customer</span> login</h1>
									<h2>Log to the customer private area</h2>
									<a class="btn btn-default get" href='<c:url value="/faces/customerLogin.jsp" />'>Customer Login</a>
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-12">
									<h1><span>Admin</span> login</h1>
									<h2>Log to the admin private area</h2>
									<a class="btn btn-default get" href='<c:url value="/faces/adminLogin.jsp" />'>Admin Login</a>
								</div>
							</div>

							<div class="item">
								<div class="col-sm-12">
									<h1>List all<span> products</span></h1>
									<h2>View all products</h2>
									<f:view>
										<h:form>
											<h:commandLink styleClass="btn btn-default get" action="#{productController.listProducts}"
												value="List all Products" />
										</h:form>
									</f:view>
								</div>
							</div>							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
<jsp:include page="footer.jsp" />