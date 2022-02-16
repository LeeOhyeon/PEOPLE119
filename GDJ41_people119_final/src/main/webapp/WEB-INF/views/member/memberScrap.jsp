<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
  <link href="/resources/assets/css/memberScrap.css" rel="stylesheet">
  <link href="/resources/assets/css/mypage.css" rel="stylesheet">
  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>채용공고 스크랩</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>채용공고 스크랩</li>
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
                  <li class="resume-link"><a href="${path}/resume/insertResumeView.do?memberId=${loginMember.memberId}">이력서 등록</a></li>
                  <li class="resume-link"><a href="${path}/resume/memberResumeList.do?memberId=${loginMember.memberId}">이력서 관리</a></li>
                </ul>
              </li>
               <li class="link-tab-li"><a href="${path}/member/memberScrapList.do?memberId=${loginMember.memberId}"><i class="fas fa-star"></i>채용공고 스크랩</a></li>
              <li class="link-tab-li"><a href="${path}/member/memberlikeCompany.do?memberId=${loginMember.memberId}"><i class="fas fa-star"></i>관심 기업</a></li>
              <li class="link-tab-li"><a href="${path }/applicant/applyList.do?memberId=${loginMember.memberId}"><i class="fas fa-location-arrow"></i> 지원 내역</a></li>
            </ul>
          </div>
          <div class="update-info-container">
            <div>
              <h1><strong>채용공고 스크랩</strong></h1>
            </div>
           
            <div class="total-count">
              <p><strong>총 <c:out value=""/>건</strong></p>
            </div>
            
              
          <div class="scrap-container">
                <div class="scrap-searchContainer">
                  <div class="scrap-search">
                    <div class="input-group mb-3" >
                      <input type="text" class="form-control" aria-label="Recipient's username" aria-describedby="search-scrap">
                      <button class="btn btn-outline-secondary" type="button" id="search-scrap">검색</button>
                    </div>
                  </div>
                </div>
               
               <c:if test="${scrap != null }">
               <c:forEach var="l" items="${scrap.offer }">
                <div class="searchList-container">
                    <div class="company-title"><c:out value="${l.companyName}"/></div>
                    <div class="offer-title"><c:out value="${l.companyName}"/></div>
                    <div class="finishDate-container"><c:out value="${l.companyName}"/></div>
                    <div class="deleteBtn-container"><c:out value="${l.companyName}"/></div>
                </div>
                </c:forEach>
                </c:if>
          </div>
          
            
          </div>
        </div>
        <div>
        	<div style="margin-top: 30px;">${pageBar }</div>
        </div>
      </div>
    </section>

	<script type="text/javascript">
		
		
	</script>

  </main><!-- End #main -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>