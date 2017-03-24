<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
.footer {
colour:white;
    background-color:black;
    height: 120px;
}
.table,th,tr{
    border: 1px solid black;}
    .carttotal{
    padding-left: 50%;
     
    }
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

  <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   
                     <th>image</th>
                     <th>product name</th>
                     <th>product price</th>
                    <th>Quantity</th>
                     <th>Total price</th> 
                      
                   </thead>
								                  
<c:set var="s" value="0"></c:set>
<c:forEach items="${p}" var="pro">
<c:set var="s" value="${s+pro.totalprice}"></c:set>
<tr>
<td><img alt="" src="${req}/resources/images/product/${pro.productid}.jpg" height="100px" width="100px"style="width:auto; style=hight:auto"/></td>
 
<td>${pro.productname}</td>
<td>${pro.productprice}</td>
<td>${pro.quantity}</td>
<td>${pro.totalprice}</td>
<td>
<a href="${req}/deletes/${pro.cartid}" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-trash"></span> delete
        </a>
        </td>
</tr>
</c:forEach>


</table>
<div class="carttotal">
<p style="color:red;"><font size="6">Grand Total </font><font size="5"> = ${s}</font></p>



</div>
</body>
<!-- FOOTER -->
      <footer>
        
<div class="container">
<div class="footer">
<div class="row">
<div class="col-sm-6">

        <p><font color="gray">&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></front></p>
</div>
    <div class="col-sm-6">
<ul class="pull-right">
<li><a href="${req}/home">Home</a></li>
<li><a href="${req}/aboutus">About Us</a></li>
<li><a href="${req}/signup">Sign up</a></li>
<li><a href="${req}/contactus">Contact Us</a></li>
</ul>
</div>
</div>
</div>
      </footer>


    </div><!-- /.container -->



</html>