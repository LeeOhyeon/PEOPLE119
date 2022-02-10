package com.pp.boot.resume.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.resume.model.vo.Career;
import com.pp.boot.resume.model.vo.Certificate;
import com.pp.boot.resume.model.vo.Language;
import com.pp.boot.resume.model.vo.Resume;

public interface ResumeDao {

	int insertBasicResume(SqlSessionTemplate session, Resume resume);

	int insertCareer(SqlSessionTemplate session, Career career);

	int insertResume(SqlSessionTemplate session, Resume resume);

	int insertCertificate(SqlSessionTemplate session, Certificate certifi);

	int insertLanguage(SqlSessionTemplate session, Language lang);

	List<Resume> selectResumeList(SqlSessionTemplate session, Map<String, Object> param);

	int selectResumeListCount(SqlSessionTemplate session, String memberId);

	int deleteResume(SqlSessionTemplate session, int resumeNo);
	
	
}