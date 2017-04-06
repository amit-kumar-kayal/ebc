<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<form:form action="success" method="post" modelAttribute="p" enctype="multipart/form-data">

<div class="container">

  <form class="form-horizontal">
  <div class="form-group">
 <label class="control-label col-sm-2">Product Name:</label>
  <div class="col-sm-10">
 <input type="text" class="form-control" name="productname"/><br>
 </div>
 </div>

 <div class="form-group">
 <label class="control-label col-sm-2">Product Price:</label>
  <div class="col-sm-10">
  <input type="number" class="form-control" name="productprice"/><br>
</div>
</div>
<!-- 
 <div class="form-group">
 <label class="control-label col-sm-2">Product Category:</label><br>
  <div class="col-sm-10">
 <select name="category">
       <option value="mobile">mobile</option>
	   <option value="laptop">laptop</option>
	   <option value="airconditioner">Air conditioner</option>
	   <option value="refrigator">Refregerator</option>										
      </select>

 </div>
</div> -->
 <div class="form-group">
                           
                                <div class="col-sm-2">
                                <label for="category class="control-label col-sm-6">
                                Product Category</label>
                            <select id="category" name="category" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="mobile">Mobile</option>
                                <option value="laptop">Laptop</option>
                                <option value="airconditioner">Air conditioner</option>
                                <option value="refrigator">Refregerator</option>	
                            </select>
                            </div>
                             
                        </div> 

<div class="form-group">
 <label class="control-label col-sm-2">Product Details:</label>
  <div class="col-sm-10">
 <input type="text" class="form-control" name="productdesc"/><br>
 </div>
 </div>
 
<div class="form-group">
 <label class="control-label col-sm-2">Product Picture:</label>
  <div class="col-sm-10">
<input type="file" class="form-control"  name="File"/><br>

<input type="submit" value="Submit">
</div>
</div>
</form>
</div>
</form:form>
<%@include file="footer.jsp" %>
<%-- 
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
 --%>
</body>

</html>