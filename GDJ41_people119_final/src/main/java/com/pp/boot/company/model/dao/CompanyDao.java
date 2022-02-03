package com.pp.boot.company.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.company.model.vo.Company;

public interface CompanyDao {

	Company loginCompany(SqlSessionTemplate session, Map param);

}
