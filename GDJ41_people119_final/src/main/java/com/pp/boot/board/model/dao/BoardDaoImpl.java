package com.pp.boot.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.pp.boot.board.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Override
	public List<Board> boardList(SqlSessionTemplate session) {
		
		return session.selectList("board.selectBoardList"); 
	}

	@Override
	public int boardListCount(SqlSessionTemplate session) {
		
		return session.selectOne("board.boardListCount");
	}
	
}
