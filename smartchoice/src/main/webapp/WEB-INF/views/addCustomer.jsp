<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
<link rel="stylesheet" href="<spring:url value="/resource/js/w3.css"/>">
<style type="text/css">
@import url(css/registration.css);
</style>
</head>
<body  class="w3-container">
	<%@ include file="headerClient.jsp"%>
	<div class="wrapper">
		<spring:url value="/customer/saveCustomer" var="saveCustomer">
		</spring:url>
		<br>
		<form:form id="form-1" modelAttribute="newCustomer" action="${saveCustomer}"
			method="POST" class="w3-container">


			<fieldset>

				<legend>Registeration Form1</legend>

				<div>
					<form:input id="firstName" path="firstName" type="text"
						placeholder="First Name" class="w3-input" style="width: 250px;"/>
					<form:errors path="firstName" cssStyle="color: red;" />
				</div>

				<div>
					<form:input id="lastName" path="lastName" type="text"
						placeholder="Last Name" class="w3-input" style="width: 250px;"/>
					<form:errors path="lastName" cssStyle="color: red;" />
				</div>


				<div>

					<form:input id="emailAdress" path="emailAdress" type="text"
						placeholder="Email Address" class="w3-input" style="width: 250px;"/>
					<form:errors path="emailAdress" cssStyle="color: red;" />
				</div>

				<div>
					<form:input id="address" path="address" type="text"
						placeholder="Address" class="w3-input" style="width: 250px;"/>
					<form:errors path="address" cssStyle="color: red;" />
				</div>
				<div>
					<form:input id="username" path="credentials.username" type="text"
						placeholder="User Name" class="w3-input" style="width: 250px;"/>
					<form:errors path="credentials.username" cssStyle="color: red;" />

				</div>

				<div>
					<form:password id="password" path="credentials.password"
						placeholder="Password" class="w3-input" style="width: 250px;"/>
					<form:errors path="credentials.password" cssStyle="color: red;" />
				</div>

				<form:hidden path="credentials.role" value="ROLE_CUSTOMER" />
				<br>
				<div>

					<input type="submit" id="submit" value="Register" />
				</div>
			</fieldset>
		</form:form>
	</div>


</body>
</html>
