package com.pp.boot.member.model.service;

import java.util.Map;

import com.pp.boot.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Map param);
	int enrollMember(Member member);
	Member checkEmail(String email);
	Member searchId(Map param);
	int updatePassword(Map param);
	int updateMemberName(Map param);
	int updatebirth(Map param);
	int updateGender(Map param);
	int updateAddress(Map param);
	int updateEmail(Map param);
	int updatePhone(Map param);
	
}
