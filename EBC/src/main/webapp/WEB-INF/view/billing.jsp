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
    <h2 style="text-align: center;"><em>Billing Address</em></h2>
</td>
</div>
<form:form action="${req}/shipings" modelAttribute="a">

<div class="form-group">
 <label class="control-label col-sm-2">User Name:</label>
  <div class="col-sm-10">
<input type="text" class="form-control" name="fullname" value="${a.fullname}"  disabled><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">Address :</label>
 <div class="col-sm-10">
<input type="text" class="form-control" name="address" value="${a.address}"  disabled><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">City :</label>
<div class="col-sm-10">
 <input type="text" class="form-control" name="city" value="${a.city}"  disabled><br>
 </div>
 </div>
  <div class="form-group">
  <label class="control-label col-sm-2">Pin Code :</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="pincode" value="${a.pincode}"  disabled><br>
</div>
</div>

 <div class="form-group">
 
<centre><input type="submit" value="Next" class="btn btn-primary"></centre>
</div>

<br>

</form:form>

<%@include file="footer.jsp" %>
</body>
</html>