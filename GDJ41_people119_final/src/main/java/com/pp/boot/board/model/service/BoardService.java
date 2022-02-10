package com.pp.boot.board.model.service;

import java.util.List;

import com.pp.boot.board.model.vo.Board;
import com.pp.boot.board.model.vo.Comment;
import com.pp.boot.board.model.vo.Like;

public interface BoardService {
	List<Board> boardList();
	
	List<Board> freeList();
	
	List<Board> leaveList();
	
	List<Board> qaList();
	
	List<Board> readyList();
	
	List<Board> turnoverList();
	
	int boardListCount();
	
	Board selectBoard(int boardNo);

	List<Comment> commentList(int boardNo);
	
	int insertComment(Comment c);

	int countComment(int boardNo);

	List<Board> boardCategory(String category);

	int categoryListCount(String category);

	int enrollBoard(Board b);

	int boardLike(Like l);

	int boardLikeCount(Like l);

	List<Board> hotList();

	int insertReply(Comment c);

	List<Comment> replyList(int boardNo);

	
}
