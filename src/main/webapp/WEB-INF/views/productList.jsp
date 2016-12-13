<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<html>
<body>
<script>

    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]],
            "oSearch" : {"sSearch": searchCondition}
        });
    });
</script> 

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the awesome products available now!</p>
        </div>

        <table class="table table-bordered">
            <thead> 
                <tr class="bg-success">
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th>view</th>
               </tr>
           </thead>
            
            <tbody>
                
                <c:forEach items="${products }" var="product">
                <tr>
                     <c:url value="/resources/images/${product.productId}.png" var="src" />
		           	 <td><img src="${src }" alt="image" style="width:50%" ></td>
                    <td>${product.productName }</td>
                    <td>${product.productCategory }</td>
                    <td>${product.productCondition }</td>
                    <td>${product.productPrice } USD </td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId }" />"><span class="glyphicon glyphicon-info-sign"></span></a></td>
                 </tr>
                </c:forEach>
               
                </tbody>
                 
            
        </table>
</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>