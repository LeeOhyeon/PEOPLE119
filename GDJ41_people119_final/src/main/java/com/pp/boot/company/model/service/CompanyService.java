package com.pp.boot.company.model.service;

import java.util.List;
import java.util.Map;

import com.pp.boot.company.model.vo.Company;
import com.pp.boot.review.model.vo.CompanyReview;

public interface CompanyService {

	Company loginCompany(Map param);
	int enrollCompany(Company company);

	// 기업 정보 수정 == 회원가입할때 안받았던 내용들 채우기
	int updateCompany(Company c);
	
	// 전체 기업 리스트
	List<Company> selectCompanyList();
	
	// 한개 기업 정보 가져오기
	Company selectCompany(String companyName);
	
	// 해당 기업의 리뷰 전체 개수 가져오기
	int countCompany(String companyName);
	
	
}
