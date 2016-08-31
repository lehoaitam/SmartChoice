<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE HTML>
<html>
<head>

<title>smartchoice Online Store</title>
<!--<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">   -->
	<link rel="stylesheet" href="<spring:url value="/resource/js/w3.css"/>">
</head>
<body  class="w3-container">
	<%@ include file="headerClient.jsp"%>

	<div align=center>
		<a href="/smartchoice">Continue Shopping</a>
	</div>
	<div id="global">
		<h2>Items in the Cart</h2>

		<%
			int sn = 0;
		%>
		<table border="" style="width: 100%, min-height=300px"  class="w3-table w3-striped w3-bordered w3-card-4">
			<tr class="w3-blue">
				<th>SN</th>
				<th>Product</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Total</th>

			</tr>
			<c:forEach var="item" items="${cart.items}">
				<tr>
					<td><%=++sn%></td>
					<td>${item.product.name}</td>
					<td>${item.quanity}</td>
					<td>${item.product.unitPrice}</td>
					<td>${item.totalprice}</td>

				</tr>

			</c:forEach>
		</table>
		<div align="right">
			<b>Cart Total Amount: ${cart.totalamout} </b>
		</div>

		<spring:url value="/carts/checkoutStep2/" var="checkoutStep2">
		</spring:url>
		<div align="center">
			<a href="${checkoutStep2} ">Next</a>
		</div>

	</div>
	<%@ include file="footerClient.jsp"%>

</body>
</html>