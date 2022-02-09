package com.pp.boot.resume.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.resume.model.vo.Career;
import com.pp.boot.resume.model.vo.Resume;

@Repository
public class ResumeDaoImpl implements ResumeDao {

	@Override
	public int insertBasicResume(SqlSessionTemplate session, Resume resume) {
		return session.insert("resume.insertBasicResume",resume);
	}

	@Override
	public int insertCareer(SqlSessionTemplate session, Career career) {
		return session.insert("resume.insertCareer",career);
	}

}
