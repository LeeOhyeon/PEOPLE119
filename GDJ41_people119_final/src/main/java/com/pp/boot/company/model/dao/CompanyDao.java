package com.pp.boot.company.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.company.model.vo.Company;

public interface CompanyDao {

	Company loginCompany(SqlSessionTemplate session, Map param);
	int enrollCompany(SqlSessionTemplate session, Company company);
	
	// 기업 정보 수정 == 회원가입할때 안받았던 내용들 채우기
	int updateCompany(SqlSessionTemplate session, Company c);
	
	// 전체 기업 리스트
	List<Company> selectCompanyList(SqlSessionTemplate session);
}
