<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li>Progetto per il corso di Sistemi Informativi su Web</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="contactinfo pull-right">
							<ul class="nav nav-pills">
								<li><i>Gabriele Di Bonaventura e Igor Proshchenko</i></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<c:if test="${customerController.customer != null}">
									<li><a href="#"><i class="fa fa-crosshairs"></i> Checkout</a></li>
									<li><a href="#"><i class="fa fa-shopping-cart"></i> Order</a></li>
									<li><a href="customerWelcomePage.jsp"><i class="fa fa-user"></i> ${customerController.customer.email}</a></li>
								</c:if>
								<c:if test="${adminController.loggedAdmin != null}">
									<li><a href="#"><i class="fa fa-crosshairs"></i> Product</a></li>
									<li><a href="#"><i class="fa fa-shopping-cart"></i> Order</a></li>
									<li><a href="#"><i class="fa fa-user"></i> Customer</a></li>
									<li><a href="adminWelcomePage.jsp"><i class="fa fa-user"></i> ${adminController.loggedAdmin.name}</a></li>							
								</c:if>
								<c:if test="${customerController.customer == null && adminController.loggedAdmin == null}">
									<li><a href='<c:url value="/faces/adminLogin.jsp" />'><i class="fa fa-lock"></i> Admin Login</a></li>								
									<li><a href='<c:url value="/faces/customerLogin.jsp" />'><i class="fa fa-lock"></i> Customer Login</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html" class="active">Home</a></li>
								<li>
									<f:view>
										<h:form>
											<h:commandLink action="#{productController.listProducts}"
												value="Products" />
										</h:form>
									</f:view>
								</li>
								<li><a href="contact.jsp">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header>