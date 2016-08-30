<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE HTML>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript"
	src="<spring:url value="/resource/js/ajax.js"/>"></script>
<style type="text/css">
@import url("<spring:url value="/css/main.css"/>");</style>

<title>Smartchoice Online Store</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>
<body>
	<%@ include file="headerClient.jsp"%>


	<div align="left">
		<p>
			Name: <b> ${customer.firstName} ${customer.lastName}</b>
		</p>
		<p>
			Billing Address: <b> ${order.payment.account.billingAddress}</b>
		</p>
		<p>
			Paid Amount: <b>${order.payment.total} </b>
		</p>
		<p>
			Shipping Address: <b>${order.shippingAdress}</b>
		</p>
		<p>
			Order Date And Time : <b>${order.orderedDate} </b>
		</p>
		<p>
			Order Status <b>${order.orderstatus} </b>
		</p>
		<div>
			<h3>Order purchased</h3>
			<%
				int sn = 0;
			%>
			<table border="" style="width: 100%"  class="w3-table w3-striped w3-bordered w3-card-4">
				<tr class="w3-blue">
					<th>SN</th>
					<th>Particulars</th>
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
		</div>
		
		<spring:url value="/carts/homePageAfterOrder" var="afterOrder">
		</spring:url>
		<br>
		<a href="${afterOrder}">Continue Shopping</a>
	</div>

	<%@ include file="footerClient.jsp"%>

</body>
</html>