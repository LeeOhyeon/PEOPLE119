package com.pp.boot.review.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CompanyReview {
	
	private int companyReviewNo;
	private String memberId;
	private String companyId;
	
	private String meetingCount;
	private String drinkingCycle;
	private String wayOfMetting;
	private String wayOfVacation;
	private String genderRatio;
	private String freeAttendance;
	private String avarageofage;
	private String clothes;
	private String workLifeBalance;
	private String nightShift;
	private String salaryIncreaseratio;
	private String incentive;
	private String incentiveDate;
	private String parentAlleave;
	private String growUp;
	private String carrer;
	private String mento;
	private String avarageOfYears;
	private String leadershipStyle;
	private String advantages;
	private int avgScore;
	
	

}
