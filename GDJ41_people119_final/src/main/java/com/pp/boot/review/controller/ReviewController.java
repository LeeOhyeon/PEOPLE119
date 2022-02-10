package com.pp.boot.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pp.boot.company.model.vo.Company;
import com.pp.boot.review.model.service.ReviewService;
import com.pp.boot.review.model.vo.CompanyReview;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/review")
@Slf4j
public class ReviewController {
	
	@Autowired
	private ReviewService service;

	
	// 전체 기업 리뷰 리스트
	@RequestMapping("/companyReviewList.do")
	public String companyReviewList(Model model) {
		List<CompanyReview> list = service.selectCompanyReviewList();
		
		model.addAttribute("companyReviewList", list);
		
		return "review/companyReviewList";
	}
	
	@RequestMapping("/companyReview.do")
	public String companyReview() {
		return "review/companyReview";
	}
	
	
}
