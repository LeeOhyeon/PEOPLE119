package com.pp.boot.company.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.pp.boot.company.model.service.CompanyService;
import com.pp.boot.company.model.vo.Company;

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
	
}
