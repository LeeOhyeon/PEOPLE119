package com.pp.boot.company.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.company.model.vo.Company;

public class CompanyDaoImpl implements CompanyDao{
	
	@Override
	public Company loginCompany(SqlSessionTemplate session, Map param) {
		return session.selectOne("company.selectCompany",param);
		
	}
}
