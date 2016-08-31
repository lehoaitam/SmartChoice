<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smartchoice Online Store</title>
<!--<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">   -->
	<link rel="stylesheet" href="<spring:url value="/resource/js/w3.css"/>">
<style>
.addProductLabel{
    display:inline-block;
    width:200px;
}
</style>
</head>
<body class="w3-container">
	<div class="w3-blue"
		style="border: 1px solid gray; background: #999999; height: 100px; position: absolute; top: 0px; width: 100%">
		<p
			style="text-align: center; font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; font-size: 26px">Smartchoice Online Store</p>
	</div>
	<spring:url value="/logout" var="logout">
	</spring:url>
	<div id="list1">
		<!-- 
		<ul >
			<li><a
				href="${pageContext.request.contextPath}/admin/listCategory">List
					Category</a>|</li>
			<li><a
				href="${pageContext.request.contextPath}/admin/addCategory">Add
					Category</a>|</li>
			<li><a
				href="${pageContext.request.contextPath}/admin/addProduct">Add
					Product</a></li>|
			<li>Language: [<a href="?language=en">English</a> | <a href="?language=fn_FN">French</a>]
			</li>

			<li><a href="${logout}">Logout</a></li>
		</ul>
		-->
		<ul class="w3-navbar w3-border w3-light-grey">
		  <li><a class="w3-hover-blue" href="${pageContext.request.contextPath}/admin/listCategory">List Category</a></li>
		  <li><a class="w3-hover-blue" href="${pageContext.request.contextPath}/admin/addCategory">Add Category</a></li>
		  <li><a class="w3-hover-blue" href="${pageContext.request.contextPath}/admin/addProduct">Add Product</a></li>
		  <li><a class="w3-hover-blue" href="${logout}">Log out</a></li>
		</ul>
	</div>