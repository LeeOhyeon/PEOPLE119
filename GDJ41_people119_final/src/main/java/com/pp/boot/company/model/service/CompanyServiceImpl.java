package com.pp.boot.company.model.service;

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
}
