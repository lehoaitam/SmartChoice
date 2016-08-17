<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
<style type="text/css">
@import url(css/registration.css);
</style>
</head>
<body>
	<%@ include file="headerClient.jsp"%>
	<div class="wrapper">
		<spring:url value="/customer/saveCustomer" var="saveCustomer">
		</spring:url>
		<form:form id="form-1" modelAttribute="newCustomer" action="${saveCustomer}"
			method="POST">


			<fieldset>

				<legend>Registeration Form</legend>

				<div>
					<form:input id="firstName" path="firstName" type="text"
						placeholder="First Name" />
					<form:errors path="firstName" cssStyle="color: red;" />
				</div>

				<div>
					<form:input id="lastName" path="lastName" type="text"
						placeholder="Last Name" />
					<form:errors path="lastName" cssStyle="color: red;" />
				</div>


				<div>

					<form:input id="emailAdress" path="emailAdress" type="text"
						placeholder="Email Address" />
					<form:errors path="emailAdress" cssStyle="color: red;" />
				</div>

				<div>
					<form:input id="address" path="address" type="text"
						placeholder="Address" />
					<form:errors path="address" cssStyle="color: red;" />
				</div>
				<div>
					<form:input id="username" path="credentials.username" type="text"
						placeholder="User Name" />
					<form:errors path="credentials.username" cssStyle="color: red;" />

				</div>

				<div>
					<form:password id="password" path="credentials.password"
						placeholder="Password" />
					<form:errors path="credentials.password" cssStyle="color: red;" />
				</div>

				<form:hidden path="credentials.role" value="ROLE_CUSTOMER" />
				<div>

					<input type="submit" id="submit" value="Register" />
				</div>
			</fieldset>
		</form:form>
	</div>


</body>
</html>
