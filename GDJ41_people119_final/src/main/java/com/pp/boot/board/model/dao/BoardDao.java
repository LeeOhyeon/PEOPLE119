package com.pp.boot.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pp.boot.board.model.vo.Board;
import com.pp.boot.board.model.vo.Comment;
import com.pp.boot.board.model.vo.Like;

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

	int countComment(SqlSessionTemplate session, int boardNo);

	List<Board> boardCategory(SqlSessionTemplate session, String category);

	int categoryListCount(SqlSessionTemplate session, String category);

	int enrollBoard(SqlSessionTemplate session, Board b);

	int boardLike(SqlSessionTemplate session, Like l);

	int boardLikeCount(SqlSessionTemplate session, Like l);

	List<Board> hotList(SqlSessionTemplate session);

	int insertReply(SqlSessionTemplate session, Comment c);

	List<Comment> replyList(SqlSessionTemplate session, int boardNo);
}
