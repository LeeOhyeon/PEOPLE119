package com.pp.boot.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyController {
	
	// 기업 MyPage 이동
	@RequestMapping("/company/companyMypage.do")
	public String companyMypage() {
		return "company/companyMypage";
	}

}
