<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link href="/resources/assets/css/enrollMember.css" rel="stylesheet">
<main id="main">

	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">

			<div class="d-flex justify-content-between align-items-center">
				<h2>회원가입</h2>
				<ol>
					<li><a href="index.html">Home</a></li>
					<li>회원가입</li>
				</ol>
			</div>

		</div>
	</section>
	<!-- End Breadcrumbs Section -->

	<section class="inner-page">
		<div class="container">

			<div class="enroll-Container">
				<form action="${path }/member/enrollMember.do" method="post">
					<div class="input-info-container">
						<div class="enroll_title">개인회원가입</div>
						<div class="input-name">ID</div>
						<div class="input-info">
							<div class="input-group mb-3">
								<input type="text" class="form-control"
									aria-label="Recipient's username"
									aria-describedby="button-addon2" name="memberId" id="memberId">
								<button class="btn btn-outline-secondary" type="button"
									id="button-addon2" onclick="checkId();">중복확인</button>
							</div>
							<div class="checkIdResult">
							</div>
							<div class="input-name">PASSWORD</div>
							<div class="input-info">
								<input class="form-control" type="password"
									aria-label="default input example" name="password" id="password">
							</div>
							<div class="input-name">PASSWORD_CHECK</div>
							<div class="input-info">
								<input class="form-control" type="text"
									aria-label="default input example" id="password_">
							</div>
							<div class="input-name">EMAIL</div>
							<div class="input-info">
								<div class="input-group mb-3">
									<input type="text" class="form-control"
										aria-label="Recipient's username" name="email"
										aria-describedby="button-addon2">
									<button class="btn btn-outline-secondary" type="button"
										id="button-addon2">인증</button>
								</div>
							</div>
							<div class="input-name">EMAIL_CHECK</div>
							<div class="input-info">
								<input class="form-control" type="text"
									aria-label="default input example">
							</div>
							<div class="input-name">약관 동의</div>
							<div class="agree">
								<div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault"> (필수)
											개인회원 약관에 동의 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault"> (필수)
											개인정보 수집 및 이용에 동의 </label>
									</div>
								</div>
							</div>
							<div class="input-info">
								<div class="enroll-btn">
									<button type="submit" class="btn btn-primary">회원가입</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

</main>
<!-- End #main -->

<script>
	const checkId=()=>{
		$.ajax({
			url : "${path}/member/enrollCheckId.do",
			data:{memberId:$("#memberId").val()},
			success : data=>{
				console.log(data);
				if(data){
					$(".checkIdResult").html("<span style='color:green;'>사용 가능한 아이디 입니다.</span>");
					
				}else{
					$(".checkIdResult").html("<span style='color:red;'>이미 사용중인 아이디 입니다.</span>");
				}

				
			}
		});
	}
</script>




<jsp:include page="/WEB-INF/views/common/footer.jsp" />