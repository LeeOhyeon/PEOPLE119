package com.pp.boot.resume.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.boot.resume.model.dao.ResumeDao;
import com.pp.boot.resume.model.vo.Career;
import com.pp.boot.resume.model.vo.Resume;

@Service
public class ResumeServiceImpl implements ResumeService {

	@Autowired
	private ResumeDao dao;
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	@Override
	public int insertBasicResume(Resume resume) {
		return dao.insertBasicResume(session,resume);
	}

	@Override
	public int insertCareer(Career career) {
		return dao.insertCareer(session,career);
	}

	@Override
	public int insertResume(Resume resume) {
		return dao.insertResume(session,resume);
	}

	
}
