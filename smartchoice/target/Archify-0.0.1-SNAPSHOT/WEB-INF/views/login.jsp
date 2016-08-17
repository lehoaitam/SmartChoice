<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">@import url(css/login.css);</style>
</head>
<body>
	
		<div id="header">
			
				<h1>smartchoice Online Store</h1>
		
		</div>


	
	<div id="section">
	<c:if test="${not empty error}">
		<div cssStyle="color: red;" >
			<spring:message
				code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
			<br />
		</div>
	</c:if>
	<form class="form-1" action="<spring:url value="/postLogin"></spring:url>"
		method="post">
		
			<p class="field">
				<input placeholder="User Name" name='username' type="text">
			</p>
			<p class="field">
				<input placeholder="Password" name='password' type="password"
					value="">
			</p>
			<p class="submit">
			<button type="submit" name="submit"><i>-></i></button>

			</p>
		</form>
		<spring:url value="/customer/addCustomer" var="newCustomer">
	</spring:url>
	<a href="${newCustomer}">New Customer</a>
	</div>
	

</body>