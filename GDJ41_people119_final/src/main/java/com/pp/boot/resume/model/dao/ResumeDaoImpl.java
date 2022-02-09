package com.pp.boot.resume.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pp.boot.resume.model.vo.Career;
import com.pp.boot.resume.model.vo.Resume;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class ResumeDaoImpl implements ResumeDao {
	
	
	@Override
	public int insertBasicResume(SqlSessionTemplate session, Resume resume) {
		return session.update("resume.insertBasicResume",resume);
	}

	@Override
	public int insertCareer(SqlSessionTemplate session, Career career) {
		return session.insert("resume.insertCareer",career);
	}

	@Override
	public int insertResume(SqlSessionTemplate session, Resume resume) {
		
		session.update("resume.insertResume",resume);
		
		int resumeNo = resume.getResumeNo();
		
		log.debug("resume : "+resumeNo);

		return resumeNo;
	}
		
	
}
