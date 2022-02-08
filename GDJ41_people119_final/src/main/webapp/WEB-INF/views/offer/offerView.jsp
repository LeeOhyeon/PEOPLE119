<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>


<jsp:include page="/WEB-INF/views/common/companyHeader.jsp"/>
<link href="/resources/assets/css/offerView.css" rel="stylesheet">

<section style="display: flex;">

	<div class="quickmenu">
		<ul>
			<li><a href="#">지원하기</a></li>
			<li><a href="#">스크랩하기</a></li>
		</ul>
	</div>
	
	<div class="content">
		<p class="hirepostTitle">채용공고 제목</p>
		<p class="companyName">회사명</p>
		<hr>
		<p class="title">기술스택</p>
		<ul>
			<li>Java</li>
		</ul>
		
		<p class="title">주요업무</p>
		<ul>
			<li>어떤어떤 일</li>
		</ul>
		
		<p class="title">자격요건</p>
		<ul>
			<li>전공자</li>
		</ul>
		
		<p class="title">우대사항</p>
		<ul>
			<li>군필우대</li>
		</ul>
		
		<p class="title">복지 및 혜택</p>
		<ul>
			<li>워라밸 개쩜 ㅋㅋ</li>
		</ul>
		
		<p class="title">기업 / 서비스 소개</p>
		<img alt="회사사진" src="">
		<p>무슨무슨 서비스를 제공합니다</p>
		
		<table>
			<tr>
				<td>경력</td>
				<td></td>
			</tr>
			<tr>
				<td>학력</td>
				<td></td>
			</tr>
			<tr>
				<td>마감일</td>
				<td></td>
			</tr>
			<tr>
				<td>근무지역</td>
				<td></td>
			</tr>
		</table>
	</div>

</section>

<script>
	$(document).ready(function(){
		var currentPosition = parseInt($(".quickmenu").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop(); 
			$(".quickmenu").stop().animate({"top":position+currentPosition+"px"},1000);
		});
	});
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>