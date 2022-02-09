package com.pp.boot.board.model.service;

import java.util.List;

import com.pp.boot.board.model.vo.Board;
import com.pp.boot.board.model.vo.Comment;

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

	
}
