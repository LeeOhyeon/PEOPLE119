package com.pp.boot.hirepost.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HirepostController {

	@RequestMapping("/hirepost/hirepostList.do")
	public String hirepostList() {
		return "hirepost/hirepostList";
	}
	
	@RequestMapping("/hirepost/hirepostView.do")
	public String hirepostView() {
		return "hirepost/hirepostView";
	}
	
	@RequestMapping("/hirepost/enrollHirepost.do")
	public String enrollHirepost() {
		return "hirepost/enrollHirepost";
	}
	
}
