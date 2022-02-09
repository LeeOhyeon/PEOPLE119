package com.pp.boot.resume.model.service;

import com.pp.boot.resume.model.vo.Career;
import com.pp.boot.resume.model.vo.Resume;

public interface ResumeService {

	int insertBasicResume(Resume resume);

	int insertCareer(Career career);

}
