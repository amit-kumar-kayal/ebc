<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
 <style>
	

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
  </head>
  <body>
  <%@include file="navbar.jsp" %>
<p><h1>${usermsg}</h1></p>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li d"src/main/webapp/WEB-INF/view/home.jsp"ata-target="#myCarousel" data-slide-to="1"></li>
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
<%@include file="footer.jsp" %>
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
</div>
      </footer>


    </div><!-- /.container -->
 --%>
  </body>
</html>