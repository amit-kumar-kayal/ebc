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
<c:if test="${(empty content)&&(empty am)}">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">${bflg}</h2>
</td>
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">${aflg}</h2>
</td>
 <section id="contact-info">
<div class="center">
<h2>How to Reach Us?</h2>
<p class="lead">Executive service 24*7 </p>
</div>

<ul class="row">
<li class="col-sm-6">
<address>
<h5>Head Office</h5>
<p>c-253 Ram das hati bhandari para<br>
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
<p class="lead">have any complain </p>
</div>
<div class="row contact-wrap">
<div class="status alert alert-success" style="display: none"></div>
<form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="complain">
<div class="col-sm-5 col-sm-offset-1">
<div class="form-group">
<label>Name *</label>
<input type="text" name="fullname" class="form-control" required="required">
</div>
<div class="form-group">
<label></label>
<input type="hidden" name="email" class="form-control" required="required">
</div>
<div class="form-group">
<label>Phone</label>
<input type="text" name="phno" class="form-control">
</div>
<div class="form-group">
<label>Company Name</label>
<input type="text" name="company" class="form-control">
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
<div>
</c:if>
<c:if test="${not empty content}">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">${bflg}</h2>
</td>
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">${aflg}</h2>
</td>
 <section id="contact-info">
<div class="center">
<h2>How to Reach Us?</h2>
<p class="lead">Executive service 24*7 </p>
</div>

<ul class="row">
<li class="col-sm-6">
<address>
<h5>Head Office</h5>
<p>c-253 Ram das hati bhandari para<br>
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
<p class="lead">have any complain and fidback </p>
</div>
<div class="row contact-wrap">
<div class="status alert alert-success" style="display: none"></div>
<form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="complain">
<div class="col-sm-5 col-sm-offset-1">
<div class="form-group">
<label>Name *</label>
<input type="text" name="fullname" class="form-control" required="required">
</div>
<div class="form-group">
<label></label>
<input type="hidden" name="email" class="form-control" required="required">
</div>
<div class="form-group">
<label>Phone</label>
<input type="text" name="phno" class="form-control">
</div>
<div class="form-group">
<label>Company Name</label>
<input type="text" name="company" class="form-control">
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
<div>

<div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">Complain Details</h2>
</td>
</div>
<c:forEach items="${a}" var="pro">
<td>${pro.message}</td>
</c:forEach>
</div>
</c:if>
<c:if test="${not empty am}">
<table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   <th>Email</th>
                    <th>Message</th>
                    </thead>
<c:forEach items="${a}" var="pro">
<tr>
<td>${pro.email}</td>
<td>${pro.message}</td>
 <td>
<a href="${req}/deletesu/${pro.complainid}" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-trash"></span> delete
        </a>
       
</td>
</tr>
</c:forEach>
       
</table>
</c:if>
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


    </div><!-- /.container -->
 --%>
<%@include file="footer.jsp" %>
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