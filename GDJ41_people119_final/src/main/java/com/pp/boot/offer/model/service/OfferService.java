package com.pp.boot.offer.model.service;

import java.util.List;

import com.pp.boot.offer.model.vo.Offer;

public interface OfferService {
	
	// 공고 전체 리스트 가져오기
//	List<Offer> selectOfferList(int cPage, int numPerpage);	
	List<Offer> selectOfferList();	
	
	// 공고 전체 개수 확인하기
	int countOfferList();
	
	// 공고 등록
	int enrollOffer(Offer o);
	
	// 공고 상세보기
	Offer selectOffer(int offerNo);
}
