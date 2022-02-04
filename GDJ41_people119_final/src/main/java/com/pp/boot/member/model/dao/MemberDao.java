package com.pp.boot.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.member.model.vo.Member;

public interface MemberDao {

	Member loginMember(SqlSessionTemplate session ,Map param);
	int enrollMember(SqlSessionTemplate session,Member member);
	Member checkEmail(SqlSessionTemplate session, String email);
	Member searchId(SqlSessionTemplate session, Map param);
	int updatePassword(SqlSessionTemplate session, Map param);
}
