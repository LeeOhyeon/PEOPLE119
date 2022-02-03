<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/board.css" rel="stylesheet">
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
        <div class="boardInfo">
          <div class="boardCount">
            <h3><strong>실시간 전체글 ${count}개</strong></h3>
          </div>
          <div class="boardSearch">
            <div class="boardSearch-container">
              <div class="board-search">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="다른 사람들은 어떤 이야기를 할까?"
                    aria-label="Recipient's username" aria-describedby="basic-addon2">
                  <span class="input-group-text" id="basic-addon2"><i class="fas fa-search"></i></span>
                </div>
              </div>
              <c:if test="${loginMember==null}">
	              <div class="board-login">
	                <div>
	                  <p class="login">로그인 후 이용해주세요</p>
	                </div>
	                <div class="board-login-btn">
	                  <button type="button" onclick="login();" class="btn btn-primary" style="width:200px">커뮤니티 로그인하기</button>
	                </div>
	              </div>
              </c:if>
            </div>
          </div>
        </div>
        <div class="board-content">
          <div class="topic">
            <div class="topic-font">
              <a href="#" class="hot-topic"><strong>HOT</strong> 이번주 전체 인기글</a>
            </div>
            <div class="hot-image-div">
              <p class="hot-image"><i class="fas fa-fire"></i></p>
            </div>
          </div>
          <div class="content">
            <c:if test="${not empty list}">
            	<c:forEach var="l" items="${list}">
		            <div>
		              <a href="#"><c:out value="${l.boardTitle}"/></a>
		            </div>
            	</c:forEach>
            </c:if>
          </div>
        </div>
        <div class="board-category">
          <div>
            <h3><strong>주제별 커뮤니티</strong></h3>
          </div>
          <div class="category">
            <div class="category-btn">
              <button type="button" class="btn btn-primary" style="width:100px">전체글</button>
              <button type="button" class="btn btn-light" style="width:100px">취준</button>
              <button type="button" class="btn btn-light" style="width:100px">이직</button>
              <button type="button" class="btn btn-light" style="width:100px">퇴사</button>
              <button type="button" class="btn btn-light" style="width:100px">잡담</button>
              <button type="button" class="btn btn-light" style="width:100px">Q&A</button>
            </div>
          </div>
        </div>
        <div class="board">
          <div class="board-1">
            <div class="whole-content">
              <div class="whole">
                <div class="whole-title">
                  <h5><strong>전체글</strong></h5>  
                </div>
                <div class="whole-total-view">
                  <a href="#" class="whole-total">더보기</a>
                </div>
                <div class="whole-contents">
                  <c:if test="${not empty list}">
            		<c:forEach var="l" items="${list}">
                 	 <div><a href="#"><c:out value="${l.boardTitle}"/></a></div>
                  	</c:forEach>
                  </c:if>
                </div>
              </div>
            </div>
            <div class="ready-empl">
              <div class="ready">
                <div class="ready-title">
                  <h5><strong>취준</strong></h5>  
                </div>
                <div class="ready-total-view">
                  <a href="#" class="ready-total">더보기</a>
                </div>
                 <div class="ready-contents">                 
            		<c:forEach var="l" items="${list}">
            			<c:if test="${l.category eq '취준'}">
                 			 <div><a href="#"><c:out value="${l.boardTitle}"/></a></div>
                  		</c:if>
                  	</c:forEach>
             	 </div>
              </div>
            </div>
          </div>
          <div class="board-2">
            <div class="turnover-content">
              <div class="turnover">
                <div class="turnover-title">
                  <h5><strong>이직</strong></h5>  
                </div>
                <div class="turnover-total-view">
                  <a href="#" class="turnover-total">더보기</a>
                </div>
              </div>
            </div>
            <div class="leave-content">
              <div class="leave">
                <div class="leave-title">
                  <h5><strong>퇴사</strong></h5>  
                </div>
                <div class="leave-total-view">
                  <a href="#" class="leave-total">더보기</a>
                </div>
              </div>
            </div>
          </div>
          <div class="board-3">
            <div class="free-content">
              <div class="free">
                <div class="free-title">
                  <h5><strong>이직</strong></h5>  
                </div>
                <div class="free-total-view">
                  <a href="#" class="free-total">더보기</a>
                </div>
              </div>
            </div>
            <div class="question-content">
              <div class="question">
                <div class="question-title">
                  <h5><strong>이직</strong></h5>  
                </div>
                <div class="question-total-view">
                  <a href="#" class="question-total">더보기</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <script>
		const login=()=> {
			location.assign("${path}/member/memberLoginView.do");
		}
    </script>
  </main><!-- End #main -->
 <jsp:include page="/WEB-INF/views/common/footer.jsp"/>