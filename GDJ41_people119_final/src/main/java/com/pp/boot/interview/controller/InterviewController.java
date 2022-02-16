package com.pp.boot.interview.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	

	@RequestMapping("/interviewEnroll.do")
	public ModelAndView EnrollInterView(ModelAndView mv) {
		
		
		List<InterviewCareer> list=service.careerList();
		
		
		return mv;
	}
}
