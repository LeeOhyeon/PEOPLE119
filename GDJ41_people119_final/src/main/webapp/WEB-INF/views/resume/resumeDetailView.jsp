<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link href="/resources/assets/css/resumeDetailView.css" rel="stylesheet">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="">
      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
       <p style="font-size: 35px; font-weight: bolder; margin-left: 600px;">이력서 등록</p>
      <div class="container">
      
        <div class="resume-container">
        <c:forEach var="r" items="${resume}">
          <div class="resume-basic-container">
          <p style="font-size: 24px; font-weight: bolder;">기본정보</p>
            <div class="resume-basic-info">
              <div class="profileImg">
              	<div class="upload-box">
				  <div id="drop-file" class="drag-file">
				    <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
				    <p class="message">files to upload</p>
				    <img src="" alt="미리보기 이미지" class="preview">
				  </div>
				</div>
              	
              </div>
              <div class="basic-info-container">
              <input type="hidden" value="${loginMember.memberId }"/>
               <div class="info-span">이름 : </div><div class="info-name">${loginMember.memberName }</div><span class="info-gender"> (${loginMember.gender =='M'?"남":"여"})</span><br>
               <div class="info-span">이메일 : </div> <div class="basic-info">${loginMember.email }</div><br>
               <div class="info-span">H.P : </div><div class="basic-info">${loginMember.phone }</div><br>
               <div class="info-span">주소 : </div><div class="basic-info">${loginMember.address }</div><br>
               <div class="update-info">
              	<a href="${path }/member/memberInfoView.do?memberId=${loginMember.memberId}"><button class="btn btn-outline-secondary" type="button">정보수정</button></a>
              </div>
              </div>
            </div>
             
          </div>
         
          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">
				<c:out value="${r.resumeTitle }"/>
			</p>
          </div>
          <div class="resume-basic-container-elementary">
            <p style="font-size: 24px; font-weight: bolder;">학력사항
            <div class="resume-school-info">
            	<c:out value="${r.academic }"/>
            </div>
            <div class="school-input-container">
            	<div class="elementary-container">
            		<div class="school-input-title" id="container-title"></div>
            		<table>	
            				<tr>
            					<td>최종 학력</td>
            					<td><c:out value="${r.academic }"/></td>
            				</tr>
	            			<tr>
	            				<td>학교명</td>
	            				<td>
	            				<c:out value="${r.schoolName }"/>
	            				</td>
	            			</tr>
	            			<tr>
	            				<td>지역</td>
	            				<td>
	            				<c:out value="${r.schoolArea }"/>
	            				</td>
	            			</tr>
	            			
	            			<tr class="university-container">
	            				<td>전공</td>
	            				<td>
	            				<c:out value="${r.major }"/>
	            				</td>
	            			</tr>
	            			<tr class="university-container">
	            				<td>주/야간</td>
	            				<td>
	            				<c:out value="${r.dayNight }"/>
	            				</td>
	            			</tr>
	            			<tr class="university-container">
	            				<td>학점</td>
	            				<td>
	            				<c:out value="${r.grades }"/>
	            				</td>
	            			</tr>
		            			
	            			<tr>
	            				<td>입학날짜</td>
	            				<td> 
	            				<c:out value="${r.admissionDate }"/>
	            				</td>
	            			</tr>
	            			<tr>
	            				<td>졸업날짜</td>
	            				<td>
	            				<c:out value="${r.graduationDate }"/>
	            				</td>
	            			</tr>
	            		</table>
            	</div>
            </div>
            
           
          </div>
	
          <div class="resume-basic-container-career addform_">
            <p style="font-size: 24px; font-weight: bolder;">경력사항
            	<span style="float:right;" class="deleteAddform" id="deleteCareerAddform" onclick="deleteCareerAddform(this);"><i class="fas fa-times"></i></span>
            </p>
            
            <c:forEach var="c" items="${r.career }">
            <div class="resume-career-info">
              <div class="select-career">
              		<c:out value="${c.career }"/>
              </div>
              <div class="career-info">
                <table>
                  <tr>
                    <td>회사명</td>
                    <td style="width: 500px">
                   	 <c:out value="${c.companyName }"/>
                    </td>
                  </tr><tr>
                    <td>근무부서</td>
                    <td style="width: 500px">
                    <c:out value="${c.department }"/>
                    </td>
                  </tr>
                  <tr>
                    <td>입사일</td>
                    <td>
                     <c:out value="${c.joinDate }"/>
                    </td>
                  </tr>
                  <tr>
                    <td>퇴사일</td>
                    <td>
                      <c:out value="${c.regDate }"/>
                    </td>
                   
                  </tr>
                  <tr>
                    <td>퇴사사유</td>
                    <td>
                       <c:out value="${c.regReason }"/>
                    </td>
                
                  </tr>
                  <tr>
                    <td>직급</td>
                    <td>
                      <c:out value="${c.rank }"/>
                    </td>
                  </tr>
                  <tr>
                   <td>직책</td>
                    <td>
                     <c:out value="${c.position }"/>
                    </td>
                  </tr>
                  <tr>
                    <td>근무지역</td>
                    <td>
                    <c:out value="${c.deptLocation }"/>
                    </td>
                  </tr>
                  <tr>
                    <td>연봉</td>
                    <td>
                      <c:out value="${c.annualIncome }"/>
                    </td>
                  
                  </tr>
                  <tr>
                    <td>담당업무</td>
                    <td>
                      <c:out value="${c.assignedTask }"/>
                    </td>
                  </tr>
                </table>
              </div>
            </div>
            </c:forEach>
          </div>
         
          
          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">희망 근무조건 선택</p>
            <div class="hope-worktype">
              <table>
                <tr>
                  <td>근무형태</td>
                  <td>
                   
                  </td>
                  <tr>
                    <td>희망연봉</td>
                    <td>
                    </td>
                  </tr>
                  <tr>
                    <td>근무지역</td>
                    <td colspan="4">
                     
                     
                    </td>
                  </tr>
                  
        
                  <tr>
                    <td>포지션</td>
                    <td>
                     
                    </td>
                  </tr>
                </table>

            </div>

          </div>
          <div class="resume-basic-container-certificate">
            <p style="font-size: 24px; font-weight: bolder;">자격증 </p>
            
            <div class="certificate-container">
              <table>
                <tr>
                  <td>자격증명</td>
                  <td></td>
                </tr>
                <tr>
                  <td>발행처</td>
                  <td></td>
                </tr>
                <tr>
                  <td>합격구분</td>
                  <td>
                  
                  </td>
                </tr>
                <tr>
                  <td>취득일</td>
                  <td>
                   
                  </td>
                </tr>
              </table>
              
            </div>
          </div>

          <div class="resume-basic-container-language">
            <p style="font-size: 24px; font-weight: bolder;">어학시험
          
            </p>
            <div class="language-container">
              <table >
                <tr>
                  <td>언어</td>
                  <td>
                   
                  </td>
                </tr>
                <tr>
                  <td>시험종류</td>
                  <td></td>
                </tr>
                <tr>
                  <tr>
                    <td>점수</td>
                    <td></td>
                  </tr>
                  <tr>
                </tr>
                <tr>
                  <td>취득여부</td>
                  <td>
                    
                  </td>
                </tr>
                <tr>
                  <td>취득일</td>
                  <td>
                    
                  </td>
                </tr>
              </table>
              	
            </div>
          </div>

          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">보유기술</p>
            <div class="tech-container">
              
            </div>
             
          </div>
			

          <div class="resume-basic-container-self">
            <p style="font-size: 24px; font-weight: bolder;">자기소개서</p>
            <div class="introduceself-container">
              <input class="form-control" type="text" placeholder="자소서 제목" aria-label="default input example" name="selfTitle" required="required">
              <br>
              <div class="form-floating">
                <textarea required="required" id="selfContent" name="selfContent" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px;resize:none;" ></textarea>
                <label for="floatingTextarea2">자소서 내용</label>
              </div>
            </div>
             
          </div>

          <div class="resume-basic-container-introcareer">
            <p style="font-size: 24px; font-weight: bolder;" >경력기술서</p>
            <div class="introduceself-container">
              <input required="required" class="form-control" type="text" placeholder="경력기술서 제목" aria-label="default input example" name="careerTitle">
              <br>
              <div class="form-floating">
                <textarea required="required" id="careerContent" name="careerContent" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px;resize:none;" ></textarea>
                <label for="floatingTextarea2">경력기술서 내용</label>
              </div>
            </div>
           
          </div>
          
          
          <div class="resume-basic-container">
            <p style="font-size: 24px; font-weight: bolder;">주소</p>
            <div class="certificate-container">
              <table >
                <tr>
                  <td>GIT 주소</td>
                  <td>
             
                  </td>
                </tr>
                <tr>
                  <td>notion 주소</td>
                  <td>
                   
                  </td>
                </tr>
               <tr>
                  <td>blog 주소</td>
                  <td>
                   
                  </td>
                </tr>
              </table>
            </div>
          </div>
         </c:forEach>
        </div>
        	<div class="quickmenu-container">
				<div class="quickmenu">
					<ul>
						<li><button type="button" class="btn btn-outline-primary quickmenuBtn" onclick="updateResume();">이력서 수정</button></li>
					</ul>
				</div>
			</div>        
      </div>
      
    </section>
	

<script type="text/javascript">

let memberId = "${loginMember.memberId}";

function DropFile(dropAreaId, fileListId) {
	
	  let dropArea = document.getElementById(dropAreaId);
	  let fileList = document.getElementById(fileListId);

	  function preventDefaults(e) {
	    e.preventDefault();
	    e.stopPropagation();
	  }

	  function highlight(e) {
	    preventDefaults(e);
	    //dropArea.classList.add("highlight");
	  }

	  function unhighlight(e) {
	    preventDefaults(e);
	    //dropArea.classList.remove("highlight");
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
		if($("input[name=graduationDate]").val()<$("input[name=admissionDate]").val()){
			alert("날짜를 확인해 주세요!");
			$(".schoolEndDate").val("");
		}
	});
	
	$(".schoolStartDate").change(e=>{
		if($("input[name=graduationDate]").val() != ""){
			if($("input[name=graduationDate]").val()<$("input[name=admissionDate]").val()){
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
      
      //경력사항 추가
      const addCareerformBtn=()=>{
        let copy = $($(".addform_")[0]).clone(false);
        copy.find(".deleteAddform").css("display","block");
        copy.find("input").val("");
        copy.find("#career1").remove();
        copy.find(".careerTitle_").remove();
		$($(".addform_")[0]).after(copy); 
		
     } 
	          
	 //자격증 추가
	 const addCertificateformBtn=()=>{
        let copy = $($(".resume-basic-container-certificate")[0]).clone(true);
        copy.css("display","block");
        copy.find("input").val("");
		$($(".resume-basic-container-certificate")[0]).after(copy); 
     }
     
	 //어학시험
	  const addLanguageformBtn=()=>{
        let copy = $($(".resume-basic-container-language")[0]).clone(true);
        copy.css("display","block");
        copy.find("input").val("");
		$($(".resume-basic-container-language")[0]).after(copy); 
     }
	  
	 /* //자기소개서
	  const addSelfformBtn=()=>{
        let copy = $($(".resume-basic-container-self")[0]).clone(true);
		$($(".resume-basic-container-self")[0]).after(copy); 
     }
	 //경력기술서
	  const addIntroCareerformBtn=()=>{
        let copy = $($(".resume-basic-container-introcareer")[0]).clone(true);
		$($(".resume-basic-container-introcareer")[0]).after(copy); 
     } 
	  */
	  
	 //기본 정보 저장
	 const insertResume=()=>{
		 
		let formdata = new FormData();
		//사진
		let upfile = $("input[name=upfile]")[0].files[0];
		 
		//학교 정보
		let academic = $("input[name=academic]:checked").val();
		let schoolName = $("input[name=schoolName]").val();
		let schoolArea = $("input[name=schoolArea]").val();
		let major = $("input[name=major]").val();
		let dayNight = $("input[name=dayNight]").val();
		let grades = $("input[name=grades]").val();
		let admissionDate = $("input[name=admissionDate]").val();
		let graduationDate = $("input[name=graduationDate]").val();
		 
		 //이력서 제목
		 let resumeTitle = $("input[name=resumeTitle]").val();
		 
		 //희망 근무조건
		 let workType = $("select[name=workType]").val();
		 let hopeSalary = $("input[name=hopeSalary]").val();
		 let workingArea = workingAreaArr;
		 let hopePosition = $("select[name=hopePosition]").val();
		 
		 //보유기술
		 let tech = techArr;
		 
		 //주소
		let gitLink = $("input[name=gitLink]").val();
		let notionLink = $("input[name=notionLink]").val();
		let blogLink = $("input[name=blogLink]").val();
		
		//자기소개서
		let selfTitle = $("input[name=selfTitle]").val();
		let selfContent = $("#selfContent").val();
		
		
		//경력기술서
		let careerTitle = $("input[name=careerTitle]").val();
		let careerContent = $("#careerContent").val();
		
		formdata.append("resumeNo",resumeNo);
		formdata.append("memberId",memberId);
		formdata.append("resumeTitle",resumeTitle);
		formdata.append("hopeSalary",hopeSalary);
		formdata.append("workingArea",workingArea);
		formdata.append("hopePosition",hopePosition);
		formdata.append("workType",workType);
		formdata.append("tech",tech);
		formdata.append("gitLink",gitLink);
		formdata.append("blogLink",blogLink);
		formdata.append("notionLink",notionLink);
		formdata.append("selfTitle",selfTitle);
		formdata.append("selfContent",selfContent);
		formdata.append("careerTitle",careerTitle);
		formdata.append("careerContent",careerContent);
		formdata.append("upfile",upfile);
		formdata.append("academic",academic); 
		formdata.append("schoolName",schoolName); 
		formdata.append("schoolArea",schoolArea); 
		formdata.append("major",major); 
		formdata.append("dayNight",dayNight); 
		formdata.append("grades",grades); 
		formdata.append("admissionDate",admissionDate); 
		formdata.append("graduationDate",graduationDate); 
		
		
		 $.ajax({
			 url :"${path }/resume/insertBasicResume.do",
			 enctype:'multipart/form-data',
		     type:"post",
		     processData: false,
	         contentType: false,
			 data : formdata,
			 success:data=>{
				 alert("이력서 등록이 완료되었습니다.");
				 memberResumeList();
			 },error:e=>{
				 alert("이력서 등록 실패 관리자에게 문의하세요.");
				 console.log("에러발생삐용삐용");
			 }
			 
		 }); 
		 
	 }
	 
	 function memberResumeList(){
		 location.assign("/resume/memberResumeList.do?memberId="+memberId);
	 }
	  
	 
	 //경력 삭제
	 const deleteCareerAddform=(e)=>{
			let deleteCareerAddform = $(e);
			deleteCareerAddform.parent().parent().remove();
	 }
	 
	 //자격증 삭제
	 const deletecertificateAddform=(e)=>{
			let deletecertificateAddform = $(e);
			deletecertificateAddform.parent().parent().remove();
	 }
	 //어학시험 삭제
	  const deletelanguageAddform=(e)=>{
			let deletelanguageAddform = $(e);
			deletelanguageAddform.parent().parent().remove();
	 }
	
	  //경력사항 등록
	  let resumeNo = "${resumeNo}";
      
    	$(".career-info").hide();
    	
    	$("input[name=career]").change(e=>{
    			$(".career-info").show();
    			if($("input[name=career]:checked").val()=='신입'){
    				$(".career-info").hide();
    				$("#addCareerformBtn").hide();
    			}else{
    				$("#addCareerformBtn").show();
    			}
    	});
    
    	$("input[name=assignedTask]").change(e=>{
    		alert("반드시 저장 버튼을 누르셔야 합니다!");
    	});
    
    	const insertCareerform=(e)=>{
    		
    		let btn = $(e);
			          		
    		let career =$(btn.parents('.resume-basic-container-career')).find('input[name=career]:checked').val(); 
        	let companyName =$(btn.parents('.resume-basic-container-career')).find('input[name=companyName]').val();
        	let joinDate =$(btn.parents('.resume-basic-container-career')).find('input[name=joinDate]').val(); 
        	let regDate = $(btn.parents('.resume-basic-container-career')).find('input[name=regDate]').val(); 
        	let regReason = $(btn.parents('.resume-basic-container-career')).find('select[name=regReason]').val();
        	let rank = $(btn.parents('.resume-basic-container-career')).find('select[name=rank]').val();
        	let position = $(btn.parents('.resume-basic-container-career')).find('select[name=position]').val();
        	let department = $(btn.parents('.resume-basic-container-career')).find('input[name=department]').val();
        	let deptLocation = $(btn.parents('.resume-basic-container-career')).find('select[name=deptLocation]').val();
        	let annualIncome = $(btn.parents('.resume-basic-container-career')).find('input[name=annualIncome]').val();
        	let assignedTask = $(btn.parents('.resume-basic-container-career')).find('input[name=assignedTask]').val();
    		
    		$.ajax({
    			url:"${path}/resume/insertCareer.do",
    			type:"post",
    			data:{
    				resumeNo:resumeNo,
    				career:career,
    				companyName:companyName,
    				joinDate:joinDate,
    				regDate:regDate,
    				regReason:regReason,
    				rank:rank,
    				position:position,
    				department:department,
    				deptLocation:deptLocation,
    				annualIncome:annualIncome,
    				assignedTask:assignedTask
    			},
    			success:data=>{
    				console.log("성공잉");
    				alert("등록 완료");
    			},error:data=>{
    				alert("등록 실패! 관리자에게 문의하세요 :(");
    				console.log("실팽팽이");
    			}
    		});
    	}
    	
    	//자격증 등록
    	
    	$("input[name=acquiredDate]").change(e=>{
    		alert("반드시 저장 버튼을 누르셔야 합니다!");
    	});
    	
    	const insertCertificateformBtn=(e)=>{
    		
    		let btn = $(e);
    		
    		
    		let certificateName = $(btn.parents('.resume-basic-container-certificate')).find('input[name=certificateName]').val();
    		let institution = $(btn.parents('.resume-basic-container-certificate')).find('input[name=institution]').val();
    		let acceptance = $(btn.parents('.resume-basic-container-certificate')).find('select[name=acceptance]').val();
    		let acquiredDate = $(btn.parents('.resume-basic-container-certificate')).find('input[name=acquiredDate]').val();
			
    		$.ajax({
    			url : "${path}/resume/insertCertificate.do",
    			type:"post",
    			data:{resumeNo:resumeNo,
    				certificateName:certificateName,
    				institution:institution,
    				acceptance:acceptance,
    				acquiredDate:acquiredDate
    			},
    			success:data=>{
    				console.log("성공잉");
    				alert("등록 완료");
    			},error:data=>{
    				alert("등록 실패! 관리자에게 문의하세요 :(");
    				console.log("실팽팽이");
    			}
    		});
    	}
    	
    	//어학 시험 등록
    		$("input[name=languageAeqDate]").change(e=>{
    		alert("반드시 저장 버튼을 누르셔야 합니다!");
    	});
    	
    	const insertLanguageformBtn=(e)=>{
    		let btn=$(e);
    		
    		let language = $(btn.parents('.resume-basic-container-language')).find('select[name=language]').val();
    		let testType = $(btn.parents('.resume-basic-container-language')).find('input[name=testType]').val();
    		let acqStatus = $(btn.parents('.resume-basic-container-language')).find('select[name=acqStatus]').val();
    		let score = $(btn.parents('.resume-basic-container-language')).find('input[name=score]').val();
    		let languageAeqDate = $(btn.parents('.resume-basic-container-language')).find('input[name=languageAeqDate]').val();
    		
    		
    		$.ajax({
    			
    			url : "${path}/resume/insertLanguage.do",
    			type:"post",
    			data:{resumeNo:resumeNo,
    				language:language,
    				testType:testType,
    				acqStatus:acqStatus,
    				score:score,
    				languageAeqDate:languageAeqDate
    			},
    			success:data=>{
    				console.log("성공잉");
    				alert("등록 완료");
    			},error:data=>{
    				alert("등록 실패! 관리자에게 문의하세요 :(");
    				console.log("실팽팽이");
    			}
    			
    		});
    		
    	}
    	
    	//퀵메뉴
    	$(document).ready(function(){
    		var currentPosition = parseInt($(".quickmenu").css("top"));
    		$(window).scroll(function() {
    			var position = $(window).scrollTop(); 
    			$(".quickmenu").stop().animate({"top":position+currentPosition+"px"},1000);
    		});
    	});
    	
    	
</script>

</main><!-- End #main -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>