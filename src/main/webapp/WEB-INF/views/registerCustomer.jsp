<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" commandName="customer" class="form-horizontal">
<fieldset>
        <h3>Basic Info:</h3>

        <div class="form-group">
            <label class="col-md-2 control-label" for="name">Name</label>
            
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" id="name"  class="form-Control input-md" />
           
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="email">Email</label>
            
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" id="email"  class="form-Control input-md" />
            
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="phone">Phone</label>
            
            <form:input path="customerPhone" id="phone" class="form-Control input-md" />
           
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="username">Username</label>
           
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000" />
            <form:input path="username" id="username" class="form-Control input-md" />
           
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="password">Password</label>
            
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="form-Control" />
            
        </div>


        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingApartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingCity">City</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingState">State</label>
            <form:input path="billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingCountry">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingZip">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control" />
        </div>

        <br/>

        <h3>Shipping Address:</h3>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingCity">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingState">State</label>
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingZip">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control" />
        </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
</fieldset>
        </form:form>
</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>