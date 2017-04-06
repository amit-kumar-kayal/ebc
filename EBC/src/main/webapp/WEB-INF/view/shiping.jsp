<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
  <%@include file="navbar.jsp" %>
  <div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Shipping Details</em></h2>
</td>
</div>
<form class="form-horizontal" method="post" action="shiping" modelAttribute="s"  >
<div class="form-group">
<label for="fullname" class="col-sm-2 control-label"></label>
<div class="col-sm-6">
<input type="hidden" name="email" class="form-control" id="email" placeholder="Contact Person Name" required="required">
</div>
</div>
<div class="form-group">
<label for="fullname" class="col-sm-2 control-label">Contact Name*:</label>
<div class="col-sm-6">
<input type="text" name="username" class="form-control" id="username" placeholder="Contact Person Name" required="required">
</div>
</div>
<div class="form-group">
<label for="phno" class="col-sm-2 control-label">Phone No*:</label>
<div class="col-sm-6">
<input type="number" name="phno" class="form-control datepicker" id="phno" placeholder="Contact No" required="required">
</div>
</div>
<div class="form-group">
<label for="address" class="col-sm-2 control-label">Address*:</label>
<div class="col-sm-6">
<input type="text" name="address" class="form-control" id="address" placeholder="Contact Address" required="required">
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
<input type="number" name="pincode" class="form-control" id="pincode" placeholder="Pin code" required="required">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">

<centre><button type="submit" class="btn btn-primary" id="register">Register</button></centre>
</div>
</div>

</form>
<%@include file="footer.jsp" %>
</body>
</html>