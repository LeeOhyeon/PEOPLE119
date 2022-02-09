package com.pp.boot.resume.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.member.model.service.MemberService;
import com.pp.boot.member.model.vo.Member;
import com.pp.boot.resume.model.service.ResumeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/resume")
@Slf4j
public class ResumeController {

	@Autowired
	private ResumeService resumeService;

	@Autowired
	private MemberService service;

	// 회원 이력서 목록
	@RequestMapping("/memberResumeList.do")
	public ModelAndView memberResumeList(@RequestParam String memberId, ModelAndView mv) {

		mv.setViewName("member/memberResumeList");

		return mv;
	}
	
	//이력서 등록 페이지
	@RequestMapping("/insertResumeView.do")
	public ModelAndView insertResumeView(@RequestParam String memberId, ModelAndView mv) {

		Member loginMember = service.loginMember(Map.of("memberId", memberId));
		mv.addObject("loginMember", loginMember);
		mv.setViewName("member/insertResume");

		return mv;
	}

}
