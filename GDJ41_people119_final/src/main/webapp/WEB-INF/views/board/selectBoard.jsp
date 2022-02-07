<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/selectBoard.css" rel="stylesheet">
<script>
$(document).ready(()=>{ 
	selectComment(); 
});
</script>
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
              <button type="button" class="btn btn-primary" style="width:120px" onclick="insertComment();">등록하기</button>
          </div>
        </div>
        <div class="comment-list">
            <div class="comment-horizon">
              <h5><strong>답변</strong></h5>
            </div>
        </div>
      </div>
    </section>
  <script>
  	const insertComment=()=>{
  		const commentContent=$("#floatingTextarea2").val();
  		let memberIdVal = "${loginMember.memberId}"; 
  		
  		if(memberIdVal!="") {
  			$.ajax({
  	  			url: "${path}/board/insertComment.do",
  	  			data: {boardNo:"${b.boardNo}","memberId":"${loginMember.memberId}","commentContent":commentContent,"commentLevel":"1"},
  	  			dataType:"json",
  	  			success:data=>{
  	  				selectComment();
  	  			}
  	  		});	
  		}else{
  			alert("로그인 후 이용해주세요");
  			location.assign("${path}/member/memberLoginView.do");
  		}
  	}
  	function selectComment(){
  		$.ajax({
  			url : "${path}/board/selectComment.do",
  			data : {boardNo:"${b.boardNo}"},
  			dataType:"json",
  			success:data=>{
  				$(".comment-content").remove();
  				$(".comment-reply").remove();
  				console.log(data);
  				if(data.length != 0){
  					for(let i=0;i<data.length;i++){
  	  					const commentContainer=$("<div class='comment-content'>");
  	  					const container=$("<div class='comment-container'>");
  	  					const content = $("<div class='comment-1'>");
  	  					const deleteDiv=$("<div class='comment-delete'>");
  	  					const image=$("<span class='delete-btn'>");
  	  					const memberContainer=$("<div class='member-container'>");
  	  					const member=$("<div class='member'>");
  	  					const memberId=$("<span class='member-id'>");
  	  					const j=$("<i class='fas fa-ellipsis-v'>");
  	  					const enrollDate=$("<div class='enrolldate'>")
  	  					const p=$("<p>");
  	  					const reply=$("<div class='comment-reply'>");
  	  					const arrow=$("<div class='arrow'>");
  	  					const span=$("<span class='arrow-image'>");
  	  					const im=$("<i class='fas fa-angle-right'>");
  	  					const inputGroup=$("<div class='input-group mb-3'>");
  	  					const input=$("<input type='text' class='form-control recomment' placeholder='답변에 댓글을 입력해주세요' aria-label='reply' aria-describedby='button-addon2'>")
  	  					const button=$("<button type='button' class='btn btn-outline-secondary' id='button-addon2'>")
  	  					
  	  					button.text("등록하기");
  	  					span.append(im);
  	  					arrow.append(span);
  	  					inputGroup.append(input).append(button);
  	  					reply.append(arrow).append(inputGroup);
  	  					
  	  					
  	  					
  	  					image.append(j);
  	  					deleteDiv.append(image);
  	  					p.text(data[i]["commentDate"]);
  	  					enrollDate.append(p);
  	  					content.text(data[i]["commentContent"]);
  	  					container.append(content).append(deleteDiv); 					
  	  					memberId.text(data[i]["memberId"]);
  	  					member.append(memberId);
  	  					memberContainer.append(member).append(enrollDate);
  	  					commentContainer.append(container).append(memberContainer);
  	  					$(".comment-horizon").append(commentContainer).append(reply); 
  	  				}
  	  			
  				}
  						
  			}
  		})
  	}
  	
  	//조회하는거
  	//얘가 실시간처럼 보이게 하려면
  	//일단 function selectComment(){여기에 댓글 가져오는 ajax}
  	//$(document).ready(()=>{ selectComment();  });
  </script>
  </main><!-- End #main -->



 <jsp:include page="/WEB-INF/views/common/footer.jsp"/>