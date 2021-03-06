<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PEOPLE119</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<!-- font -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
   <!-- bootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  
  <!-- jquery -->
  <script src="${path }/resources/js/jquery-3.6.0.min.js"></script>
  
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/assets/css/style.css" rel="stylesheet">
</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="${path}/company/companyIndex.do">PEOPLE119 COMPANY</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="/resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="${path}/company/companyIndex.do">Home</a></li>
          <li><a class="nav-link scrollto active" href="/">???????????????</a></li>
          <li class="dropdown"><a href="${path }/offer/offerList.do"><span>????????????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">??????</a></li>
              <li><a href="#">?????????</a></li>
              <li><a href="#">??????</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>?????? ??????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">????????????</a></li>
              <li><a href="#">????????????</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>????????? ??????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">??????/??????</a></li>
              <li><a href="#">?????????</a></li>
              <li><a href="#">??????</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>????????????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="${path}/board/boardList.do">?????? TIP</a></li>
              <li><a href="#">????????? TIP</a></li>
            </ul>
          </li>
          <c:if test="${loginCompany == null }">
          	<li><a href="${path}/company/companyLoginView.do">?????????</a></li>
          	<li><a href="${path}/company/enrollCompanyView.do">????????????</a></li>
          </c:if>
          <c:if test="${loginCompany != null }">
          	<c:if test="${loginCompany.companyName eq null }">
				<li class="dropdown"><a href="#"><span><c:out value="${loginCompany.companyId }???"/></span> <i class="bi bi-chevron-down"></i></a>
			</c:if>
			</c:if>
			<c:if test="${loginCompany.companyName ne null }">
				<li class="dropdown"><a href="#"><span><c:out value="${loginCompany.companyName }???"/></span> <i class="bi bi-chevron-down"></i></a>
				<ul>
					<li><a href="${path }/company/companyMypage.do?companyId=${loginCompany.companyId}">???????????????</a></li>
					<li><a href="${path}/company/companyLogout.do">????????????</a></li>
				</ul>
			</c:if>
          
          <!-- <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          <li><a class="getstarted scrollto" href="#about">Get Started</a></li> -->
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  
  
