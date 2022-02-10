package com.pp.boot.review.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.company.model.vo.Company;
import com.pp.boot.review.model.vo.CompanyReview;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	
	// 전체 기업 리스트
	@Override
	public List<Company> selectCompanyList(SqlSessionTemplate session) {
		return session.selectList("company.selectCompanyList");
	}
	
	// 전체 기업리뷰 리스트
	@Override
	public List<CompanyReview> selectCompanyReviewList(SqlSessionTemplate session) {
		return session.selectList("companyReview.selectCompanyReviewList");
	}
	
}
