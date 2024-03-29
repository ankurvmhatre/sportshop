<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sport Equipment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}


.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
</style>
</head>
<body  style="background-color: lightblue">

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

   
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value="/resources/images/11.jpg" />" alt="CRIC" width="300" height="200">
        <div class="carousel-caption">
          <h3>CRICKET</h3>
          <p>BAT AND BALL</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/44.jpg" />" alt="football" width="300" height="200">
        <div class="carousel-caption">
          <h3>BALL</h3>
          <p> BALL</p>
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/22.jpg" />" alt="BM" width="300" height="400">
        <div class="carousel-caption">
          <h3>badminton</h3>
          <p>badminton_racket</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/33.jpg" />" alt="BASEBALL" width="300" height="300">
        <div class="carousel-caption">
          <h3>BASEBALL</h3>
          <p>BALL</p>
        </div>
      </div>
  
    </div>

   
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="container-fluid text-center">
  <h3 class="margin">Sports Information</h3><br>
  <div class="row">
    <div class="col-sm-3">
    <h4>CRICKET</h4>
      <p>Cricket is a bat-and-ball game played between two teams of eleven players on a cricket field</p>
      <img src="<c:url value="/resources/images/1.jpg" />" class="img-responsive margin img-circle" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <h4>BADMINTON</h4>
      <p>Badminton is a racket sport played using rackets to hit a shuttle cock across a net, singles and doubles</p>
      <img src="<c:url value="/resources/images/2.jpg" />" class="img-responsive margin img-circle" style="width:350px" alt="Image">
    </div>
	<div class="col-sm-3">
	<h4>BASEBALL</h4>
      <p>Baseball is a bat-and-ball game played between two teams of nine players each, batting and fielding.</p>
      <img src="<c:url value="/resources/images/3.jpg" />" class="img-responsive margin img-circle" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
    <h4>FOOTBALL</h4>
      <p>Football is a family of team sports that involve, to varying degrees, kicking a ball with the foot to score a goal.</p>
      <img src="<c:url value="/resources/images/4.jpg" />" class="img-responsive margin img-circle" style="width:100%" alt="Image">
    </div>
  </div>
</div>
<div id="section3" class="container-fluid">
<h3>About Us</h3>
<p>sports.com</p>
<p>We provide the best sport equiptment</p> 
</div>
<br>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>

</body>
</html>