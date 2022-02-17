<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/interviewList.css" rel="stylesheet">

  <main id="main">
	<!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Inner Page</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Inner Page</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <div class="title">
          <div>
            <h2><strong>면접 후기</strong></h2>
          </div>
          <div class="review-count">
            <p>총 847건</p>
          </div>
        </div>
        <div class="select-box">
          <div class="select-parse">
            <select class="form-select" aria-label="Default select example" style="width:100px">
              <option value="1">등록순</option>
              <option value="2">조회순</option>
              <option value="3">인기순</option>
            </select>
          </div>
          <div class="enrollInterview">
             <button type="button" class="btn btn-primary" onclick="location.assign('${path}/interview/interviewEnrollView.do?memberId=${loginMember.memberId}');" style="width:150px">후기 등록하기</button>
          </div>
        </div>
        <div class="company-container">
          <div class="enroll-date">
            <div class="date-info">
              <span class="date">2022.01.18</span>
              <span onclick="toggle();"><i class="fas fa-arrow-alt-circle-down"></i></span>
            </div>
          </div>
          <div class="company-info">
            <div class="company-info-title">
              <div>
                <h3>기업명</h3>
              </div>
              <div class="pass-yn">
                <p>합격여부</p>
              </div>
            </div>
            <div class="info">
              <div class="team-name">
                <p>팀명 |</p>
              </div>
              <div class="hire-date">
                <p>2021년 하반기 |</p>
              </div>
              <div class="carrer-years">
                <p>4-8년차</p>
              </div>
            </div>
          </div>
          <div class="interview-result">
            <div class="eval">
              <div>
                <span class="smile"><i class="far fa-smile"></i></span>
              </div>
              <div>
                <p class="review">전반적 평가<br><strong>긍정적/부정적/보통</strong></p>
              </div>
            </div>
            <div class="difficulty">
              <div>
                <span class="smile"><i class="fas fa-file-alt"></i></span>
              </div>
              <div>
                <p class="review">난이도<br><strong>쉬움/보통/어려움</strong></p>
              </div>
            </div>
            <div class="result">
              <div>
                <span class="smile"><i class="fas fa-id-card"></i></span>
              </div>
              <div>
                <p class="review">합격여부<br><strong>합격</strong></p>
              </div>
            </div>
          </div>
          <div class="way-of-interview">
            <div class="interview-type">
              <div>
                <p>면접 유형</p>
              </div>
              <div>
                <span>직무 직성 면접</span>
              </div>
            </div>
            <div class="interviewee-count">
              <div>
                <p>면접 인원</p>
              </div>
              <div>
                <span>1:1면접</span>
              </div>
            </div>
            <div class="interview-process">
              <div>
                <p>전형 및 면접 진행방식</p>
              </div>
              <div>
                <span>치타는 웃고있다.</span>
              </div>
            </div>
            <div class="interview-question">
              <div>
                <p>면접 질문</p>
              </div>
              <div class="question-container">
                <div class="question">
                  <div>
                    <i class="fas fa-search"></i>
                  </div>
                  <div class="question-input">
                    <input type="text" class="form-control" id="">
                  </div>
                </div>
                <div class="question">
                  <div>
                    <i class="fas fa-search"></i>
                  </div>
                  <div class="question-input">
                    <input type="text" class="form-control" id="">
                  </div>
                </div>
                <div class="question">
                  <div>
                    <i class="fas fa-search"></i>
                  </div>
                  <div class="question-input">
                    <input type="text" class="form-control" id="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <script>
      const enroll=()=>{
    	  
      }
    </script>
    
  </main><!-- End #main -->
		
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>