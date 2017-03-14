<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Electronic bazar.com</title>

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <script src="../../assets/js/ie8-responsive-file-warning.js"></script>
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
   
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
<!-- just for front style -->
   <link href='//fonts.googleapis.com/css?family=Sonsie One' rel='stylesheet'>
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">

<link rel="shortcut icon" type="image/x-icon" href="${req}/resources/image/ebc.jpg">
<body background="${req}/resources/image/bg.jpg">
<div>
<!--<div id="logo"> <img src="${req}/resources/image/ebc.jpg" class="img-responsive" alt="bmlogo"> </div>  -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
   
    </div>
    <ul class="nav navbar-nav">
    <li class="active"style="font-family:'Sonsie One';"><a href="${req}/home">electronic bazar.com</a></li>
<li><a href="${req}/home">Home</a></li>

<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">product <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu">
 <li><a  href="${req}/userdetails/mobile">mobile</a></li>   
<li><a href="${req}/userdetails/laptop">laptop</a></li>
<li><a href="${req}/userdetails/airconditioner">air conditioner</a></li>
<li><a href="${req}/userdetails/refrigator">refrigator</a></li>
<li><a href="${req}/userdetails">All product</a></li>
</ul>
</li>
<li><a href="${req}/contactus">About us</a></li>
<li><a href="${req}/contactus">Contact us</a></li>
</ul>
<form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>

 <c:if test="${empty content}">
 <ul class="nav navbar-nav navbar-right">
        <li><a href="${req}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${req}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
</c:if>
<c:if test="${not empty content}">
<ul class="nav navbar-nav navbar-right">
<li><a href="#">${content}</a></li>
<<li><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>cart
        </a></li>
             <li><a href="${req}/logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
        </ul>
</c:if>
</div>
</div> 
</nav> 	 
 <style>
 .footer {
 colour:white;
    background-color:black;
    height: 120px;
}
</style>

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
<input type="hidden" name="role" class="form-control" id="role" placeholder="role" value ="user">
</div>
</div>

<div class="form-group">
<label for="fullname" class="col-sm-2 control-label">Full Name:</label>
<div class="col-sm-6">
<input type="text" name="fullname" class="form-control" id="fullname" placeholder="Full Name">
</div>
</div>
 
<div class="form-group">
<label for="email" class="col-sm-2 control-label">Email:</label>
<div class="col-sm-6">
<input type="email" name="email" class="form-control" id="email" placeholder="Email">
</div>
</div>

 <div class="form-group">
<label for="phno" class="col-sm-2 control-label">Phone No:</label>
<div class="col-sm-6">
<input type="text" name="phno" class="form-control datepicker" id="phno" placeholder="Phone No">
</div>
</div>

<div class="form-group">
<label for="dob" class="col-sm-2 control-label">DOB:</label>
<div class="col-sm-6">
<input type="text" name="dob" class="form-control datepicker" id="dob" placeholder=" Date of Birth">
</div>
</div>
 
<div class="form-group">
<label for="username" class="col-sm-2 control-label">User Name:</label>
<div class="col-sm-6">
<input type="text" name="username" class="form-control" id="username" placeholder="User Name">
</div>
</div>
 
<div class="form-group">
<label for="password" class="col-sm-2 control-label">Password:</label>
<div class="col-sm-6">
<input type="password" name="password" class="form-control" id="password" placeholder="Password">
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
<li><a href="#">Home</a></li>
<li><a href="#">About Us</a></li>
<li><a href="#">Faq</a></li>
<li><a href="#">Contact Us</a></li>
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