package com.pp.boot.interview.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.interview.model.vo.InterviewCareer;

public interface InterviewDao {
	

	List<InterviewCareer> careerList(SqlSessionTemplate session,String memberId);

}
