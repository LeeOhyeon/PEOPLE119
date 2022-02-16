<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link href="/resources/assets/css/interviewEnroll.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css"
    rel="stylesheet">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">
  </script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.kr.min.js">
</script>
  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Inner Page</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Inner Page</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container">
        <h3>면접 경험 등록</h3>
        <p>등록된 이력서의 최근 3년 이내의 입사 경력을 불러옵니다. 작성해주신 면접후기는 <strong>익명</strong>으로 등록됩니다.</p>
        <div class="normal-info">
          <h5><strong>기본정보입력</strong></h5>
          <form action="">
            <div class="company-name">
              <div>
                <p>기업명</p>
              </div>
              <div>
                <select class="form-select" aria-label="Default select example" style="width:100px">
              		<c:forEach var="l" items="${list}">
              			<option value="${l.companyName}">${l.companyName}</option>
              		</c:forEach>
            	</select>
              </div>
            </div>
            <div class="duty">
              <div>
                <p>직무직업</p>
              </div>
              <div>
                <input type="text" class="form-control" id="" style="width:300px">
              </div>
            </div>
            <div class="carrer-info">
              <div>
                <p>면접 당시 경력</p>
              </div>
              <div class="carrer-select">
                <div>
                  <select class="form-select" aria-label="Default select example" style="width:200px">
                    <option selected>직급선택</option>
                    <option value="인턴">인턴</option>
                    <option value="사원">사원</option>
                    <option value="대리">대리</option>
                    <option value="과장">과장</option>
                    <option value="부장">부장</option>
                  </select>
                </div>
                <div>
                  <select class="form-select" aria-label="Default select example" style="width:200px">
                    <option selected>연차선택</option>
                    <option value="신입">신입</option>
                    <option value="1">1년</option>
                    <option value="2">2년</option>
                    <option value="3">3년</option>
                    <option value="4">4년</option>
                    <option value="5">5년</option>
                    <option value="6">6년</option>
                    <option value="7">7년</option>
                    <option value="8">8년</option>
                    <option value="9">9년</option>
                    <option value="10">10년</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="interview-date">
              <div>
                <p>면접날짜</p>
              </div>
              <div class="date">
                <input type="text" id="datePicker" placeholder="날짜입력">
              </div>
            </div>
            <div class="interview-info">
              <h5><strong>면접 정보 입력</strong></h5>
            </div>
            <div class="evaluation">
              <div>
                <p>전반적 평가</p>
              </div>
              <div class="eval-button">
                <button type="button" class="btn btn-light" style="width:150px">긍정적</button>
                <button type="button" class="btn btn-light" style="width:150px">보통</button>
                <button type="button" class="btn btn-light" style="width:150px">부정적</button>
              </div>
            </div>
            <div class="difficulty">
              <div>
                <p>난이도</p>
              </div>
              <div class="diffi-button">
                <button type="button" class="btn btn-light" style="width:150px">쉬움</button>
                <button type="button" class="btn btn-light" style="width:150px">보통</button>
                <button type="button" class="btn btn-light" style="width:150px">어려움</button>
              </div>
            </div>
            <div class="interview-type">
              <div>
                <p>면접 및 전형 유형<br>(다중 선택 가능)</p>
              </div>
              <div class="interview-check">

                <input class="form-check-input" type="checkbox" value="직무" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  직무/인성면접
                </label>

                <input class="form-check-input" type="checkbox" value="PT" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  PT면접
                </label>

                <input class="form-check-input" type="checkbox" value="토론" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  토론면접
                </label>

                <input class="form-check-input" type="checkbox" value="실무" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  실무 과제 및 시험
                </label>

                <input class="form-check-input" type="checkbox" value="인적성" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  인적성 검사
                </label>

                <input class="form-check-input" type="checkbox" value="기타" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  기타
                </label>
              </div>
            </div>
            <div class="interviewee">
              <div>
                <p>면접인원<br>(다중 선택 가능)</p>
              </div>
              <div class="interviewee-check">
                <input class="form-check-input" type="checkbox" value="1:1면접" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  1:1면접
                </label>

                <input class="form-check-input" type="checkbox" value="인적성검사" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  인적성 검사
                </label>

                <input class="form-check-input" type="checkbox" value="그룹 면접" id="">
                <label class="form-check-label" for="flexCheckDefault">
                  그룹 면접
                </label>
              </div>
            </div>
            <div class="interview-process">
              <div>
                <p>전형 및 면접<br>진행방식</p>
              </div>
              <div class="mb-3" disabled>
                <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="서류 합격 후 어떤 전형과 면접을 경험하셨나요?"
                  rows="3" style="resize:none;"></textarea>
              </div>
            </div>
            <div class="pass-info">
              <h5><strong>합격 정보 입력</strong></h5>
            </div>
            <div class="question-info">
              <div>
                <p>면접질문<br>(최소 3개)</p>
              </div>
              <div class="question-container">
                <div class="question">
                  <div>
                    <i class="fas fa-search"></i>
                  </div>
                  <div class="question-input">
                    <input type="text" class="form-control" id="">
                  </div>
                </div>
                <div class="question">
                  <div>
                    <i class="fas fa-search"></i>
                  </div>
                  <div class="question-input">
                    <input type="text" class="form-control" id="">
                  </div>
                </div>
                <div class="question">
                  <div>
                    <i class="fas fa-search"></i>
                  </div>
                  <div class="question-input">
                    <input type="text" class="form-control" id="">
                  </div>
                </div>
              </div>
            </div>
            <div class="question-tip">
              <div>
                <p>면접 TIP 및<br>특이사항</p>
              </div>
              <div class="mb-3" disabled>
                <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="면접 후 TIP을 남겨주세요" rows="3"
                  style="resize:none;"></textarea>
              </div>
            </div>
            <div class="pass-yn">
              <div>
                <p>합격 여부</p>
              </div>
              <div class="pass-btn">
                <button type="button" class="btn btn-light" style="width:150px">긍정적</button>
                <button type="button" class="btn btn-light" style="width:150px">보통</button>
                <button type="button" class="btn btn-light" style="width:150px">부정적</button>
              </div>
            </div>
            <div class="btn-container">
              <div>
                <input type="submit" class="submit" value="등록요청">
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
    <script>
      $("#datePicker").datepicker({
        format: "yyyy-mm-dd",
        language: "kr"
      });
    </script>
  </main><!-- End #main -->
		
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>