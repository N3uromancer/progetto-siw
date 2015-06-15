<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>Admin Login - Progetto SIW</title>
	<jsp:include page="import.jsp" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="item">
		<div class="col-sm-12">
			<h1><span>Admin</span> Login</h1>
		</div>
	</div> 
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="login-form"><!--login form-->
						<f:view>
							<h:form>
								<div>Name: <h:inputText value="#{adminController.name}" 
                     							required="true"
                     							requiredMessage="Name is mandatory"
                     							id="name"/> <h:message for="name" />
                     			</div>
							    <div>Password: <h:inputSecret value="#{adminController.password}" 
                    				 				required="true"
                    				 				requiredMessage="Password is mandatory"
                     								id="password"/> <h:message for="password" />
								</div>
								<div>
									<h:commandButton styleClass="btn btn-default" value="Login"  action="#{adminController.login}"/>
								</div>
							</h:form>
						</f:view>
					</div><!--/login form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
</body>
</html>