package com.pp.boot.member.model.service;

import java.util.Map;

import com.pp.boot.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Map param);
	int enrollMember(Member member);
	Member checkEmail(String email);
	
}
