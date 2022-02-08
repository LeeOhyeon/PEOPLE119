package com.pp.boot.company.controller;

import java.io.File;
import java.io.IOException;
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
	public ModelAndView updateCompanyEnd(Company c, ModelAndView mv, @RequestParam(value="file1", required=false) MultipartFile file1, HttpServletRequest req) {
		
		log.debug("{}" + c);
		log.debug("{}" + file1);
//		log.debug("{}" + companyImage);
		
		// 저장경로 설정
		String path=req.getServletContext().getRealPath("/resources/upload/company/");
		File f=new File(path);
		if(!f.exists()) f.mkdirs();
//		
		// 파비콘 저장
		if(!file1.isEmpty()) {
			try {
				file1.transferTo(new File(path + file1.getOriginalFilename()));
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
//		
//		// 이미지파일 저장
//		if(!companyImage.isEmpty()) {
//			try {
//				companyImage.transferTo(new File(path + companyImage.getOriginalFilename()));
//			}catch(IOException e) {
//				e.printStackTrace();
//			}
//		}
//		
		c.setFavicon(file1.getOriginalFilename());
//		
//		String msg = "";
//	    String loc = "";
//	    try {
	    	int result = service.updateCompany(c);
//	    	msg = "등록성공";
//	    	loc = "/company/companyMypage.do";
//	    }catch(RuntimeException e) {
//	    	msg = "등록실패 : " + e.getMessage();
//	    	loc = "/company/updateCompany.do";
//	    }
//	    
	    mv.addObject("loc","/company/companyMypage.do");
	    mv.setViewName("common/msg");
	    return mv;
		
	}
	
}




























