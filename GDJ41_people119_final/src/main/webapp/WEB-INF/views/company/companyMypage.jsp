<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/companyMypage.css" rel="stylesheet">

	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">

			<div class="d-flex justify-content-between align-items-center">
				<h2>MyPage</h2>
				<ol>
					<li><a href="companyIndex.html">Home</a></li>
					<li>MyPage</li>
				</ol>
			</div>

		</div>
	</section>
	<!-- End Breadcrumbs Section -->

	<section>
      <div class="container">
        <div class="mypage-container">
          <div class="link-tab">
            <ul class="link-tab-ul">
              <li><i class="fas fa-building"></i> 기업정보 <span id="resumt-toggle"><i class="fas fa-angle-down"></i></span>
              	<ul>
                  <li class="resume-link"><a href="#">기업정보 수정</a></li>
                  <li class="resume-link"><a href="#">비밀번호 변경</a></li>
                </ul>
              </li><br><br>
              <li><i class="fas fa-pen"></i> 채용공고 관리 <span id="resumt-toggle"><i class="fas fa-angle-down"></i></span>
                <ul>
                  <li class="resume-link"><a href="${path }/offer/enrollOffer.do">채용공고 등록</a></li>
                  <li class="resume-link"><a href="#">채용공고 관리</a></li>
                </ul>
              </li><br>
              <li class="link-tab-li"><a href="#"><i class="fas fa-star"></i> 지원자 관리</a></li>
              <li class="link-tab-li"><a href="#"><i class="fas fa-location-arrow"></i> 인재 검색</a></li>
              <li class="link-tab-li"><a href="#"><i class="far fa-calendar-alt"></i> 면접제안 관리</a></li>
            </ul>
          </div>
          
          
          <div class="update-info-container">
            <div class="info-title">
              기업정보 수정
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
                    <input type="text" class="form-control" placeholder="회사명" aria-label="Recipient's username"
                      aria-describedby="button-addon2">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                  </div>
                </div>
                <div class="member_info">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="사업자번호" aria-label="Recipient's username"
                      aria-describedby="button-addon2" disabled>
                  </div>
                </div>
                <div class="member_info">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="대표" aria-label="Recipient's username"
                      aria-describedby="button-addon2">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                  </div>
                </div>
                <div class="member_info">
                  <div class="select_gender">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                      <label class="form-check-label" for="flexRadioDefault1">
                        스타트업
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                      <label class="form-check-label" for="flexRadioDefault2">
                        중소기업
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                      <label class="form-check-label" for="flexRadioDefault2">
                        중견기업
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                      <label class="form-check-label" for="flexRadioDefault2">
                        대기업
                      </label>
                    </div>
                </div>
                <div class="gender-btn">
                  <button type="button" class="btn btn-outline-secondary">수정</button>
                </div>
              </div> 
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="주소 : API사용예정" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="date" class="form-control" placeholder="설립년도" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="제공하는 서비스" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="number" class="form-control" placeholder="직원수" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="file" class="form-control" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2" disabled>파비콘</button>
                </div>
              </div>
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="file" class="form-control" placeholder="직원수" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2" disabled>기업 이미지</button>
                </div>
              </div>
               <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="기업 홈페이지 url" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
              <div style="font-size: 20px; font-weight: bold; margin-top: 50px; margin-bottom: 20px;">
                담당자 정보
              </div>
              <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="담당자 이름" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>
              <div class="member_info">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="담당자 연락처" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
                </div>
              </div>

              </div>
            </div>
          </div>
        </div>
        <button class="btn btn-outline-secondary" type="button" id="button-addon2">수정</button>
      </div>
	</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>