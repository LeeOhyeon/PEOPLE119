<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/insertboard.css" rel="stylesheet">
  <main id="main">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>커뮤니티</h2>
          <ol>
            <li><a href="/">커뮤니티 홈</a></li>
            <li><a href="/">전체 게시글</a></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <div>
          <h4>게시글 등록</h4>
        </div>
        <div>
          <form class="row g-3" action="${path}/board/enrollBoard.do">
          <div>
            <div class="category">  
              <div class="col-md-4">
                <label for="inputState" class="form-label"></label>
                <select id="inputState" name="category" class="form-select" style="width:100px;">
                  <option value="잡담" selected>잡담</option>
                  <option value="취준">취준</option>
                  <option value="이직">이직</option>
                  <option value="퇴사">퇴사</option>
                  <option value="질문">질문</option>
                </select>
              </div>
              <div style="display:none;">
              	<input type="text" name="memberId" id="memberId" value="${loginMember.memberId}">
              </div>
          </div>
          <div class="title">
            <div class="col-12">
              <label for="inputAddress" class="form-label"></label>
              <input type="text" class="form-control" id="boardTitle" name="boardTitle" placeholder="제목을 입력하세요" style="width:600px;">
            </div>
          </div>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label"></label>
          <textarea class="form-control" id="boardContent" name="boardContent" rows="3" style="width:800px; height:600px; resize:none;" placeholder="내용을 입력해주세요

*등록한 글은 커뮤니티에서 사용중인 닉네임으로 등록됩니다.
*저작권 침해,음란,청소년 유해물등을 게시할 경우 게시물은 경고없이 삭제 됩니다."></textarea>
        </div>
          <div class="insert-btn">
            <div class="col-12">
              <button type="submit" class="btn btn-primary">게시글 등록</button>
            </div>
          </div> 
        </form>
        </div>
      </div>
    </section>

  </main><!-- End #main -->
 <jsp:include page="/WEB-INF/views/common/footer.jsp"/>