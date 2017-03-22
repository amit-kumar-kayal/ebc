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
    <li class="active"style="font-family:'Sonsie One';"><a href="${req}/admin">electronic bazar.com</a></li>
<!-- <li><a href="${req}/home">Home</a></li> -->

<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">product <i class="fa fa-angle-down"></i></a>
<ul class="dropdown-menu">
 <li><a  href="${req}/productdetails/mobile">mobile</a></li>   
<li><a href="${req}/productdetails/laptop">laptop</a></li>
<li><a href="${req}/productdetails/airconditioner">air conditioner</a></li>
<li><a href="${req}/productdetails/refrigator">refrigator</a></li>
<li><a href="${req}/productdetails">All product</a></li>
</ul>
</li>
<li><a href="${req}/aboutus">About us</a></li>
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

