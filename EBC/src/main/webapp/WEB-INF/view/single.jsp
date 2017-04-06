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
 colou:white;
    background-color:black;
    height: 120px;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
 <h3>${msg}</h3>
<h4>${b4cart}</h4>
<h3>${bflgs}</h3>
	<div class="top2_wrapper">
		<div class="container">
			<div class="row">
				<div class="span12">

					<div class="top2 clearfix">


						<br>
						<h2 align="center">Specific Product Details</h2>
						<hr height="5" style="color: purple" size="5" width="100%" />
						<div class="container" style="height: 15%; width: 100%;">

							<div style='float: left'>
								<img
									src="${req}/resources/images/product/${a.productid}.jpg"
									width="210" height="270" style="width:auto; style=hight:auto" />
							</div>
							
							<div style='float: right'>
								<table class="table table-striped">
									<thead>
									
										<tr>
									
											<th>Product</th>
											<th>Details</th>
						
										</tr>
									</thead>
									<tbody>
										
										<tr>
											<td align="center"><i>Code</i></td>
											<td align="center"><i>${a.productid}</i></td>
										</tr>
										<tr>
											<td align="center"><i>Category</i></td>
											<td align="center"><i>${a.category}</i></td>
										</tr>
										<tr>
											<td align="center"><i> Name</i></td>
											<td align="center"><i>${a.productname}</i></td>
										</tr>
										<tr>
											<td align="center"><i>Description</i></td>
											<td align="center"><i>${a.productdesc}</i></td>
										</tr>
										<tr>
											<td align="center"><i>Price</i></td>
											<td align="center"><i>${a.productprice}</i></td>
										</tr>
									
										<tr>
											<td align="center"><i>Quantity </i></td>
											<td>
												<form id="addToCart" action="${req}/myCart/add/${a.productid}" method="post">
													<select name="quantity">
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
													</select>
													<button type="submit" value="addToCart" class="btn btn-info" Style ="font-size:14 px" >Add to Cart</button>
	<a href="${req}/buy/${a.productid}" class="btn btn-info "Style ="font-size:14 px">
          <span class="glyphicon glyphicon-eye-open"></span> buy now
        </a>
												</form> 
												</td>
										<td>	</td>
									</tbody>
									<tfoot>
										<tr>

											

										</tr>
									</tfoot>

								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
<%-- <!-- FOOTER -->
      <footer>
        
<div class= "container">
<div class="footer">
<div class="row">
<div class="col-sm-6">

        <p><font color="gray">&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a> </front></p>
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