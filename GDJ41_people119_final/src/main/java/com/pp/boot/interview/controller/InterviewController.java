package com.pp.boot.interview.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.interview.model.service.InterviewService;
import com.pp.boot.interview.model.vo.InterviewReview;
import com.pp.boot.interview.model.vo.InterviewCareer;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/interview")
@Slf4j
public class InterviewController {
	
	@Autowired
	private InterviewCareer ic;
	
	@Autowired 
	private InterviewReview i;
	
	@Autowired
	private InterviewService service;
	@RequestMapping("/interviewList.do")
	public ModelAndView InterviewList(ModelAndView mv) {
		
		mv.setViewName("interview/interviewList");
		return mv;
	}
	@RequestMapping("/interviewEnrollView.do")
	public ModelAndView interviewEnrollView(ModelAndView mv,@RequestParam String memberId) {
		
		
		List<InterviewCareer> list=service.careerList(memberId);
		
		System.out.println(list);
		mv.addObject("list",list);
		mv.setViewName("interview/interviewEnroll");
		return mv;
	}
	
	 @RequestMapping("/interviewEnroll.do") 
	 public ModelAndView interviewEnroll(ModelAndView mv,InterviewReview i) {
		 System.out.println(i);
		 int result=service.interviewEnroll(i);
	 
		 return mv; 
	 }
	 
	
}
