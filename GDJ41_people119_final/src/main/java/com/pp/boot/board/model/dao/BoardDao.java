package com.pp.boot.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.board.model.vo.Board;
import com.pp.boot.board.model.vo.Comment;

public interface BoardDao {
	List<Board> boardList(SqlSessionTemplate session);
	
	int boardListCount(SqlSessionTemplate session);
	
	List<Board> freeList(SqlSessionTemplate session);
	
	List<Board> leaveList(SqlSessionTemplate session);

	List<Board> qaList(SqlSessionTemplate session);
	
	List<Board> readyList(SqlSessionTemplate session);
	
	List<Board> turnoverList(SqlSessionTemplate session);
	
	Board selectBoard(SqlSessionTemplate session,int boardNo);

	int insertComment(SqlSessionTemplate session, Comment c);

	List<Comment> commentList(SqlSessionTemplate session,int boardNo);
}
