<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/category.css" rel="stylesheet">
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
        <div class="category">
          <div class="category-btn">
            <button type="button" class="btn btn-light" id="btn-all" style="width:100px" onclick="whole();">전체글</button>
            <button type="button" class="btn btn-light" style="width:100px" onclick="ready();">취준</button>
            <button type="button" class="btn btn-light" style="width:100px" onclick="turn();">이직</button>
            <button type="button" class="btn btn-light" style="width:100px" onclick="leave();">퇴사</button>
            <button type="button" class="btn btn-light" style="width:100px" onclick="free();">잡담</button>
            <button type="button" class="btn btn-light" style="width:100px" onclick="qa();">Q&A</button>
          </div>
        </div>
        <div class="category-name">
          <h2><strong>${category}</strong>방</h2>
          <p><strong>${category}</strong>관련 이야기를 공유하는 방입니다.</p>
        </div>
        <div class="cate">
          <div class="count">
            <h4>전체<strong>${count}</strong>건</h4>
          </div>
          <div class="search">
            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="다른 사람들은 어떤 이야기를 할까?"
                aria-label="Recipient's username" aria-describedby="basic-addon2" style="width: 300px;">
              <span class="input-group-text" id="basic-addon2"><i class="fas fa-search"></i></span>
            </div>
          </div>
        </div>
        <div class="sort">
          <div class="radio-sort">
            <input type="radio" id="newsort" name="chk_info" value="최신" onclick="newsort();" checked="checked">최신순
            <input type="radio" id="viewsort" name="chk_info" value="조회" onclick="viewsort();">조회순
            <input type="radio" id="commentsort" name="chk_info" value="댓글" onclick="commentsort();">댓글 많은순
            <input type="radio" id="likesort" name="chk_info" value="좋아요" onclick="likersort();">좋아요 순
          </div>
          <div class="insert">
            <div class="insert-btn">
              <button type="button" class="btn btn-light" id="#" style="width:200px" onclick="insertBoard();">게시글 작성하기</button>
            </div>
          </div>
        </div>
        <div class="boardContainer">
          <c:forEach var="l" items="${list}">
          	<div class="board">
             <div class="boardTitle" id="${l.boardNo}">
               <a href="${path}/board/selectBoard.do?boardNo=${l.boardNo}" id="board-Title"><strong>${l.boardTitle}</strong></a>
             </div>
             <div class="boardContent">
              ${l.boardContent}
             </div>
             <div class="boardSort">
               <div class="boardLike">
                <span class="board-like"><i class="fas fa-thumbs-up"></i></span>
               </div>
               <div class="boardComment">
                <span class="board-comment"><i class="fas fa-comment"></i></span>
               </div>
               <div class="boardView">
                <span class="board-view"><i class="fas fa-eye"></i></span>
               </div>
               <div class="boardWriter">
               	<strong>${l.memberId}</strong>
               </div>
             </div>
          </div>   
          </c:forEach>        
        </div>
      </div>
    </section>
    <script>
      const insertBoard=()=>{
        location.assign("${path}/board/insertBoard.do");
      }
      const whole=()=>{
			location.assign("${path}/board/boardCategory.do?category=게시글전체");
		}
		const ready=()=>{
			location.assign("${path}/board/boardCategory.do?category=취준");
		}
		const leave=()=>{
			location.assign("${path}/board/boardCategory.do?category=퇴사");
		}
		const turn=()=>{
			location.assign("${path}/board/boardCategory.do?category=이직");
		}
		const free=()=>{
			location.assign("${path}/board/boardCategory.do?category=잡담");
		}
		const qa=()=>{
			location.assign("${path}/board/boardCategory.do?category=질문");
		} 
		
		//최신순 파싱
		const newsort=()=>{
			$.ajax({
				url:"${path}/board/newSort.do",
				data:{category:"${category}"},
				dataType:"json",
				success:data=>{
					
				}
			});
		}
		const viewsort=()=>{
			$.ajax({
				url:"${path}/board/viewSort.do",
				data:{category:"${category}"},
				dataType:"json",
				success:data=>{
					
				}
			});
		}
		const likersort=()=>{
			$.ajax({
				url:"${path}/board/likeSort.do",
				data:{category:"${category}"},
				dataType:"json",
				success:data=>{
					
				}
			});
		}
		const commentsort=()=>{
			$.ajax({
				url:"${path}/board/commentSort.do",
				data:{category:"${category}"},
				dataType:"json",
				success:data=>{
					
				}
			});
		}
		
    </script>
  </main><!-- End #main -->
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>