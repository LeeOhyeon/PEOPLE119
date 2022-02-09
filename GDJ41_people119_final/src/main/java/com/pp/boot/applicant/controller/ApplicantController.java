package com.pp.boot.applicant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pp.boot.applicant.model.service.ApplicantService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/applicant")
@Slf4j
public class ApplicantController {

	@Autowired
	private ApplicantService service;
	
	// 지원하기 화면 전환
	@RequestMapping("/apply.do")
	public String apply() {
		
		return "applicant/apply";
	}
	
}
