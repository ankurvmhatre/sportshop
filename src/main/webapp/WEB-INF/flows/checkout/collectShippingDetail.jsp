<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Shipping Address:</h3>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingStreet">Street Name</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingCity">City</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingState">State</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingCountry">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="shippingZip">Zipcode</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
</div></div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>