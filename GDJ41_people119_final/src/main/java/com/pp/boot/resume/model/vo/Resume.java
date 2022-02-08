package com.pp.boot.resume.model.vo;

import java.sql.Date;

import com.pp.boot.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Resume {

	private int resumeNo;
	private Member memberId;
	private String resumeTitle;
	private String tech;
	private String workType;
	private int hopeSalary;
	private String workingArea;
	private String gitLink;
	private String notionLink;
	private String blogLink;
	private String openYn;
	private String hopePosition;
	private String profile;
	
	
	
}
