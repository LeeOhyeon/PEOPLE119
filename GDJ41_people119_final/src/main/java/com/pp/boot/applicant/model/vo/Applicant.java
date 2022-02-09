package com.pp.boot.applicant.model.vo;

import com.pp.boot.member.model.vo.Member;
import com.pp.boot.offer.model.vo.Offer;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Applicant {
	
	private Offer offerNo;
	private Member memberId;
	private String passYN; // 합격여부

}
