package com.pp.boot.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@RequestMapping("/totalReview.do")
	public String boardView() {
		
		
		
		return "companyReview/totalCompany";
	}
	
	
}
