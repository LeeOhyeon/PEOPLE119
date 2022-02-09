package com.pp.boot.applicant.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.applicant.model.vo.Applicant;

public interface ApplicantDao {
	
	List<Applicant> selectApplyList(SqlSessionTemplate session, String memberId);

}
