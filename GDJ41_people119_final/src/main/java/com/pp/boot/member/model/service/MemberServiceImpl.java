package com.pp.boot.member.model.service;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.boot.member.model.dao.MemberDao;
import com.pp.boot.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public Member loginMember(Map param) {
		return dao.loginMember(session, param);
	}

	@Override
	public int enrollMember(Member member) {
		
		return dao.enrollMember(session,member);
	}

	@Override
	public Member checkEmail(String email) {

		return dao.checkEmail(session,email);
	}

	@Override
	public Member searchId(Map param) {
		return dao.searchId(session,param);
	}

	@Override
	public int updatePassword(Map param) {
		return dao.updatePassword(session,param);
	}

	
	
	
}
