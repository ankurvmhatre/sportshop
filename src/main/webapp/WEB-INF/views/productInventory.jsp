<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
<!-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head> -->
<body>
<script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]]
        });
    });
</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>
            <p class="lead">This is the product inventory page:</p>
        </div>
        <table class="table table-bordered">
            <thead>
            <tr class="bg-success">
                <th>Image</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th>Info/Delete/Edit</th>
            </tr>
            </thead>
             <tbody>
               
            <c:forEach items="${products }" var="product">
            <tr>
           			<c:url value="/resources/images/${product.productId}.png" var="src" />
		           			
                    <td><img src="${src }" alt="image" style="width:50% " ></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} RS. </td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                    </tr>
                    </c:forEach>
                
                </tbody>
            
        </table>

</div>
 <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
</div>
       

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>