package com.pp.boot.applicant.model.service;

import java.util.List;

import com.pp.boot.applicant.model.vo.Applicant;

public interface ApplicantService {
	
	// 그냥 지원내역 전환
	List<Applicant> selectApplyList(String memberId);

}
