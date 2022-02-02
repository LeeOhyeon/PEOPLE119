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

	
	
	
}
