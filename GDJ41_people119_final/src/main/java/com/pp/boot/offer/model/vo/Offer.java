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

	private int offerNo;
	private String offerTitle;
	private String companyId;
	
	private String tech1;
	private String tech2;
	private String tech3;
	private String tech4;
	private String tech5;
	private String tech6;
	private String tech7;
	private String tech8;
	
	private String business1;
	private String business2;
	private String business3;
	private String business4;
	private String business5;
	
	private String qualification1;
	private String qualification2;
	private String qualification3;
	
	private String treatment1;
	private String treatment2;
	private String treatment3;
	
	private String welfare1;
	private String welfare2;
	private String welfare3;
	private String welfare4;
	private String welfare5;
	
	private String carrer;
	private String education;
	private String location;
	
	private String offerContent;
	
	private Date endDate;
	
	private int status;
	
	
}
