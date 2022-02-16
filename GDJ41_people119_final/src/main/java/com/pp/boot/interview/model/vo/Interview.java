package com.pp.boot.interview.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Component
public class Interview {
	private int interviewReviewNo;
	private String memberId;
	private String companyName;
	private String workType;
	private String carrer;
	private Date interviewDate;
	private String evaluation;
	private String difficulty;
	private String interviewType;
	private String interviewees;
	private String interviewProcess;
	private String interviewQuestion;
	private String interviewTip;
	private String passOrNot;
	
}
