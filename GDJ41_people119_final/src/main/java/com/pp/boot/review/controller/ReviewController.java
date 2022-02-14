package com.pp.boot.review.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pp.boot.company.model.service.CompanyService;
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
	
	@Autowired
	private CompanyService companyService;

	
	// 전체 기업 리뷰 리스트
	@RequestMapping("/companyReviewList.do")
	public String companyReviewList(Model model) {
		List<CompanyReview> list = service.selectCompanyReviewList();
		
		model.addAttribute("companyReviewList", list);
		
		return "review/companyReviewList";
	}
	
	// 기업 리뷰 작성하기 화면 전환
	@RequestMapping("/enrollCompanyReview.do")
	public String enrollCompanyReview(Model m) {
		List<Company> list = service.selectCompanyList();
		
		m.addAttribute("companyList", list);
		
		return "review/enrollCompanyReview";
	}
	
	// 기업 리뷰 등록
	@RequestMapping("enrollCompanyReviewEnd.do")
	public String enrollCompanyReviewEnd(CompanyReview cr) {
		int result = service.insertCompanyReview(cr);
		
		return ""; 
	}
	
	// 기업 리뷰 보기
	@RequestMapping("companyReview.do")
	public String companyReview(@RequestParam String companyName, Model m) {
		// 해당 기업의 리뷰 전체 개수 가져오기
		int totalCount = companyService.countCompany(companyName);
		
		// meetingcounts
		Map percentCounts = service.countPercent(companyName);
		log.debug("{}" + percentCounts);

		
		// 기업 정보 가져오기
		Company c = companyService.selectCompany(companyName);
		
		m.addAttribute("totalCount", totalCount);
		m.addAttribute("percentCounts", percentCounts);
		
		m.addAttribute("company", c);
		
		
		return "review/companyReview";
	}
	
}
