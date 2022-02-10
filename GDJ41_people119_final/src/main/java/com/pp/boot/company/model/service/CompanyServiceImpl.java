package com.pp.boot.company.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.boot.company.model.dao.CompanyDao;
import com.pp.boot.company.model.vo.Company;
@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Autowired
	private CompanyDao dao;
			
	@Override
	public Company loginCompany(Map param) {
		return dao.loginCompany(session,param);
	}
	@Override
	public int enrollCompany(Company company) {
		return dao.enrollCompany(session,company);
	}
	
	// 기업 정보 수정 == 회원가입할때 안받았던 내용들 채우기
	@Override
	public int updateCompany(Company c) {
		return dao.updateCompany(session, c);
	}
	
	// 전체 기업 리스트
	@Override
	public List<Company> selectCompanyList() {
		return dao.selectCompanyList(session);
	}
}
