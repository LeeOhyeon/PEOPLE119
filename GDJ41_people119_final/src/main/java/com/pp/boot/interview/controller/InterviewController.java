package com.pp.boot.interview.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.interview.model.service.InterviewService;
import com.pp.boot.interview.model.vo.Interview;
import com.pp.boot.interview.model.vo.InterviewCareer;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/interview")
@Slf4j
public class InterviewController {
	
	@Autowired
	private InterviewCareer ic;
	
	@Autowired 
	private Interview i;
	
	@Autowired
	private InterviewService service;
	@RequestMapping("/interviewList.do")
	public ModelAndView InterviewList(ModelAndView mv) {
		
		mv.addObject("interview/interviewList");
		return mv;
	}

	@RequestMapping("/interviewEnroll.do")
	public ModelAndView EnrollInterView(ModelAndView mv,@RequestParam String memberId) {
		
		
		List<InterviewCareer> list=service.careerList(memberId);
		
		System.out.println(list);
		mv.addObject("list",list);
		mv.addObject("interview/interviewEnroll");
		return mv;
	}
}
