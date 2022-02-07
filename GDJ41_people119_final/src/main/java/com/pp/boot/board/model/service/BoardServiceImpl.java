package com.pp.boot.board.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.boot.board.model.dao.BoardDao;
import com.pp.boot.board.model.vo.Board;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao dao;
	
	@Autowired
	SqlSessionTemplate session;
	
	@Override
	public List<Board> boardList() {
		List<Board> list=dao.boardList(session);
		return list;
	}
	@Override
	public int boardListCount() {
		int count=dao.boardListCount(session);
		return count;
	}
	@Override
	public List<Board> freeList() {
		List<Board> free=dao.freeList(session);
		return free;
	}
	@Override
	public List<Board> leaveList() {
		List<Board> leave=dao.leaveList(session);
		return leave;
	}
	@Override
	public List<Board> qaList() {
		List<Board> qa=dao.qaList(session);
		return qa;
	}
	@Override
	public List<Board> readyList() {
		List<Board> ready=dao.readyList(session);
		return ready;
	}
	@Override
	public List<Board> turnoverList() {
		List<Board> turnover=dao.turnoverList(session);
		return turnover;
	}
	@Override
	public Board selectBoard(int boardNo) {
		Board b=dao.selectBoard(session,boardNo);
		return b;
	}
}
