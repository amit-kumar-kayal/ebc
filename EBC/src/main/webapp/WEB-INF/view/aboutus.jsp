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
color: white;
    background-color:black;
    height: 120px;
}

</style>
</head>
<body>
<%@include file="navbar.jsp" %>
        <section class="main">

            <div class="footerpages">
                <div class="footer-page">
                    <h1>About us</h1>
                    <p>Electronic bazar is popular online destination for all sellers across famous electronic store in India like <strong>Sargam electronic</strong> of Delhi, <strong>Paras computer</strong> of Mumbai, <strong>Phoenix City Mall</strong> of Bangalore, <strong>E mall</strong> of Kolkata, <strong>Trimula Electronic</strong> of Hyderabad , <strong>Elecronic hub</strong> of Chennai.</p>
                    <p>Headquarters at kolkata. We have served over one million orders & growing strong.</p>
                    <p>Electronic bazar originally was a one deal a day until the stock lasts. Today, we offer multiple deals across categories like Laptop, mobiles, accessories and computer peripherals etc...</p>
                    <p>We created Electronic bazar for the indian audience who like to shop from <strong>your nearest electronic shop</strong></p>
                    <p>Our sellers are prominent retail owners who are sole proprietors with strong supply chain capabilities.</p>
                    <p><strong>How does Electronic bazar operate?</strong></p>
                    <p>Electronic bazar functions as a deal site where the deals go live on daily basis. We always sell products, which can be scaled to bigger volumes to offer a greater discount to the end customer. Electronic bazar is an <strong>online marketplace</strong> where deals are available from most popular offline sellers/retailers across the country. Elecronic bazar does not have any direct control on the quality, safety or legality of the deals displayed on the website. In case of any complaint raised to us, we resolve the complaint to the satisfaction of the customer.</p>
                    <p>We also give an opportunity to have a seller relationship with us. For further queries/Enquiries regarding vendor relationship mail us at <a href="mailto:www.gmail.com" style="color:#cc3616; text-decoration:none; font-weight: bold;">support@electronic bazar.com</a>. </p>
                    <p> With multiple and secure payment options, a worry free return policy & friendly customer service, we are committed to provide you an unparalleled shopping experience.</p>
                   
                </div>
<!-- FOOTER -->
<%--       <footer>
        
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


    </div><!-- /.container --> --%>
    </div>
    <%@include file="footer.jsp" %>

</body>

</html>