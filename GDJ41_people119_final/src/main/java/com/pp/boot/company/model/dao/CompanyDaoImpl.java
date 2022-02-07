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
}