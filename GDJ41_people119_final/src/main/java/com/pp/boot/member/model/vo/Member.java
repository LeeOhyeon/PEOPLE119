package com.pp.boot.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Member {

	private String memberId;
	private String password;
	private String memberName;
	private String gender;
	private String address;
	private String phone;
	
}
