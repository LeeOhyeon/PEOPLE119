package com.pp.boot.offer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OfferController {

	@RequestMapping("/offer/offerList.do")
	public String offerList() {
		return "offer/offerList";
	}
	
	@RequestMapping("/offer/offerView.do")
	public String offerView() {
		return "offer/offerView";
	}
	
	@RequestMapping("/offer/enrollOffer.do")
	public String enrolloffer() {
		return "offer/enrollOffer";
	}
	
}
