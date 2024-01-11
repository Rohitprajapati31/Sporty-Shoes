<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sporty Shoes</title>
<style>
div {
	border:10px solid black;
	color:blue;
	font-size:20px;
	height:100px;
	width:450px;
}
a{
	padding-left:50px;
}

</style>
</head>
<body style="background-color:rgb(255,252,211)">
<a href="Home.jsp" target="_blank" style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">Sporty Shoes</a>
<br><br>

<div>
<br><br>
<a href="Product.jsp" target="iframe">Products</a>
<a href="User.jsp" target="iframe">Users</a>
<a href="PurchaseReport.jsp" target="iframe">Purchase Report</a>
</div><br><br>

<iframe src="Product.jsp" name="iframe" style="height:400px;width:900px;"></iframe>
</body>
</html>