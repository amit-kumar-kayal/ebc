<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<style >
.footer {
colour:white;
    background-color:black;
    height: 120px;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">${adminmsg}</h2>
</td>
<td style="vertical-align: middle;">
    <p style="text-align: center;">Go to product inventory</p>
</td>
<center><a class="preview" href="productdetails" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a></center>
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
