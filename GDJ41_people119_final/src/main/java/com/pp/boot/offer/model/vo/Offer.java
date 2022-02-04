package com.pp.boot.offer.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Offer {

	private int offerNo; // 공고 등록번호
	private String offerTitle; // 공고 제목
	private String companyName; // 공고 등록 회사명 => 기업 로그인 정보에서 가져올것
	private String companyId;
	
	// 기술스택 최대 8개
	private String tech1;
	private String tech2;
	private String tech3;
	private String tech4;
	private String tech5;
	private String tech6;
	private String tech7;
	private String tech8;
	
	// 주요업무 최대 5개
	private String business1;
	private String business2;
	private String business3;
	private String business4;
	private String business5;
	
	// 자격요건 최대 3개
	private String qualification1;
	private String qualification2;
	private String qualification3;
	
	// 우대사항 최대 3개
	private String treatment1;
	private String treatment2;
	private String treatment3;
	
	// 복지 및 혜택 최대 5개
	private String welfare1;
	private String welfare2;
	private String welfare3;
	private String welfare4;
	private String welfare5;
	
	private String carrer; // 경력
	private String education; // 학력
	private String location; // 위치
	
	private String offerContent; // 기업 및 서비스 소개
	
	private Date endDate; // 마감일
	
	private int offerReadCount; // 조회수
	
	private int status;
	
	
}
