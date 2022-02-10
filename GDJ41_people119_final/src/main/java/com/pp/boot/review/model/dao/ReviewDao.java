package com.pp.boot.review.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.company.model.vo.Company;
import com.pp.boot.review.model.vo.CompanyReview;

public interface ReviewDao {
	
	// 전체 기업 리스트
	List<Company> selectCompanyList(SqlSessionTemplate session);
	
	// 전체 기업리뷰 리스트
	List<CompanyReview> selectCompanyReviewList(SqlSessionTemplate session);
	
	
}
