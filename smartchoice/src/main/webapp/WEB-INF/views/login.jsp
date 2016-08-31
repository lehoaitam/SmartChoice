<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!--<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">   -->
	<link rel="stylesheet" href="<spring:url value="/resource/js/w3.css"/>">
<style>
#main {
	text-align: center;
}

</style>
</head>
<body class="w3-container">
	<div  id="main">
		<div class="w3-blue">
			
				<h1>Smartchoice Online Store</h1>
		
		</div>

		<br>
	
		<div id="section">
			<c:if test="${not empty error}">
				<div cssStyle="color: red;" >
					<spring:message
						code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
					<br />
				</div>
			</c:if>
			<form class="w3-container" action="<spring:url value="/postLogin" ></spring:url>"
				method="post"    style="text-align: -webkit-center;">
				
					
						<input class="w3-input" placeholder="User Name" name='username' type="text" style="width: 250px;">
					
					
						<input class="w3-input" placeholder="Password" name='password' type="password"
							value=""  style="width: 250px;">
					
					<br>
					<p class="submit">
					<button class="w3-btn w3-white w3-border w3-border-blue w3-round" type="submit" name="submit"><i>Login</i></button>
		
					</p>
			</form>
			<spring:url value="/customer/addCustomer" var="newCustomer"></spring:url>
			
			<div class="w3-container" >
				<a href="${newCustomer}" class="w3-text-blue">New Customer</a>
			</div>
		</div>
	</div>

</body>