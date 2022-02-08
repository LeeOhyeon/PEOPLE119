package com.pp.boot.offer.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.offer.model.vo.Offer;

@Repository
public class OfferDaoImpl implements OfferDao {
	
//	@Override
//	public List<Offer> selectOfferList(SqlSessionTemplate session, int cPage, int numPerpage) {
//		return session.selectList("offer.selectOfferList", null, new RowBounds((cPage-1) * numPerpage, numPerpage));
//	}
	@Override
	public List<Offer> selectOfferList(SqlSessionTemplate session) {
		return session.selectList("offer.selectOfferList");
	}
	
	@Override
	public int countOfferList(SqlSessionTemplate session) {
		return session.selectOne("offer.countOfferList");
	}
	
}
