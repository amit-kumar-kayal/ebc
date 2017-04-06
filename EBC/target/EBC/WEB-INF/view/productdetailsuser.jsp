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
    
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
  <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   
                   <th>image</th>
                     <th>product name</th>
                     <th>product price</th>
                     <th>category</th>
                      <th>view</th>
                      
                      
                   </thead>

<c:forEach items="${a}" var="pro">
<tr>
<td><img alt="" src="${req}/resources/images/product/${pro.productid}.jpg" height="100px" width="100px"style="width:auto; style=hight:auto"/></td>
 
<td>${pro.productname}</td>
<td>${pro.productprice}</td>
<td>${pro.category}
<td>
<a href="${req}/view/${pro.productid}" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-eye-open"></span> view
        </a>
        </td>
 
</tr>
</c:forEach>

</table>
<%@include file="footer.jsp" %>
</body>
<%-- <!-- FOOTER -->
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


    </div><!-- /.container --> --%>



</html>