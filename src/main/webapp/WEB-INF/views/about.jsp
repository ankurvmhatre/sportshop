<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
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
            <h1>About Us</h1>
            <p>The first ever Furniture Village store opened its doors in Abingdon in 1989 with a simple philosophy: 
            to offer truly excellent products, prices and service to all our customers.
             Twenty-five years and 40 UK-wide stores later, that philosophy still holds true. </p>
        </div>

        <img src="<c:url value="/resources/images/aboutus.jpg" />" alt="showroom" >

</div></div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>