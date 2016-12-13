<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<html>
<!-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head> -->
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"
                   method="post" commandName="product" enctype="multipart/form-data" class="form-horizontal">
            <div class="form-group">
                <label class="col-md-2 control-label" for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="category">Category</label>
                  <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Cricket" />Cricket</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Badminton" />Badminton</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="BaseBall" />Baseball</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Football" />Football</label>
                </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="description">Description</label>
                <form:textarea path="productDescription" id="description" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="price">Price</label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="price" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" />New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" />Used</label>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="unitInStock">Unit In Stock</label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

    </form:form>
</div></div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>

</body>
</html>