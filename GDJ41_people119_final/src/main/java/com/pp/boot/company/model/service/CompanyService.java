package com.pp.boot.company.model.service;

import java.util.Map;

import com.pp.boot.company.model.vo.Company;

public interface CompanyService {

	Company loginCompany(Map param);
	int enrollCompany(Company company);

	// 기업 정보 수정 == 회원가입할때 안받았던 내용들 채우기
	int updateCompany(Company c);
}
