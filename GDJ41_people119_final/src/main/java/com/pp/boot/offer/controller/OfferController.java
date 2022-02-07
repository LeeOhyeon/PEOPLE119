package com.pp.boot.offer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.common.PageFactory;
import com.pp.boot.offer.model.service.OfferService;
import com.pp.boot.offer.model.vo.Offer;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/offer")
public class OfferController {
	
	@Autowired
	private OfferService service;

	// 채용공고 리스트로 화면 전환
	@RequestMapping("/offerList.do")
	public ModelAndView offerList(@RequestParam(value="cPage", defaultValue="1") int cPage, @RequestParam(value="numPerpage", defaultValue="5") int numPerpage, ModelAndView mv) {
//		List<Offer> list = service.selectOfferList(cPage, numPerpage);
		List<Offer> list = service.selectOfferList();
		
		log.debug("{}"+list);
		// 전체 공고 개수 확인
		int totalData = service.countOfferList();
		
		mv.addObject("totalContents", totalData);
		mv.addObject("pageBar", PageFactory.getPageBar(totalData, cPage, numPerpage, 5, "offer/offerList.do"));
		
		mv.addObject("list", list);
		mv.setViewName("offer/offerList");
		
		return mv;
	}
	
	// 채용공고 상세보기
	@RequestMapping("/offerView.do")
	public String offerView() {
		return "offer/offerView";
	}
	
	// 채용공고 등록 페이지로 이동
	@RequestMapping("/enrollOffer.do")
	public String enrollOffer() {
		return "offer/enrollOffer";
	}
	
	// 공고 등록
//	@RequestMapping(value="/enrollOfferEnd.do", method=RequestMethod.POST)
//	public ModelAndView enrollOfferEnd() {
//		
//	}
	
}
