package com.pp.boot.board.model.service;

import java.util.List;

import com.pp.boot.board.model.vo.Board;

public interface BoardService {
	List<Board> boardList();
	
	List<Board> freeList();
	
	List<Board> leaveList();
	
	List<Board> qaList();
	
	List<Board> readyList();
	
	List<Board> turnoverList();
	
	int boardListCount();
}
