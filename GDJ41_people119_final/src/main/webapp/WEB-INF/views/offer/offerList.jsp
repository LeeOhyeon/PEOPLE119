<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<%-- <c:if test="${not empty loginMember }">
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
</c:if>
<c:if test="${not empty loginCompany }">
	<jsp:include page="/WEB-INF/views/common/CompanyHeader.jsp"/>
</c:if> --%>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/offer.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">

			<div class="d-flex justify-content-between align-items-center">
				<h2>채용공고</h2>
				<ol>
					<li><a href="/">Home</a></li>
					<li>채용공고</li>
				</ol>
			</div>

		</div>
	</section>
	<!-- End Breadcrumbs Section -->

<section class="inner-page">
	 <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>지금뜨는 채용 공고</h2>
          <p>새로운 공고가 올라왔습니다!</p>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
               <!-- DB에서 가져오게 -->
              <!-- <div class="icon"><i class="bx bxl-dribbble"></i></div> -->
              <div class="" style="width: 250px; height: 150px"><img src="/resources/assets/img/275.jpg" style="width: 250px; height: 150px"></div>
              <h4 class="title"><a href="">275 Company</a></h4>
              <p class="description">노력하는 천재 채용중</p>
              <p class="description">JAVA, JavaScript, Spring Framework</p>
              <p class="description">마감일 : 2022. 00. 00</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
               <!-- DB에서 가져오게 -->
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="">회사이름</a></h4>
              <p class="description">뽑는 내용</p>
              <p class="description">기술스택</p>
              <p class="description">마감일 : 2022. 00. 00</p> <!-- D-00 으로 표시하는게 더 좋을까? -->
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
               <!-- DB에서 가져오게 -->
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="">회사이름</a></h4>
              <p class="description">뽑는 내용</p>
              <p class="description">기술스택</p>
              <p class="description">마감일 : 2022. 00. 00</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <!-- DB에서 가져오게 -->
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4 class="title"><a href="">회사이름</a></h4>
              <p class="description">뽑는 내용</p>
              <p class="description">기술스택</p>
              <p class="description">마감일 : 2022. 00. 00</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End 마감임박 공고 -->


	<!-- ===== 채용공고 리스트 ===== -->
	<div class="margin">
	
		<!-- 채용공고 리스트 부분 -->
		<div id="hirepostList">
			<c:forEach var="o" items="${list }">
				<div class="hirepost">
					<img alt="등록이미지가 없습니다." src="/resources/upload/offer/${o.image }" class="offerImg">
					<input type="hidden" value="${o.offerNo }" name="offerNo"/>
					<div class="companyName"><c:out value="${o.companyName }"/></div>
					<div class="offerTitle"><a href="${path }/offer/offerView.do?offerNo=${o.offerNo}"><c:out value="${o.offerTitle }"/></a></div>
					<div class="tech"><c:out value="${o.tech }"/></div>
					<div class="location"><c:out value="${o.location }"/> / <c:out value="${o.carrer }"/></div>
					<div class="scrap"><span class="scrapP" onclick="insertScrap(this);">스크랩</span></div>
				</div>
			</c:forEach>
				
		</div>
		
		<!-- 페이징 바 -->
		<div id="pageBar">
			${pageBar }
		</div>
		
	</div>
	<!-- End 채용공고 리스트 -->
    
</section>


	<script type="text/javascript">
	
	
		const insertScrap=(e)=>{
			let btn = $(e);
			let offerNo =$(btn.parents('.hirepost')).find('input[name=offerNo]').val();
			console.log(offerNo);
			
			$.ajax({
				url:"${path}/member/checkScrap.do",
				type:"post",
				dataType:"json",
				data:{memberId:"${loginMember.memberId}",
						offerNo:offerNo},
				success:data=>{
						if(data){
							$.ajax({
								url:"${path }/member/insertScrap.do",
								type:"post",
								data:{memberId:"${loginMember.memberId}",
									offerNo:offerNo	
								},
								success:data=>{
									alert("스크랩 완료");
								},
								error:e=>{
									alert("스크랩 실패");
								}
							});		
						}else{
							alert("이미 스크랩된 공고입니다.");
						}
									
					}
			});
			
		}
	

	</script>
	

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>