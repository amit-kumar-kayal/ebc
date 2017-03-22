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
 .footer {
 colour:white;
    background-color:black;
    height: 120px;
}
</style>

 <section id="contact-info">
<div class="center">
<h2>How to Reach Us?</h2>
<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
</div>

<ul class="row">
<li class="col-sm-6">
<address>
<h5>Head Office</h5>
<p>c-253 ramdas hati bhandari para<br>
 garden reach kolkata 700024</p>
<p>Phone:670-898-2847 <br>
Email Address:<a class="__cf_email__" href="/cdn-cgi/l/email-protection" data-cfemail="2940474f46694d4644484047074a4644">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script></p>
</address>

</li>
</ul>
</div>
</div>
</div>
</div>
</section>  
<section id="contact-page">
<div class="container">
<div class="center">
<h2>Drop Your Message</h2>
<p class="lead">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
</div>
<div class="row contact-wrap">
<div class="status alert alert-success" style="display: none"></div>
<form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
<div class="col-sm-5 col-sm-offset-1">
<div class="form-group">
<label>Name *</label>
<input type="text" name="name" class="form-control" required="required">
</div>
<div class="form-group">
<label>Email *</label>
<input type="email" name="email" class="form-control" required="required">
</div>
<div class="form-group">
<label>Phone</label>
<input type="number" class="form-control">
</div>
<div class="form-group">
<label>Company Name</label>
<input type="text" class="form-control">
</div>
</div>
<div class="col-sm-5">
<div class="form-group">
<label>Subject *</label>
<input type="text" name="subject" class="form-control" required="required">
</div>
<div class="form-group">
<label>Message *</label>
<textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
</div>
<div class="form-group">
<button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>
</div>
</div>
</form>
</div> 
</div> 
</section> 
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