package com.pp.boot.applicant.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.applicant.model.vo.Applicant;

public interface ApplicantDao {
	
	// 그냥 지원내역 전환
	List<Applicant> selectApplyList(SqlSessionTemplate session, String memberId);
	
	// 공고 지원하기
	int apply(SqlSessionTemplate session, Map param);
	
	// 지원 공고 개수 확인
	int countApply(SqlSessionTemplate session, String memberId);

}
