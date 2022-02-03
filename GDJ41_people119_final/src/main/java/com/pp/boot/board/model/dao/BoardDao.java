package com.pp.boot.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.board.model.vo.Board;

public interface BoardDao {
	List<Board> boardList(SqlSessionTemplate session);
	
	int boardListCount(SqlSessionTemplate session);
	
	List<Board> freeList(SqlSessionTemplate session);
	
	List<Board> leaveList(SqlSessionTemplate session);

	List<Board> qaList(SqlSessionTemplate session);
	
	List<Board> readyList(SqlSessionTemplate session);
	
	List<Board> turnoverList(SqlSessionTemplate session);
}
