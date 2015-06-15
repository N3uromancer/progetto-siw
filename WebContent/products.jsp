<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Products</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
<f:view>
	<div class="item">
		<div class="col-sm-12">
			<h1><span>Products</span> list</h1>
		</div>
	</div> 
	<h:form>
			<div class="row">
				<div class="col-sm-12 padding-right">
					<div class="features_items"><!--features_items-->
						<c:forEach var="product" items="#{productController.products}">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<h2>${product.price}&euro;</h2>
											<p>${product.name}</p>
											<a href="#" class="btn btn-default add-to-cart">Details</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2>${product.price}&euro;</h2>
												<p>${product.name}</p>
													<h:commandLink styleClass="btn btn-default add-to-cart" action="#{productController.findProduct}" value="Details">
														<f:param name="id" value="#{product.id}" />
													</h:commandLink>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</h:form>
	</f:view>
</body>
</html>