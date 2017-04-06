<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%@include file="navbar.jsp" %>
 <div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Billing Address</em></h2>
</td>
</div>
<table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   <th>User Name</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Pincode</th>
                    <th>Phone no</th>
                    </thead>

<tr>
<td>${a.username}</td>
<td>${a.address}</td>
<td>${a.city}</td>
<td>${a.pincode}</td>
<td>${a.phno}</td>
</tr>

</table>
 <div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Shiping Address</em></h2>
</td>
</div>
<table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   <th>contact name</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Pincode</th>
                    <th>Phone no</th>
                    </thead>

<tr>
<td>${b.username}</td>
<td>${b.address}</td>
<td>${b.city}</td>
<td>${b.pincode}</td>
<td>${b.phno}</td>
</tr>

</table>
<c:if test="${not empty p}">
<div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Products Details</em></h2>
</td>
</div>
  <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   
                     <th>image</th>
                     <th>product name</th>
                     <th>product price</th>
                    <th>Quantity</th>
                     <th>Total price</th> 
                      
                   </thead>
	

<tr>
<td><img alt="" src="${req}/resources/images/product/${c.productid}.jpg" height="100px" width="100px"style="width:auto; style=hight:auto"/></td>
 
<td>${c.productname}</td>
<td>${c.productprice}</td>
<td>${c.quantity}</td>
<td>${c.totalprice}</td>

</tr>
</table>
</c:if>
	   
 <c:if test="${empty p}"> 
<div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Products Details</em></h2>
</td>
</div>
  <table id="mytable" class="table table-bordred table-striped">
                      <thead>
                     <th>image</th>
                     <th>product name</th>
                     <th>product price</th>
                    <th>Quantity</th>
                     <th>Total price</th> 
                   </thead>
<c:set var="s" value="0"></c:set>
<c:forEach items="${c}" var="pro">
<c:set var="s" value="${s+pro.totalprice}"></c:set>
<tr>
<td><img alt="" src="${req}/resources/images/product/${pro.productid}.jpg" height="100px" width="100px"style="width:auto; style=hight:auto"/></td>
 
<td>${pro.productname}</td>
<td>${pro.productprice}</td>
<td>${pro.quantity}</td>
<td>${pro.totalprice}</td>

</tr>
</c:forEach>
</table>

<div class="carttotal">
<p style="color:red;"><font size="6">Grand Total </font><font size="5"> =&#8377 ${s}</font></p>
</div>

</c:if> 

<centre><a href="${req}/thankyou" class="btn btn-primary">Order Confirm</a></centre>
<%@include file="footer.jsp" %>
</body>
</html>