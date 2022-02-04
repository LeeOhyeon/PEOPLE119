package com.pp.boot.offer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OfferController {

	// 채용공고 리스트로 화면 전환
	@RequestMapping("/offer/offerList.do")
	public String offerList() {
		return "offer/offerList";
	}
	
	// 채용공고 상세보기
	@RequestMapping("/offer/offerView.do")
	public String offerView() {
		return "offer/offerView";
	}
	
	// 채용공고 등록 페이지로 이동
	@RequestMapping("/offer/enrollOffer.do")
	public String enrolloffer() {
		return "offer/enrollOffer";
	}
	
}
