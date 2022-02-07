package com.pp.boot.company.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.company.model.service.CompanyService;
import com.pp.boot.company.model.vo.Attachment;
import com.pp.boot.company.model.vo.Company;

import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes({"loginCompany"})
@Slf4j
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	private CompanyService service;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@RequestMapping("/companyLoginView.do")
	public String companyLoginView() {
		return "company/companyLogin";
	}
	
	
	@RequestMapping("/companyLogin.do")
	public String loginCompany(@RequestParam Map param,Model model) {
		Company loginCompany = service.loginCompany(param);
		
		if(loginCompany != null && encoder.matches((String)param.get("password"),loginCompany.getPassword()))
			model.addAttribute("loginCompany",loginCompany);
		
		return "redirect:/company/companyIndex.do";
	}
	
	@RequestMapping("/companyLogout.do")
	public String logoutCompany(HttpSession session, SessionStatus status) {
		
		if(!status.isComplete()) {
			status.setComplete();
		}
		
		return "redirect:/company/companyIndex.do";
	}
	
	@RequestMapping("/enrollCompanyView.do")
	public String enrollCompanyView() {
		return "company/enrollCompany";
	}
	
	@PostMapping("/enrollCompany.do")
	public String enrollCompany(Company company,Model model) {
				
		company.setPassword(encoder.encode(company.getPassword()));
		int result = service.enrollCompany(company);		
		String msg = "";
		String loc ="";		
		if(result>0) {
			msg="회원가입이 완료되었습니다. 로그인 해주세요";
			loc="/";
		}else {
			msg="회원가입 실패";
			loc="enrollCompanyView.do";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("loc",loc);
		
		return "common/msg";
	}
	
	// 기업 MyPage 이동
	@RequestMapping("/companyMypage.do")
	public String companyMypage() {
		return "company/companyMypage";
	}
	
	// 기업 정보 수정 페이지 전환
	@RequestMapping("/updateCompany.do")
	public String updateCompany() {
		return "company/updateCompany";
	}
	
	// 기업 정보 수정 완료
	@RequestMapping(value="/updateCompanyEnd.do", method=RequestMethod.POST)
	public ModelAndView updateCompanyEnd(Company c, ModelAndView mv, @RequestParam(value="upFile", required=false) MultipartFile[] upFile, HttpServletRequest req) {
		
		String path=req.getServletContext().getRealPath("/resources/upload/company/");
	      File f=new File(path);
	      if(!f.exists()) f.mkdirs();
	      c.setFiles(new ArrayList<Attachment>());
	      for(MultipartFile mf : upFile) {
	    	  if(!mf.isEmpty()) {
	    		  //파일 리네임처리를 직접처리
	    		  String originalFileName = mf.getOriginalFilename();
	    		  String ext = originalFileName.substring(originalFileName.lastIndexOf("."));
	    		  
	    		  //리네임규칙설정
	    		  SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd_HHmmsssss");
	    		  int rndNum=(int)(Math.random()*1000);
	    		  String renameFile=sdf.format(System.currentTimeMillis()) + "_" + rndNum + ext;
	    		  
	    		  //리네임명으로 파일저장하기
	    		  //multipartFile클래스에서 파일을 저장하는 메소드를 제공함. -> transferTo(파일객체);
	    		  try {
	    			  mf.transferTo(new File(path+renameFile));
	    			  Attachment file=new Attachment();
	    			  file.setOriginalFilename(originalFileName);
	    			  file.setRenamedFilename(renameFile);
	    			  c.getFiles().add(file);
	    		  }catch(IOException e) {
	    			  e.printStackTrace();
	    		  }
	     	}
	      
	      }
	      String msg = "";
	      String loc = "";
	      try {
	    	  int result = service.updateCompany(c);
	    	  msg = "등록성공";
	    	  loc = "/board/boardList.do";
	      }catch(RuntimeException e) {
	    	  msg = "등록실패 : " + e.getMessage();
	    	  loc = "/board/boardInsert.do";
	      }
	      
	      mv.addObject("loc","/board/boardList.do");
	      mv.setViewName("common/msg");
	      return mv;
		
	}
	
}
