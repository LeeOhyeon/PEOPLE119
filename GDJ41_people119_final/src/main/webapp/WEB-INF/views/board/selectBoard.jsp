<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/selectBoard.css" rel="stylesheet">
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
            <button type="button" class="btn btn-light" style="width:120px">전체 게시글</button>
        </div>
        <div class="board">
          <div class="boardTitle">
              <h5><strong>${b.boardTitle}</strong></h5>
          </div>
          <div class="writer">
            <div class="writerInfo">
              <div class="writerImage">
                <span class="writer-image"><i class="fas fa-user-tie"></i></span>
              </div>
              <div class="boardWriter">
                <p>${b.memberId}<br>
                  ${b.boardDate}
                </p>
              </div>
              <div class="boardInfo">
                <div class="boardInfo-like">
                  <span class="boardInfo-like-image"><i class="far fa-thumbs-up"></i>${b.boardLike}</span>
                </div>
                <div class="boardInfo-comment">
                  <span class="boardInfo-comment-image"><i class="far fa-comment"></i>${b.boardView}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="boardContent">
              <div class="content">
                ${b.boardContent}
              </div>
          </div>
          <div class="boardLike">
            <div class="image">
             <span class="like-image"><i class="far fa-laugh-wink"></i></span> 
            </div>
            <div class="like">
              <p>좋아요</p>
            </div>
            <div class="like-count">
              <p class="like-count-px"><strong>${b.boardLike}개</strong></p>
            </div>
          </div>
        </div>
        <div class="comment"> 
          <div class="memberId">
            <div><p class="nickname"><strong>${loginMember.memberId}</strong></p></div>
          </div>
          <div class="form-floating">
            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height:100px; width: 900px; resize: none;" ></textarea>
            <label for="floatingTextarea2">Comments</label>
          </div>
          <div class="submit">
              <button type="button" class="btn btn-primary" style="width:120px">등록하기</button>
          </div>
        </div>
        <div class="comment-list">
            <div class="comment-horizon">
              <h5><strong>답변</strong></h5>
            </div>
            <div class="comment-content">
              <div class="comment-container">
                <div class="comment-1">
                  자격증도 취득하는데 걸리는 시간이 존재합니다. 다만, 인턴이나 아르바이트 같은 활동이 없어서 걱정이시라면, 차라리 교육이수나 자원봉사같은 내용을 추가해보시는 건 어떨까 싶습니다. 일단은 HRM 쪽보단 HRD 쪽에 걸맞는 전공이기도 하고, 관련업무가 대략 어떤 프로세스로 돌아가는지나 사용하는 프로그램이 있다면, 그 관련 실습경험도 좋을 것 같습니다. 다만, 지금 당장으로서 일단 서류를 넣고 계시다고 하시니, 연락을 기다려보시면서 앞서 제가 말씀드린 내용을 토대로 최소 3개월 정도를 준비해보시는 건 어떨까 싶네요.
                </div>
                <div class="comment-delete">
                  <span class="delete-btn"><i class="fas fa-ellipsis-v"></i></span>
                </div>
              </div>
              <div class="member-container">
                <div>
                  <span class="member-id"><strong>kosaz123</strong></span>
                </div>
                <div>
                  <p>2022-02-04</p>
                </div>
              </div>
            </div>
            <div class="comment-reply">
              <div class="arrow">
                <span class="arrow-image"><i class="fas fa-angle-right"></i></span>
              </div>
              <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="답변에 댓글을 입력해보세요" aria-label="reply" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2" >등록하기</button>
              </div>
            </div>
            <div class="comment-content2">
              <div class="comment-container">
                <div class="comment-1">
                  자격증도 취득하는데 걸리는 시간이 존재합니다. 다만, 인턴이나 아르바이트 같은 활동이 없어서 걱정이시라면, 차라리 교육이수나 자원봉사같은 내용을 추가해보시는 건 어떨까 싶습니다. 일단은 HRM 쪽보단 HRD 쪽에 걸맞는 전공이기도 하고, 관련업무가 대략 어떤 프로세스로 돌아가는지나 사용하는 프로그램이 있다면, 그 관련 실습경험도 좋을 것 같습니다. 다만, 지금 당장으로서 일단 서류를 넣고 계시다고 하시니, 연락을 기다려보시면서 앞서 제가 말씀드린 내용을 토대로 최소 3개월 정도를 준비해보시는 건 어떨까 싶네요.
                </div>
                <div class="comment-delete">
                  <span class="delete-btn"><i class="fas fa-ellipsis-v"></i></span>
                </div>
              </div>
              <div class="member-container">
                <div>
                  <span class="member-id"><strong>oyeon</strong></span>
                </div>
                <div>
                  <p>2022-02-04</p>
                </div>
              </div>
            </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->



 <jsp:include page="/WEB-INF/views/common/footer.jsp"/>