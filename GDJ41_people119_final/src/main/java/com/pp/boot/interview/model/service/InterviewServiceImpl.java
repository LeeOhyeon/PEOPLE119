package com.pp.boot.interview.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.boot.interview.model.dao.InterviewDao;
import com.pp.boot.interview.model.vo.InterviewCareer;

@Service
public class InterviewServiceImpl implements InterviewService {

	@Autowired
	private InterviewDao dao;
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<InterviewCareer> careerList() {
		List<InterviewCareer> list=dao.careerList(session);
		return null;
	}

}
