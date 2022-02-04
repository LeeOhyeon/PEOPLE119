<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/mypage.css" rel="stylesheet">
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>마이페이지</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li>마이페이지</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <div class="mypage-container">
          <div class="link-tab">
            <ul class="link-tab-ul">
              <li class="link-tab-li"><a href="#"><i class="fas fa-home"></i> My Info</a></li>
              <li><i class="fas fa-pen"></i> 이력서 <span id="resumt-toggle"><i class="fas fa-angle-down"></i></span>
                <ul>
                  <li class="resume-link"><a href="#">이력서 등록</a></li>
                  <li class="resume-link"><a href="#">이력서 관리</a></li>
                </ul>
              </li>
              <li class="link-tab-li"><a href="#"><i class="fas fa-star"></i> 스크랩/관심 기업</a></li>
              <li class="link-tab-li"><a href="#"><i class="fas fa-location-arrow"></i> 지원 내역</a></li>
              <li class="link-tab-li"><a href="#"><i class="far fa-calendar-alt"></i> 면접 현황</a></li>
            </ul>
          </div>
          <div class="update-info-container">
            <div class="info-title">
              개인정보 수정
            </div>
            <div class="info-update">
              <div class="info_image">
                <img src="" alt="">
              </div>
              <div class="member_info_container">
                <div style="font-size: 20px; font-weight: bold;margin-top: 50px; margin-bottom: 20px;">
                  기본 정보
                </div>
                <div class="member_info">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="이름" aria-label="Recipient's username"
                      aria-describedby="button-addon2">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                  </div>
                </div>
                <div class="member_info">
                  <div class="input-group mb-3">
                    <input type="date" class="form-control" placeholder="생년월일" aria-label="Recipient's username"
                      aria-describedby="button-addon2">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                  </div>
                </div>
                <div class="member_info">
                  <div class="select_gender">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                      <label class="form-check-label" for="flexRadioDefault1">
                        남
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                      <label class="form-check-label" for="flexRadioDefault2">
                        여
                      </label>
                    </div>
                </div>
                <div class="gender-btn">
                  <button type="button" class="btn btn-outline-secondary">수정</button>
                </div>
              </div> 
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="주소" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
              <div style="font-size: 20px; font-weight: bold; margin-top: 50px; margin-bottom: 20px;">
                연락처 정보
              </div>
              <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="이메일" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
              <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="휴대폰" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>