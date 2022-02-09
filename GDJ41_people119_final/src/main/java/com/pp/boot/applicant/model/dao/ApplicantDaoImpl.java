package com.pp.boot.applicant.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.applicant.model.vo.Applicant;

@Repository
public class ApplicantDaoImpl implements ApplicantDao {

	// 그냥 지원내역 전환
	@Override
	public List<Applicant> selectApplyList(SqlSessionTemplate session, String memberId) {
		return session.selectList("applicant.selectApplyList", memberId);
	}
	
	// 공고 지원하기
	@Override
	public int apply(SqlSessionTemplate session, Map param) {
		return session.insert("applicant.apply", param);
	}
	
}
