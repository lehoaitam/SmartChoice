<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<% response.setStatus(404); %>
 
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>404 error</title>
  </head>
  <body>

<div>

<img src="<spring:url value="/resources/images/P404-error-page.jpg"  htmlEscape="true" />" alt="Page not found!"  />

<h2>${requestScope['javax.servlet.error.message']}</h2>
</div> 

		<div>
			<p>
				<a href="<spring:url value="/home" />">
					<span>Home</span> 
				</a>
			</p>
		</div>

  </body>
</html>