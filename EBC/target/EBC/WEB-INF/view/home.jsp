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
    <li class="active" style="font-family:'Sonsie One'" style="font-colour:'green'";><a href="${req}/home">electronic bazar.com</a></li>
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
<<li><a href="${req}/cart">
          <span class="glyphicon glyphicon-shopping-cart"></span>cart
        </a></li>
             <li><a href="${req}/logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
        </ul>
</c:if>
</div>
</div> 
</nav> 
 <style>
	
     .dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
 	
  height:30em;
 
  object-fit: cover;
  
  
  }
.navbar-default {
  background-color:;
  background-image: "resources/image/bg.jpg";
  background-repeat: no-repeat;
	
 }
.footer {
color: white;
    background-color:black;
    height: 120px;
}
     .view{
         padding-top: 50px;
     }
   
  </style>
<p><h1>${usermsg}</h1></p>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/image/cal7.png" alt="" class="img-responsive" >
      </div>

      <div class="item">
        <img src="resources/image/cal8.jpg" alt="" class="img-responsive">
      </div>
    
      <div class="item">
        <img src="resources/image/cal9.jpg" alt="" class="img-responsive" >
      </div>

      <div class="item">
        <img src="resources/image/cal10.jpg" alt="" class="img-responsive">
      </div>
	<div class="item">
        <img src="resources/image/cal11.jpg" alt="" class="img-responsive">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
        <div class="view">
      <div class="row">
        <div class="col-lg-3">
          <img class="img-circle" src="resources/image/icm.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Mobile</h2>
          <p>you can log in to our website for buying products.</p>
          <p><a class="btn btn-primary" href="${req}/userdetails/mobile" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-6-->

        <div class="col-lg-3">
          <img class="img-circle" src="resources/image/icl.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Laptop</h2>
          <p>you can log in to our website for buying products.</p>
          <p><a class="btn btn-primary" href="${req}/userdetails/laptop" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-6 -->

        <div class="col-lg-3">
          <img class="img-circle" src="resources/image/ica.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Air conditioner </h2>
          <p>you can log in to our website for buying products.</p>
          <p><a class="btn btn-primary" href="${req}/userdetails/airconditioner"role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-6-->
     

        <div class="col-lg-3">
          <img class="img-circle" src="resources/image/icf.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Refrigerator</h2>
          <p>you can log in to our website for buying products.</p>
          <p><a class="btn btn-primary" href="${req}/userdetails/refrigator"role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-6-->
      </div><!-- /.row -->
            </div>

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