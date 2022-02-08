package com.pp.boot.offer.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.boot.offer.model.dao.OfferDao;
import com.pp.boot.offer.model.vo.Offer;

import lombok.extern.slf4j.Slf4j;

@Service
public class OfferServiceImpl implements OfferService {
	
	@Autowired
	private OfferDao dao;
	
	@Autowired
	private SqlSessionTemplate session;
	
	// 전체 공고 리스트 가져오기
//	@Override
//	public List<Offer> selectOfferList(int cPage, int numPerpage) {
//		return dao.selectOfferList(session, cPage, numPerpage);
//	}
	@Override
	public List<Offer> selectOfferList() {
		return dao.selectOfferList(session);
	}
	
	@Override
	public int countOfferList() {
		return dao.countOfferList(session);
	}

}
