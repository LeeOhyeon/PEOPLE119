<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/enrollHirepost.css" rel="stylesheet">

	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">

			<div class="d-flex justify-content-between align-items-center">
				<h2>채용공고 등록</h2>
				<ol>
					<li><a href="index.html">Home</a></li>
					<li>채용공고 등록</li>
				</ol>
			</div>

		</div>
	</section>
	<!-- End Breadcrumbs Section -->

	<section>
	
		<form action="">
			<div class="content">
			
				<input class="input title" type="text" placeholder="공고 제목을 입력해주세요.">
				
				<input class="input company" type="text" placeholder="회사명은 자동으로 들어가야지" disabled>
				
				<hr>
				
				<div id="tech">
					<p class="title">기술스택</p>
					<ul>
						<li><input type="text"><input type="button" value="추가" onclick=""></li>
					</ul>
				</div>
				
				<div id="business">
					<p class="title">주요업무</p>
					<ul>
						<li><input type="text"><input type="button" value="추가" onclick="add_input_business();"></li>
					</ul>
				</div>
				
				<div id="qualification">
					<p class="title">자격요건</p>
					<ul>
						<li>전공자</li>
					</ul>
				</div>
				
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
		</form>
		
	</section>
	
	<script>
		const add_input_business=()=>{
			const business = $("#business");
			const li = $("<li>");
			const newInput = $("<input type='text'>")
		}
	</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>