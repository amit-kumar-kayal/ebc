<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Electronic bazar.com</title>
<!-- just for front style -->
   <link href="//fonts.googleapis.com/css?family=Sonsie One" rel="stylesheet">
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
   

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">

<link rel="shortcut icon" type="image/x-icon" href="${req}/resources/image/ebc.jpg">
<body background="${req}/resources/image/bg.jpg">
<div>
</head>
<body>
<!--<div id="logo"> <img src="${req}/resources/image/ebc.jpg" class="img-responsive" alt="bmlogo"> </div>  -->
<c:if test="${(empty content)&&(empty am)}">
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
<li><a href="${req}/aboutus">About us</a></li>
<li><a href="${req}/contactus">Contact us</a></li>
</ul>
<!-- <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->
 
</c:if>
<c:if test="${not empty am}">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
   
    </div>
    <ul class="nav navbar-nav">
    <li class="active"style="font-family:'Sonsie One';"><a href="#">electronic bazar.com</a></li>
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
<li><a href="${req}/contactuss">Contact us</a></li>
</ul>
<!--  <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->
</c:if>
 <c:if test="${(empty content)&&(empty am)}">
 <ul class="nav navbar-nav navbar-right">
        <li><a href="${req}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${req}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
     </c:if> 

<c:if test="${not empty content}">
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
<li><a href="${req}/aboutus">About us</a></li>
<li><a href="${req}/prod">Contact us</a></li>
</ul>
<!-- <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->

<ul class="nav navbar-nav navbar-right">
<li><a href="#">${content}</a></li>
      <li>
         <a href="${req}/cart">
          <span class="glyphicon glyphicon-shopping-cart"></span>cart
        </a>
        </li>
        <li><a href="${req}/logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
        </ul>
</c:if>

<c:if test="${not empty am}">
<ul class="nav navbar-nav navbar-right">
        <li><a href="#">${am}</a></li>
        <li><a href="${req}/logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
        </ul>
</c:if>

</div>
</div> 

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <script src="../../assets/js/ie8-responsive-file-warning.js"></script>
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
   
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
</body>
</html>

 