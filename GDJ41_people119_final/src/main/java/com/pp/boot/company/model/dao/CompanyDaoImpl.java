package com.pp.boot.company.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.company.model.vo.Company;
@Repository
public class CompanyDaoImpl implements CompanyDao{
	
	@Override
	public Company loginCompany(SqlSessionTemplate session, Map param) {
		return session.selectOne("company.loginCompany",param);
		
	}
	@Override
	public int enrollCompany(SqlSessionTemplate session, Company company) {
		return session.insert("company.enrollCompany",company);
	}
	
	// 기업 정보 수정 == 회원가입할때 안받았던 내용들 채우기
	@Override
	public int updateCompany(SqlSessionTemplate session, Company c) {
		return session.update("company.updateCompany", c);
	}
}
