<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Smartchoice Online Store</title>
<script type="text/javascript"
	src="<spring:url value="/resource/js/cart.js"/>"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.js"></script>
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>
<body class="w3-container">
	<%@ include file="headerClient.jsp"%>
	<table width="100%" border="1"
		style="margin-top: 50px; min-height: 400px" class="w3-table w3-striped w3-bordered w3-card-4">
		<tr>
			<td width="20%" valign="top">
				<table width="100%" border="1" class="w3-table w3-striped w3-bordered w3-card-4">
					<tr class="w3-blue">
						<td>Category</td>
					</tr>

						<tr>
							<td><a href='<spring:url value="/"></spring:url>'> All </a></td>
						</tr>
						
					<c:forEach var="category" items="${categories}">
						<tr>
							<td><a href="${category.id}">${category.type}</a></td>
						</tr>
					</c:forEach>
				</table>
			</td>
			<td width="60%" valign="top">
				<form id="products">

					<table  class="w3-table w3-striped w3-bordered w3-card-4">
						<c:forEach var="product" items="${products}">
							<tr>
								<td><img height="100px" width="100px"
									src='data:image/jpg;base64,${product.imageFile}' /></td>

								<td>${product.name}</td>
								<td>${product.description}</td>
								<td>${product.unitPrice}</td>
								<%-- <td><a href="carts/add/${product.productcode}">Add to
										Cart</a></td> --%>
								<td><input class="product" type="button"
									value="Add to Cart"
									onclick="addtocart('${product.productcode}')"></td>

							</tr>
							<input type="hidden" class="${product.productcode}"
								value="${product.quantity}" />
						</c:forEach>
					</table>
				</form>


			</td>
			<td width="20%" valign="top">
				<form id="lineitem">
					<table  class="w3-table w3-striped w3-bordered w3-card-4">

						<c:if test="${not empty cart.items}">
							<h3>Your Shopping cart</h3>

							<tr class="w3-blue">

								<th>Qty</th>
								<th>Product</th>
								<th>Price</th>
								<th>Action</th>
							</tr>

							<c:forEach var="item" items="${cart.items}">
								<tr>
									<td>${item.quanity}</td>
									<td>${item.product.name}</td>
									<td>${item.totalprice}</td>
									<td><a href="carts/remove/${item.product.productcode}">Remove</a></td>

								</tr>

								<input type="hidden" class="${item.product.productcode}"
									value="${item.quanity}">
							</c:forEach>

							<tr>

								<td colspan="4"><b>Cart Total Amount:
										${cart.totalamout} </b></td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center"><a
									href="carts/checkout"><b>Checkout</b></a></td>
							</tr>

						</c:if>

					</table>
				</form>
			</td>
		</tr>
	</table>



	<%@ include file="footerClient.jsp"%>
</body>
</html>


