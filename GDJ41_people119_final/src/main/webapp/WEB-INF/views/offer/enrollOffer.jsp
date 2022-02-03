<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/enrollOffer.css" rel="stylesheet">

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
					<p class="p">주요업무</p><input class="flex" type="button" value="추가" onclick="add_input_business();">
					<ul id="businessUl">
						<li><input type="text"></li>
					</ul>
				</div>
				
				<div id="qualification">
					<p class="p">자격요건</p><input class="flex" type="button" value="추가" onclick="add_input_business();">
					<ul>
						<li><input type="text"></li>
					</ul>
				</div>
				
				<div id="">
					<p class="p">우대사항</p><input class="flex" type="button" value="추가" onclick="add_input_business();">
					<ul>
						<li><input type="text"></li>
					</ul>
				</div>
				
				<div id="">
					<p class="p">복지 및 혜택</p><input class="flex" type="button" value="추가" onclick="add_input_business();">
					<ul>
						<li><input type="text"></li>
					</ul>
				</div>
				
				<div>
					<p class="title">기업 / 서비스 소개</p>
					<input type="file" style="display: block;">
					<textarea placeholder="기업과 서비스에 대해 소개 해주세요."></textarea>
				</div>
				
				<table>
					<tr>
						<td>경력</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>학력</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>마감일</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>근무지역</td>
						<td><input type="text"></td>
					</tr>
				</table>
			</div>
			<div id="submit">
				<input type="submit" value="등록">
			</div>
		</form>
		
	</section>
	
	<script>
		const add_input_business=()=>{
			const businessUl = $("#businessUl");
			const li = $("<li>");
			const newInput = $("<input type='text'>");
			const newInputButton = $("<input type='button' value='삭제' onclick='remove(this)'>");
			li.append(newInput).append(newInputButton);
			businessUl.append(li)
		}
		
		const remove=(obj)=>{
			document.getElementById('businessUl').removeChild(obj.parentNode);
		}
	</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>