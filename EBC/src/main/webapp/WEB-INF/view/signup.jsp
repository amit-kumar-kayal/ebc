<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
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
<div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">sign up</h2>
</td>
</div>
<form class="form-horizontal" method="post" action="registration" modelAttribute="p"  >

 <div class="form-group">
<label for="role" class="col-sm-2 control-label"></label>
<div class="col-sm-6">
<input type="hidden" name="role" class="form-control" id="role" placeholder="role" value ="user" required="required">
</div>
</div>

<div class="form-group">
<label for="fullname" class="col-sm-2 control-label">Full Name*:</label>
<div class="col-sm-6">
<input type="text" name="fullname" class="form-control" id="fullname" placeholder="Full Name" required="required">
</div>
</div>
 
<div class="form-group">
<label for="email" class="col-sm-2 control-label">Email*:</label>
<div class="col-sm-6">
<input type="email" name="email" class="form-control" id="email" placeholder="Email" required="required">
</div>
</div>

 <div class="form-group">
<label for="phno" class="col-sm-2 control-label">Phone No*:</label>
<div class="col-sm-6">
<input type="text" name="phno" class="form-control datepicker" id="phno" placeholder="Phone No" required="required">
</div>
</div>

<div class="form-group">
<label for="dob" class="col-sm-2 control-label">DOB*:</label>
<div class="col-sm-6">
<input type="text" name="dob" class="form-control datepicker" id="dob" placeholder="mm/dd/yyyy" required="required">
</div>
</div>
 
<div class="form-group">
<label for="username" class="col-sm-2 control-label">User Name*:</label>
<div class="col-sm-6">
<input type="text" name="username" class="form-control" id="username" placeholder="User Name" required="required">
</div>
</div>
 
<div class="form-group">
<label for="password" class="col-sm-2 control-label">Password*:</label>
<div class="col-sm-6">
<input type="password" name="password" class="form-control" id="password" placeholder="Password" required="required">
</div>
</div>
<h2>Address</h2>
<div class="form-group">
<label for="address" class="col-sm-2 control-label">Address*:</label>
<div class="col-sm-6">
<input type="text" name="address" class="form-control" id="address" placeholder="Address" required="required">
</div>
</div>
 <div class="form-group">
<label for="city" class="col-sm-2 control-label">City*:</label>
<div class="col-sm-6">
<input type="text" name="city" class="form-control" id="city" placeholder="city" required="required">
</div>
</div>
<div class="form-group">
<label for="pincode" class="col-sm-2 control-label">Pin code*:</label>
<div class="col-sm-6">
<input type="text" name="pincode" class="form-control" id="pincode" placeholder="Pin code" required="required">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button type="submit" class="btn btn-primary" id="register">Register</button>
</div>
</div>

</form>
 
</div><!-- end for class "row" -->
</div><!-- end for class "container" -->
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


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>