package com.pp.boot.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Override
	public Member loginMember(SqlSessionTemplate session,Map param) {
		return session.selectOne("member.loginMember",param);
	}

	@Override
	public int enrollMember(SqlSessionTemplate session, Member member) {
		return session.insert("member.enrollMember",member);
	}

	
}
