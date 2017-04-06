<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
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
<form:form action="${req}/edit" method="post" modelAttribute="p" enctype="multipart/form-data">
<input type="hidden" name="productid" value="${p.productid}"><br>
<div class="form-group">
 <label class="control-label col-sm-2">Product Name:</label>
  <div class="col-sm-10">
<input type="text" class="form-control" name="productname" value="${p.productname}"><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">Product Price:</label>
 <div class="col-sm-10">
<input type="text" class="form-control" name="productprice" value="${p.productprice}"><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">Product Category:</label>
<div class="col-sm-10">
 <input type="text" class="form-control" name="category" value="${p.category}"><br>
 </div>
 </div>
  <div class="form-group">
  <label class="control-label col-sm-2">Product Description :</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="productdesc" value="${p.productdesc}"><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">File to upload:</label>
<div class="col-sm-10">
<input type="file" class="form-control"  name="File"/><br>
</div>
</div>
<br>
<div class="form-group ">

<center><input type="submit" value="Update" class="btn btn-primary"></center>

</div>
</form:form>
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