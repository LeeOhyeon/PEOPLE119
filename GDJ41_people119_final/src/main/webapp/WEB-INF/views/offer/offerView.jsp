<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		
		<c:set var="techArr" value="${fn:split(offer.tech, ',') }"/>
		<c:set var="businessArr" value="${fn:split(offer.business, ',') }"/>
		<c:set var="qualificationArr" value="${fn:split(offer.qualification, ',') }"/>
		<c:set var="treatmentArr" value="${fn:split(offer.treatment, ',') }"/>
		<c:set var="welfareArr" value="${fn:split(offer.welfare, ',') }"/>
		
	
		<p class="hirepostTitle"><c:out value="${offer.offerTitle }"/></p>
		<img alt="파비콘" src="/resources/upload/company/"><!-- offer의 company의 파비콘이네,,, -->
		<p class="companyName"><c:out value="${offer.companyName }"/></p>
		<hr>
		<p class="title">기술스택</p>
		<ul>
			<c:forEach var="tech" items="${techArr }">
				<li><c:out value="${tech }" /></li>
			</c:forEach>
		</ul>
		
		<p class="title">주요업무</p>
		<ul>
			<c:forEach var="business" items="${businessArr }">
				<li><c:out value="${business }"/></li>
			</c:forEach>
		</ul>
		
		<p class="title">자격요건</p>
		<ul>
			<c:forEach var="qualification" items="${qualificationArr }">
				<li><c:out value="${qualification }"/></li>
			</c:forEach>
		</ul>
		
		<p class="title">우대사항</p>
		<ul>
			<c:forEach var="treatment" items="${treatmentArr }">
				<li><c:out value="${treatment }"/></li>
			</c:forEach>
		</ul>
		
		<p class="title">복지 및 혜택</p>
		<ul>
			<c:forEach var="welfare" items="${welfareArr }">
				<li><c:out value="${welfare }"/></li>
			</c:forEach>
		</ul>
		
		<p class="title">기업 / 서비스 소개</p>
		<img alt="회사사진" src="/resources/upload/offer/${offer.image }">
		<p><c:out value="${offer.offerContent }"/></p>
		
		<table>
			<tr>
				<td class="title">경력</td>
				<td><c:out value="${offer.carrer }"/></td>
			</tr>
			<tr>
				<td class="title">학력</td>
				<td><c:out value="${offer.education }"/></td>
			</tr>
			<tr>
				<td class="title">마감일</td>
				<td><c:out value="${offer.endDate }"/></td>
			</tr>
			<tr>
				<td class="title">근무지역</td>
				<td><c:out value="${offer.location }"/></td>
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