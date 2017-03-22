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
File to upload: <input type="file" name="File">
name:
<input type="text" name="productname"><br>
price:
<input type="text" name="productprice"><br>
<h2>category</h2>
  <input type="radio" name="category" value="mobile"> Mobile <br>
  <input type="radio" name="category" value="laptop">Lap top<br>
  <input type="radio" name="category" value="airconditioner"> air conditioner <br> 
 <input type="radio" name="category" value="refrigator"> refrigator<br> 
Description :
<input type="text" name="productdesc"><br>
<input type="submit" value="Add">
</form:form>


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

</body>

</html>