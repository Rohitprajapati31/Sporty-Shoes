<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sporty Shoes</title>
<style>
table,th,td {
	
	border:1px solid black;
	text-align:center;
}
</style>

</head>
<body style="background-color:lightblue;">
<h2>All Available Products</h2>
<br>
<table style="width:100%">
	<tr>
		<th>Product Name</th>
		<th>Product Discription</th>
		<th>Product Price</th>
	</tr>
	
	<c:forEach var="Product" items="${productList}">
	
		<tr>
			<td> ${Product.productName} </td>
			<td> ${Product.productDiscription} </td>
			<td> ${Product.productPrice} </td>
			<td><a href="deleteProduct?id=${Product.productId}">Delete</a></td>
		</tr>
	
	</c:forEach>
			
</table>
<br><br>
<p style="color:green;">${message}</p>

</body>
</html>