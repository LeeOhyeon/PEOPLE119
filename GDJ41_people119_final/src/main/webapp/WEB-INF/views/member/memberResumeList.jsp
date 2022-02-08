<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
  <link href="/resources/assets/css/resume-manage.css" rel="stylesheet">
  <link href="/resources/assets/css/mypage.css" rel="stylesheet">
  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>마이페이지</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
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
            <div>
              <h1><strong>이력서 관리</strong></h1>
            </div>
            <div class="resume-btn">
            <a href="${path}/resume/insertResumeView.do?memberId=${loginMember.memberId}">
              <button type="button" class="btn btn-primary" style="width:170px">
              이력서 등록하기</button></a>
            </div>
            <div class="total-count">
              <p><strong>총 0건</strong></p>
            </div>
            <div class="resume-info">
              <div class="resume-title">
                <h3><strong>이력서 제목</strong></h3>
              </div>
              <div class="resume">
                <div class="information">
                  <div>
                    <h5><strong>경력</strong></h5>
                  </div>
                  <div>
                    <h5><strong>희망연봉</strong></h5>
                  </div>
                </div>
                <div class="hope-info">
                  <div>
                    <h5><strong>희망 직무/직업:</strong></h5>
                  </div>
                  <div>
                    <h5><strong>희망지역:</strong></h5>
                  </div>
                </div>
              </div>
              <div class="check-resume">
                <div class="form-check form-switch">
                  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                  <label class="form-check-label" for="flexSwitchCheckChecked">이력서공개</label>
                </div>
                <div class="resume-del">
                  <button type="button" class="btn btn-light" style="width:100px">삭제</button>
                </div>
              </div>
            </div>
    
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>