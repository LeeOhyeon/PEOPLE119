package com.pp.boot.company.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class Company {

	private String companyId;
	private String password;
	private String managerName;
	private String managerPhone;
	private String companyName;
	private String ceoName;
	private String companyAddress;
	private String businessNumber;
	private int establishment;
	private String service;
	private String companySize;
	private int employeeNumber;
	private String companyUrl;
//	private String favicon;
//	private String image;
	
	private List<Attachment> files;
	
	
	
	
}
