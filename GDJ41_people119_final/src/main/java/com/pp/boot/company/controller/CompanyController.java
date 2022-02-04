package com.pp.boot.company.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.pp.boot.company.model.service.CompanyService;
import com.pp.boot.company.model.vo.Company;
import com.pp.boot.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@SessionAttributes({"loginCompany"})
public class CompanyController {

	@Autowired
	private CompanyService service;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@RequestMapping("/company/companyLoginView.do")
	public String companyLoginView() {
		return "company/companyLogin";
	}
	
	
	@RequestMapping("/company/companyLogin.do")
	public String companyLogin(@RequestParam Map param,Model model) {
		Company loginCompany = service.loginCompany(param);
		if(loginCompany != null && encoder.matches((String)param.get("password"),loginCompany.getPassword()))
			model.addAttribute("loginCompany",loginCompany);
		
		return "redirect:/";
	}
	
	@RequestMapping("/company/companyLogout.do")
	public String logoutCompany(HttpSession session, SessionStatus status) {
		
		if(!status.isComplete()) {
			status.setComplete();
		}
		
		return "redirect:/";
	}
	
	@RequestMapping("/company/enrollCompanyView.do")
	public String enrollMemberView() {
		return "company/enrollCompany";
	}
	
	@PostMapping("/company/enrollCompany.do")
	public String enrollMember(Company company,Model model) {
				
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
	
}
