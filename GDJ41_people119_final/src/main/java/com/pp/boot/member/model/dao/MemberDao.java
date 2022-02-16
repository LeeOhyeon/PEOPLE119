package com.pp.boot.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.member.model.vo.Member;
import com.pp.boot.member.model.vo.Scrap;

public interface MemberDao {

	Member loginMember(SqlSessionTemplate session ,Map param);
	int enrollMember(SqlSessionTemplate session,Member member);
	Member checkEmail(SqlSessionTemplate session, String email);
	Member searchId(SqlSessionTemplate session, Map param);
	int updatePassword(SqlSessionTemplate session, Map param);
	int updateMemberName(SqlSessionTemplate session, Map param);
	int updatebirth(SqlSessionTemplate session, Map param);
	int updateGender(SqlSessionTemplate session, Map param);
	int updateAddress(SqlSessionTemplate session, Map param);
	int updateEmail(SqlSessionTemplate session, Map param);
	int updatePhone(SqlSessionTemplate session, Map param);
	int insertScrap(SqlSessionTemplate session,Map param);
	Scrap selectScrapList(SqlSessionTemplate session, String memberId);
	
}
