package com.pp.boot.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.member.model.vo.Member;
import com.pp.boot.member.model.vo.Scrap;

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

	@Override
	public Member checkEmail(SqlSessionTemplate session, String email) {
		return session.selectOne("member.checkEmail",email);
	}

	@Override
	public Member searchId(SqlSessionTemplate session, Map param) {
		return session.selectOne("member.searchId",param);
	}

	@Override
	public int updatePassword(SqlSessionTemplate session, Map param) {
		return session.update("member.updatePassword",param);
	}

	@Override
	public int updateMemberName(SqlSessionTemplate session, Map param) {
		return session.update("member.updateMemberName",param);
	}
	@Override
	public int updatebirth(SqlSessionTemplate session, Map param) {
		return session.update("member.updatebirth",param);
	}

	@Override
	public int updateGender(SqlSessionTemplate session, Map param) {
		return session.update("member.updateGender",param);
	}

	@Override
	public int updateAddress(SqlSessionTemplate session, Map param) {
		return session.update("member.updateAddress",param);
	}

	@Override
	public int updateEmail(SqlSessionTemplate session, Map param) {
		return session.update("member.updateEmail",param);
	}

	@Override
	public int updatePhone(SqlSessionTemplate session, Map param) {
		return session.update("member.updatePhone",param);
	}

	@Override
	public int insertScrap(SqlSessionTemplate session,Map param) {
		return session.insert("member.insertScrap",param);
	}

	@Override
	public Scrap selectScrapList(SqlSessionTemplate session, String memberId) {
		return session.selectOne("member.selectScrapList",memberId);
	}
	
	
	
}
