package com.pp.boot.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.member.model.vo.Member;

public interface MemberDao {

	Member loginMember(SqlSessionTemplate session ,Map param);
	
}
