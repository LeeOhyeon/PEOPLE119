<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

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
        <form action="">
          <div class="company-review">
            <div>
              <h3>회의 얼마나 자주하나요?</h3>
            </div>
            <div class="meeting-count">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">필요할때만 진행</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">주 1~2회</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">주 3~4회</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">매일</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>회식주기는 어떤가요?</h3>
            </div>
            <div class="membership">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">연 1~2번</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">3,4개월에 1번</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">매달 진행</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">필요할때 진행</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>회식은 어떻게 진행되나요?</h3>
            </div>
            <div class="membership-process">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">간단하게 식사만</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">회식은 술과함께</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">문화 회식을 즐겨요</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>연차는 어떻게 사용하나요?</h3>
            </div>
            <div class="vacation">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">자유롭게 사용</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">눈치보며 사용</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">잘 사용하지 못함</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>연차를 몇일 정도 사용하나요? (1년기준)</h3>
            </div>
            <div class="vacation-count">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">15일 이상</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">10~14일</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">5~9일</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">0~4일</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>직원 성비가 어떻게 되나요?</h3>
            </div>
            <div class="gender-ratio">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">남자가 많아요</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">여자가 많아요</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">비슷해요!</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>출근이 자유로운 편인가요?</h3>
            </div>
            <div class="attendance">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">유연근무제 시행</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">정해진 시간에 출근</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">재택근무 진행</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>회사의 평균 연령대는?</h3>
            </div>
            <div class="avarage-age">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">20대</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">30대</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">40대 이상</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>어떤 복장으로 출근하나요?</h3>
            </div>
            <div class="clothes">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">칼정장</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">세미정장</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">캐주얼 복장</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>워라밸이 잘 지켜지나요?</h3>
            </div>
            <div class="work-life-balance">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">그럼요! 항상 칼퇴합니다</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">어느 정도는 지켜지기는 합니다</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">아니요, 지켜지지 않습니다</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>야근 많이 하시나요?</h3>
            </div>
            <div class="night-shift">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">야근없음</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">주 1~2회</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">주 3~4회</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">매일</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>최근 연봉 인상률은 어땠나요?</h3>
            </div>
            <div class="salary-increase">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">4% 이하</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">5~10%</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">11~15%</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">16% 이상</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>성과금은 어느 정도 지급되나요?</h3>
            </div>
            <div class="incentive">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">100% 미만</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">100~200%</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">201~300%</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">300% 초과</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>육아휴직은 자유롭게 사용하시나요?</h3>
            </div>
            <div class="baby-vacation">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">자유롭게 사용</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">눈치보며 사용</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">육아휴직 없어요</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>일을 하면서 성장하고 있나요?</h3>
            </div>
            <div class="grow-up">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">네, 성장하고 있어요</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">정체되고 있는것 같아요</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">아니요, 뒤쳐지는 느낌입니다.</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>이직시 나의 커리어에 도움이 될까요?</h3>
            </div>
            <div class="carrer">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">도움이 돼요</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">도움이 되지 않아요</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>직원을 위해 자기개발비를 지원해주나요?</h3>
            </div>
            <div class="self-dev">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">네</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">아니요</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>회사에 본받을 사람이 있나요?</h3>
            </div>
            <div class="mento">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">나를 이끌어주는 상사</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">함께 일하는 동료</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">열정 넘치는 부하직원</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">없어요</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>직원들의 평균 근속 연수는?</h3>
            </div>
            <div class="avarage-years">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">2년 미만</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">2~6년</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">6~10년</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">10년 이상</label>
              </div>
            </div>
          </div>
          <div class="company-review">
            <div>
              <h3>경영진의 리더십 스타일은?</h3>
            </div>
            <div class="leadership">
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">의견존중형</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">업무지시형</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">공유형</label>
              </div>
              <div>
                <input type="radio" id="" name="" value="">
                <label label for="">분석형</label>
              </div>
            </div>
          </div>
          <div class="company">
            <div>
              <h3>(기업이름)의 좋은점을 알려주세요</h3>
            </div>
            <div class="mb-3" disabled>
              <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="좋은점을 알려주세요"
                rows="3" style="resize:none;"></textarea>
            </div>
            <div class="btn">
              <div>
                <button type="button" class="btn btn-light" style="width:150px">이전</button>
              </div>
              <div>
                <button type="button" class="btn btn-primary" style="width:150px">등록완료</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </section>
    <script>

    </script>
  </main><!-- End #main -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"/>