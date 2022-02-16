package com.pp.boot.interview.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.interview.model.vo.InterviewCareer;

@Repository
public class InterviewDaoImpl implements InterviewDao {
	
	
	@Override
	public List<InterviewCareer> careerList(SqlSessionTemplate session,String memberId) {
		// TODO Auto-generated method stub
		return session.selectList("interview.careerList",memberId);
	}
	
}
