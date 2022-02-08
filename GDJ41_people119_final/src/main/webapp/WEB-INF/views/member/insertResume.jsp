<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link href="/resources/assets/css/insertResume.css" rel="stylesheet">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>이력서 등록</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>이력서 등록</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->
	
	<form id="resumeSubmit" action="${path }/member/insertResume.do" method="post" enctype="multipart/form-data">
    <section class="inner-page">
      <div class="container">
        <div class="resume-container">
          <p style="font-size: 24px; font-weight: bolder;">기본정보</p>
          
          <div class="resume-basic-container">
            <div class="resume-basic-info">
              <div class="profileImg">
              	<div class="upload-box">
				  <div id="drop-file" class="drag-file">
				    <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
				    <p class="message">Drag files to upload</p>
				    <img src="" alt="미리보기 이미지" class="preview">
				  </div>
				</div>
              	<div class="file-container">
	              <label class="file-label" for="chooseFile">사진 선택</label>
					<input class="file" id="chooseFile" type="file"  onchange="dropFile.handleFiles(this.files)"accept="image/png, image/jpeg, image/gif">
              	</div>
              </div>
              <div class="basic-info-container">
               <div class="info-span">이름 : </div><div class="info-name">${loginMember.memberName }</div><span class="info-gender"> (${loginMember.gender =='M'?"남":"여"})</span><br>
               <div class="info-span">이메일 : </div> <div class="basic-info">${loginMember.email }</div><br>
               <div class="info-span">H.P : </div><div class="basic-info">${loginMember.phone }</div><br>
               <div class="info-span">주소 : </div><div class="basic-info">${loginMember.address }</div><br>
               <div class="update-info">
              	<a href="${path }/member/memberInfoView.do?memberId=${loginMember.memberId}"><button class="btn btn-outline-primary" type="button">정보수정</button></a>
              </div>
              </div>
            </div>
             
          </div>
          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">이력서 제목</p>
            <input class="form-control" type="text" placeholder="이력서 제목을 입력하세요(100자까지 입력가능)" id="resumeTitle"
            aria-label="default input example" name="resumeTitle">
            <span id="resumeTitle-result"></span>
          </div>
          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">학력사항<span style="font-weight: normal; font-size: 15px;"> 최종
                학력 선택 후 학력사항을 입력하세요</span></p>
            <div class="resume-school-info">
              <label for="school1" class="school"><input type="radio" id="school1" name="academic" value="초등학교"><span>초등학교 졸업</span></label>
              <label for="school2" class="school"><input type="radio" id="school2" name="academic" value="중학교"><span>중학교 졸업</span></label>
              <label for="school3" class="school"><input type="radio" id="school3" name="academic" value="고등학교" ><span>고등학교 졸업</span></label>
              <label for="school4" class="school"><input type="radio" id="school4" name="academic" value="대학/대학원" data-flag="돼지"><span>대학/대학원 이상 졸업</span></label>
            </div>
            <div class="school-input-container">
            	<div class="elementary-container">
            		<div class="school-input-title" id="container-title">대학/대학원 이상 졸업</div>
            		<table>
	            			<tr>
	            				<td>학교명<span> (필수)</span></td>
	            				<td >
	            				<input class="form-control university-input" required="required" type="text" name="schoolName" aria-label="default input example">
	            				</td>
	            			</tr>
	            			<tr>
	            				<td>지역<span> (필수)</span></td>
	            				<td>
	            				<input class="form-control university-input "  required="required" type="text" name="schoolArea" aria-label="default input example">
	            				</td>
	            			</tr>
	            			
	            			<tr class="university-container">
	            				<td>전공<span> (필수)</span></td>
	            				<td>
	            				<input class="form-control university-input" required="required" type="text" name="major" aria-label="default input example">
	            				</td>
	            			</tr>
	            			<tr class="university-container">
	            				<td>주/야간 </td>
	            				<td>
	            				<div class="form-check university-input">
  									<input class="form-check-input" type="radio" name="dayNight" id="dayNight1" value="주간" checked="checked">
								  <label class="form-check-label" for="dayNight1">
								    주간
								  </label>
								</div>
								<div class="form-check university-input">
								  <input class="form-check-input" type="radio" name="dayNight" id="dayNight2"  value="야간">
								  <label class="form-check-label" for="dayNight2">
								   야간
								  </label>
								</div>
	            				
	            				</td>
	            			</tr>
	            			<tr class="university-container">
	            				<td>학점<span> (필수)</span></td>
	            				<td>
	            				<input class="form-control university-input" type="text" name="grades" aria-label="default input example" required="required">
	            				</td>
	            			</tr>
		            			
	            			<tr>
	            				<td>입학날짜<span> (필수)</span></td>
	            				<td> 
	            				<input class="form-control university-input schoolStartDate" type="month" placeholder="Default input" name="admissionDate" aria-label="default input example">
	            				</td>
	            			</tr>
	            			<tr>
	            				<td>졸업날짜<span> (필수)</span></td>
	            				<td>
	            				<input class="form-control university-input schoolEndDate" type="month" placeholder="Default input" name="grauationDate" aria-label="default input example">
	            				</td>
	            			</tr>
	            		</table>
            	</div>
            </div>
            
            <script type="text/javascript">
            	
            	
            
			</script>
          </div>

          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">경력사항</p>
            <div class="resume-career-info">
              <div class="select-career">
                <label for="career1"><input type="radio" id="career1" name="career" checked="checked">신입</label>
                <label for="career2"><input type="radio" id="career2" name="career">경력</label>
              </div>
              <div class="career-info">
                <table>
                  <tr>
                    <td>회사명</td>
                    <td style="width: 500px"><input class="form-control" type="text" aria-label="default input example" name="companyName"></td>
                  </tr><tr>
                    <td>근무부서</td>
                    <td style="width: 500px"><input class="form-control" type="text" aria-label="default input example" name="department"></td>
                  </tr>
                  <tr>
                    <td>입사일</td>
                    <td>
                      <input type="date" style="width: 100%;" name="joinDate">
                    </td>
                  </tr>
                  <tr>
                    <td>퇴사일</td>
                    <td>
                      <input type="date" style="width: 100%;" name="regDate">
                    </td>
                   
                  </tr>
                  <tr>
                    <td>퇴사사유</td>
                    <td>
                      <select class="form-select" aria-label="Default select example" name="regReason">
                          <option value="업직종 전환" selected>업직종 전환</option>
                          <option value="근무조건">근무조건</option>
                          <option value="경영악화">경영악화</option>
                          <option value="계약만료">계약만료</option>
                          <option value="학업">학업</option>
                          <option value="유학">유학</option>
                          <option value="개인사정">개인사정</option>
                          <option value="기타">기타</option>
                      </select>
                    </td>
                
                  </tr>
                  <tr>
                    <td>직급</td>
                    <td>
                      <select class="form-select" aria-label="Default select example" name="rank">
                        <option selected value="인턴/수습">인턴/수습</option>
                        <option value="사원">사원</option>
                        <option value="주임">주임</option>
                        <option value="계장">계장</option>
                        <option value="대리">대리</option>
                        <option value="과장">과장</option>
                        <option value="차장">차장</option>
                        <option value="부장">부장</option>
                        <option value="감사">감사</option>
                        <option value="이사">이사</option>
                        <option value="상무">상무</option>
                        <option value="전무">전무</option>
                        <option value="부사">부사장</option>
                        <option value="사장">사장</option>
                        <option value="임원">임원</option>
                        <option value="연구원">연구원</option>
                        <option value="주임연구원">주임연구원</option>
                        <option value="선임연구원">선임연구원</option>
                        <option value="책임연구원">책임연구원</option>
                        <option value="수석연구원">수석연구원</option>
                        <option value="연구소장">연구소장</option>
                      </select>
                    </td>
                  </tr>
                  <tr>
                   <td>직책</td>
                    <td>
                      <select class="form-select" aria-label="Default select example" name="position">
                        <option selected value="팀원">팀원</option>
                        <option value="팀장">팀장</option>
                        <option value="실장">실장</option>
                        <option value="총무">총무</option>
                        <option value="지점장">지점장</option>
                        <option value="지사장">지사장</option>
                        <option value="파트장">파트장</option>
                        <option value="그룹장">그룹장</option>
                        <option value="센터장">센터장</option>
                        <option value="매니저">매니저</option>
                        <option value="본부장">본부장</option>
                        <option value="사업부장">사업부장</option>
                        <option value="원장">원장</option>
                        <option value="국장">국장</option>
                      </select>
                    </td>
                  </tr>
                  <tr>
                    <td>근무지역</td>
                    <td>
                      <select class="form-select" aria-label="Default select example" name="deptLocation">
                        <option value="강남구">강남구</option>
                        <option value="강북구">강북구</option>
                        <option value="광진구">광진구</option>
                        <option value="노원구">노원구</option>
                        <option value="동작구">동작구</option>
                        <option value="구로구">구로구</option>
                        <option value="도봉구">도봉구</option>
                        <option value="마포구">마포구</option>
                        <option value="성동구">성동구</option>
                        <option value="양천구">양천구</option>
                        <option value="은평구">은평구</option>
                        <option value="중랑구">중랑구</option>
                        <option value="강동구">강동구</option>
                        <option value="서대문구">서대문구</option>
                        <option value="성북구">성북구</option>
                        <option value="영등포구">영등포구</option>
                        <option value="종로구">종로구</option>
                        <option value="강서구">강서구</option>
                        <option value="서초구">서초구</option>
                        <option value="송파구">송파구</option>
                        <option value="용산구">용산구</option>
                        <option value="중구">중구</option>
                        <option value="동대문구">동대문구</option>
                        <option value="금천구">금천구</option>
                        <option value="관악구">관악구</option>
                      </select>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>연봉</td>
                    <td>
                      <input class="form-control" type="number" placeholder="만원" aria-label="default input example" name="annualIncome" min="1500" step="100">
                    </td>
                  
                  </tr>
                  <tr>
                    <td>담당업무</td>
                    <td>
                      <input class="form-control" type="text" placeholder="담당업무" aria-label="default input example" name="assignedTask">
                    </td>
                  
                  </tr>
                </table>
              </div>
            </div>
          </div>
          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">희망 근무조건 선택</p>
            <div class="hope-worktype">
              <table>
                <tr>
                  <td>근무형태</td>
                  <td>
                    <select class="form-select" aria-label="Default select example" style="width: 500px;" name="workType">
                      <option selected>정규직</option>
                      <option value="1">계약직</option>
                    </select>
                  </td>
                  <tr>
                    <td>희망연봉</td>
                    <td><input style="width: 500px;" class="form-control" type="number" min="1500" step="100" placeholder="만원" aria-label="default input example"></td>
                  </tr>
                  <tr>
                    <td>근무지역</td>
                    <td colspan="4">
                      <select class="form-select" aria-label="Default select example" style="width: 500px;" name="workingArea">
                        <option value="강남구">강남구</option>
                        <option value="강북구">강북구</option>
                        <option value="광진구">광진구</option>
                        <option value="노원구">노원구</option>
                        <option value="동작구">동작구</option>
                        <option value="구로구">구로구</option>
                        <option value="도봉구">도봉구</option>
                        <option value="마포구">마포구</option>
                        <option value="성동구">성동구</option>
                        <option value="양천구">양천구</option>
                        <option value="은평구">은평구</option>
                        <option value="중랑구">중랑구</option>
                        <option value="강동구">강동구</option>
                        <option value="서대문구">서대문구</option>
                        <option value="성북구">성북구</option>
                        <option value="영등포구">영등포구</option>
                        <option value="종로구">종로구</option>
                        <option value="강서구">강서구</option>
                        <option value="서초구">서초구</option>
                        <option value="송파구">송파구</option>
                        <option value="용산구">용산구</option>
                        <option value="중구">중구</option>
                        <option value="동대문구">동대문구</option>
                        <option value="금천구">금천구</option>
                        <option value="관악구">관악구</option>
                      </select>
                      <div class="areaSelect-result-container">
                      	<div class="areaSelect-result">
                      		
                      	</div>
                      </div>
                    </td>
                  </tr>
                  
        
                  <tr>
                    <td>포지션</td>
                    <td>
                      <select class="form-select" aria-label="Default select example" style="width: 500px;" name="hopePosition">
                        <option value="서버/백엔드 개발자" selected>서버/백엔드 개발자</option>
                        <option value="프론트엔드 개발자">프론트엔드 개발자</option>
                        <option value="웹 풀스택 개발자">웹 풀스택 개발자</option>
                        <option value="안드로이드 개발자">안드로이드 개발자</option>
                        <option value="IOS개발자">IOS개발자</option>
                        <option value="크로스플랫폼 개발자">크로스플랫폼 개발자</option>
                        <option value="게임클라이언트 개발자">게임클라이언트 개발자</option>
                        <option value="게임 서버 개발자">게임 서버 개발자</option>
                        <option value="DBA">DBA</option>
                        <option value="빅데이터 엔지니어">빅데이터 엔지니어</option>
                        <option value="인공지능/머신러닝">인공지능/머신러닝</option>
                        <option value="Devops/시스템 엔지니어">Devops/시스템 엔지니어</option>
                        <option value="정보보안 담당자">정보보안 담당자</option>
                        <option value="QA엔지니어">QA엔지니어</option>
                        <option value="개발PM">개발PM</option>
                        <option value="HW/임베디드">HW/임베디드</option>
                        <option value="SW/솔루션">SW/솔루션</option>
                        <option value="웹퍼블리셔">웹퍼블리셔</option>
                        <option value="VR/AR/3D">VR/AR/3D</option>
                        <option value="기술지원">기술지원</option>
                      </select>
                    </td>
                  </tr>
                </table>

            </div>
            
            <script>
            
        
                 
                  
            </script>
                  
            
          </div>
          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">자격증</p>
            <div class="certificate-container">
              <table>
                <tr>
                  <td>자격증명</td>
                  <td><input style="width: 500px;" class="form-control" type="text" placeholder="자격증명" aria-label="default input example"
                  name="certificateName"
                  ></td>
                </tr>
                <tr>
                  <td>발행처</td>
                  <td><input style="width: 500px;" class="form-control" type="text" placeholder="발행처" aria-label="default input example"
                  name="institution"
                  ></td>
                </tr>
                <tr>
                  <td>합격구분</td>
                  <td>
                    <select class="form-select" aria-label="Default select example" style="width: 500px;" name="acceptance">
                      <option selected value="1차 합격">1차 합격</option>
                      <option value="2차 합격">2차 합격</option>
                      <option value="필기 합격">필기 합격</option>
                      <option value="실기 합격">실기 합격</option>
                      <option value="최종 합격">최종 합격</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td>취득일</td>
                  <td>
                    <input type="date" name="acquiredDate">
                  </td>
                </tr>
              </table>
            </div>
          </div>

          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">어학시험</p>
            <div class="certificate-container">
              <table >
                <tr>
                  <td>언어</td>
                  <td>
                    <select class="form-select" aria-label="Default select example" style="width: 500px;" name="language">
                      <option selected value="영어">영어</option>
                      <option value="일본어">일본어</option>
                      <option value="중국어">중국어</option>
                      <option value="독일어">독일어</option>
                      <option value="불어">불어</option>
                      <option value="스페인어">스페인어</option>
                      <option value="러시아어">러시아어</option>
                      <option value="이탈리아어">이탈리아어</option>
                      <option value="한국어">한국어</option>
                      <option value="기타">기타</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td>시험종류</td>
                  <td><input style="width: 500px;" class="form-control" type="text" placeholder="시험종류 입력" aria-label="default input example"
                  name="testType"
                  ></td>
                </tr>
                <tr>
                  <tr>
                    <td>점수</td>
                    <td><input style="width: 500px;" class="form-control" type="text" placeholder="점수" aria-label="default input example"
                    name="score"
                    ></td>
                  </tr>
                  <tr>
                </tr>
                <tr>
                  <td>취득여부</td>
                  <td>
                    <select class="form-select" aria-label="Default select example" style="width: 500px;"
                    name="acqStatus">
                      <option selected value="취득">취득(PASS)</option>
                      <option value="미취득">미취득(NON PASS)</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td>취득일</td>
                  <td>
                    <input type="date" name="aequireDate">
                  </td>
                </tr>
              </table>
            </div>
          </div>

          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">보유기술</p>
            <div class="tech-container">
              <select class="form-select" aria-label="Default select example" style="width: 200px;" name="tech">
                <option value="JAVA">JAVA</option>
                <option value="JSP">JSP</option>
                <option value="Ajax">Ajax</option>
                <option value="Jquery">Jquery</option>
                <option value="MY-SQL">MY-SQL</option>
                <option value="ORACLE">ORACLE</option>
                <option value="CSS">CSS</option>
                <option value="HTML">HTML</option>
                <option value="MyBatis">MyBatis</option>
                <option value="Spring Framework">Spring Framework</option>
                <option value="Java Script">Java Script</option>
                <option value="Spring boot">Spring boot</option>
                <option value="React">React</option>
                <option value="Angular">Angular</option>
                <option value="Vue.j">Vue.js</option>
                <option value="Node.js">Node.js</option>
                <option value="Python">Python</option>
                <option value="Bootstrap">Bootstrap</option>
                <option value="Servlet">Servlet</option>
              </select>
            </div>
              <div class="techSelect-result-container">
                <div class="techSelect-result"></div>
              </div>
          </div>
			

          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">자기소개서</p>
            <div class="introduceself-container">
              <input class="form-control" type="text" placeholder="자소서 제목" aria-label="default input example" name="selfTitle">
              <br>
              <div class="form-floating">
                <textarea name="selfContent" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px;resize:none;" ></textarea>
                <label for="floatingTextarea2">자소서 내용</label>
              </div>
            </div>
          </div>

          <div class="resume-basic-container" style="border: none;">
            <p style="font-size: 24px; font-weight: bolder;">경력기술서</p>
            <div class="introduceself-container">
              <input class="form-control" type="text" placeholder="경력기술서 제목" aria-label="default input example" name="careerTitle">
              <br>
              <div class="form-floating">
                <textarea name="careerContent" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px;resize:none;" ></textarea>
                <label for="floatingTextarea2">경력기술서 내용</label>
              </div>
            </div>
          </div>

          <div class="resume-btn-container">
           <div style="float: right;">
             <button class="btn btn-outline-secondary" type="button">이력서 저장</button>
           </div>
          </div>
        </div>
      </div>
      
    </section>
	</form>

<script type="text/javascript">
function DropFile(dropAreaId, fileListId) {
	  let dropArea = document.getElementById(dropAreaId);
	  let fileList = document.getElementById(fileListId);

	  function preventDefaults(e) {
	    e.preventDefault();
	    e.stopPropagation();
	  }

	  function highlight(e) {
	    preventDefaults(e);
	    dropArea.classList.add("highlight");
	  }

	  function unhighlight(e) {
	    preventDefaults(e);
	    dropArea.classList.remove("highlight");
	  }

	  function handleDrop(e) {
	    unhighlight(e);
	    let dt = e.dataTransfer;
	    let files = dt.files;

	    handleFiles(files);

	    const fileList = document.getElementById(fileListId);
	    if (fileList) {
	      fileList.scrollTo({ top: fileList.scrollHeight });
	    }
	  }

	  function handleFiles(files) {
	    files = [...files];
	    // files.forEach(uploadFile);
	    files.forEach(previewFile);
	  }

	  function previewFile(file) {
	    console.log(file);
	    renderFile(file);
	  }

	  function renderFile(file) {
	    let reader = new FileReader();
	    reader.readAsDataURL(file);
	    reader.onloadend = function () {
	      let img = dropArea.getElementsByClassName("preview")[0];
	      img.src = reader.result;
	      img.style.display = "block";
	    };
	  }

	  dropArea.addEventListener("dragenter", highlight, false);
	  dropArea.addEventListener("dragover", highlight, false);
	  dropArea.addEventListener("dragleave", unhighlight, false);
	  dropArea.addEventListener("drop", handleDrop, false);

	  return {
	    handleFiles
	  };
	}

	const dropFile = new DropFile("drop-file", "files");
	
	//제목 글자수 초과 100자
	$("#resumeTitle").keyup(e=>{
		const length = $(e.target).val().length;
		if(length>100){
          temp = $(e.target).val().substring(0,98);
          $(e.target).val(temp);
       }
       $("#resumeTitle-result").text(length+"/100"); 
	});
	
	//최종학력 선택
	$("input[name=academic]").change(e=>{
		$("#container-title").html($(e.target).siblings('span').html());
		if($($("input[name=academic]:checked")).data('flag')) {
			$(".university-container").show();
		} else {
			$(".university-container").hide();
		}
		
	});
	
	//최종 학력 날짜 
	$(".schoolEndDate").change(e=>{
		if($("input[name=grauationDate]").val()<$("input[name=admissionDate]").val()){
			alert("날짜를 확인해 주세요!");
			$(".schoolEndDate").val("");
		}
	});
	
	$(".schoolStartDate").change(e=>{
		if($("input[name=grauationDate]").val() != ""){
			if($("input[name=grauationDate]").val()<$("input[name=admissionDate]").val()){
  			alert("날짜를 확인해 주세요!");
  			$(".schoolStartDate").val("");
  		}
		}
	});
	
	//입사일 퇴사일
	
	$("input[name=regDate]").change(e=>{
		if($("input[name=regDate]").val()<$("input[name=joinDate]").val()){
			alert("날짜를 확인해 주세요!");
			$("input[name=regDate]").val("");
		}
	});
	
	$("input[name=joinDate]").change(e=>{
		if($("input[name=regDate]").val() != ""){
			if($("input[name=regDate]").val()<$("input[name=joinDate]").val()){
  			alert("날짜를 확인해 주세요!");
  			$("input[name=joinDate]").val("");
  		}
		}
	});
	
	//희망 지역 선택
	   
          let workingAreaArr = [];
                $("select[name=workingArea]").change(e=>{
              	  
              	  if(workingAreaArr.length<8){
              		  if(workingAreaArr.length == 0){
              			  $(".areaSelect-result-container").css("padding-top","20px");
              			  workingAreaArr.push($("select[name=workingArea]").val());
              			  $(".areaSelect-result").append($("<span class='select-result-span' onclick='deletHopeArea(this);'>").text($("select[name=workingArea]").val()));
              		  }else{
              			  for(let i=0;i<workingAreaArr.length;i++){
                  			  if(!workingAreaArr.includes($("select[name=workingArea]").val())){
                  				 workingAreaArr.push($("select[name=workingArea]").val());
                            	  $(".areaSelect-result").append($("<span class='select-result-span' onclick='deletHopeArea(this);'>").text($("select[name=workingArea]").val()));	
                  			  }                  		 
                  		}
              		  }
              		 
              	  }else{
              		  alert("지역은 8개까지 선택 가능합니다.");
              	  }
                });
                
           function deletHopeArea(e){
          	 console.log($(e).text());
          	 for(let i=0;i<workingAreaArr.length;i++){
          		 if(workingAreaArr[i] == $(e).text()){
          			 workingAreaArr.splice(i,1);
          			 $(e).remove();
          		 }
          	 }
           }
           
           
		//보유 기술 선택
		let techArr = [];
		
		  
         $("select[name=tech]").change(e=>{
         	  
         	  if(techArr.length<10){
         		  if(techArr.length == 0){
         			  $(".techSelect-result-container").css("padding-top","20px");
         			 techArr.push($("select[name=tech]").val());
         			  $(".techSelect-result").append($("<span class='select-result-span' onclick='deleteTech(this);'>").text($("select[name=tech]").val()));
         		  }else{
         			  for(let i=0;i<techArr.length;i++){
             			  if(!techArr.includes($("select[name=tech]").val())){
             				 techArr.push($("select[name=tech]").val());
                       	  $(".techSelect-result").append($("<span class='select-result-span' onclick='deleteTech(this);'>").text($("select[name=tech]").val()));	
             		 
             		 }
             			 
             		}
         		  }
         		 
         	  }else{
         		  alert("보유기술은 10개까지 선택 가능합니다.");
         	  }
           });
           
      function deleteTech(e){
     	 for(let i=0;i<techArr.length;i++){
     		 if(techArr[i] == $(e).text()){
     			techArr.splice(i,1);
     			 $(e).remove();
     		 }
     	 }
      }
      
		
           
</script>

</main><!-- End #main -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>