package com.pp.boot.applicant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pp.boot.applicant.model.service.ApplicantService;
import com.pp.boot.applicant.model.vo.Applicant;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/applicant")
@Slf4j
public class ApplicantController {

	@Autowired
	private ApplicantService service;
	
	// 지원하고 나서 지원내역 화면 전환
	@RequestMapping("/apply.do")
	public String apply(@RequestParam int offerNo, @RequestParam String memberId) {
		
		return "applicant/applyList";
	}
	
	// 그냥 지원내역 전환
	@RequestMapping("/applyList.do")
	public String applyList(@RequestParam String memberId, Model model) {
		List<Applicant> list = service.selectApplyList(memberId);
		
		model.addAttribute("applyList", list);
		
		return "applicant/applyList";
	}
	
	
}
