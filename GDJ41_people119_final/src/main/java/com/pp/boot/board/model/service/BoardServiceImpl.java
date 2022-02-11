package com.pp.boot.board.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pp.boot.board.model.dao.BoardDao;
import com.pp.boot.board.model.vo.Board;
import com.pp.boot.board.model.vo.Comment;
import com.pp.boot.board.model.vo.Like;

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
	@Override
	public List<Comment> commentList(int boardNo) {
		List<Comment> commentList=dao.commentList(session,boardNo);
		return commentList;
	}
	@Override
	public int insertComment(Comment c) {
		int result=dao.insertComment(session, c);
		return result;
	}
	@Override
	public int countComment(int boardNo) {
		int countComment=dao.countComment(session,boardNo);
		return countComment;
	}
	@Override
	public List<Board> boardCategory(String category) {
		List<Board> list=dao.boardCategory(session,category);
		return list;
	}
	@Override
	public int categoryListCount(String category) {
		int count=dao.categoryListCount(session,category);
		return count;
	}
	@Override
	public int enrollBoard(Board b) {
		int result=dao.enrollBoard(session,b);
		return result;
	}
	@Override
	public int boardLike(Like l) {
		int result=dao.boardLike(session,l);
		return result;
	}
	@Override
	public int boardLikeCount(Like l) {
		int count=dao.boardLikeCount(session,l);
		return count;
	}
	@Override
	public List<Board> hotList() {
		List<Board> list=dao.hotList(session);
		return list;
	}
	@Override
	public int insertReply(Comment c) {
		int result=dao.insertReply(session,c);
		
		return result;
	}
	@Override
	public List<Comment> replyList(int boardNo) {
		List<Comment> list=dao.replyList(session,boardNo);
		return list;
	}
	@Override
	public int commentDelete(int commentNo) {
		int count=dao.commentDelete(session,commentNo);
		return count;
	}
	@Override
	public int boardDelete(int boardNo) {
		int count=dao.boardDelete(session,boardNo);
		return count;
	}
	@Override
	public Board updateBoardView(int boardNo) {
		Board b=dao.updateBoardView(session,boardNo);
		return b;
	}
	@Override
	public int updateBoard(Board b) {
		int count=dao.updateBoard(session,b);
		return count;
	}
	@Override
	public List<Board> newSort(String category) {
		List<Board> list=dao.newSort(session,category);
		
		return list;
	}
	@Override
	public List<Board> viewSort(String category) {
		List<Board> list=dao.viewSort(session,category);
		
		return list;
	}
	@Override
	public void updateViewCount(int boardNo) {
		dao.updateViewCount(session,boardNo);
	}
	@Override
	public List<Board> likeSort(String category) {
		// TODO Auto-generated method stub
		List<Board> list=dao.likeSort(session,category);
		
		return list;
	}
	@Override
	public List<Board> commentSort(String category) {
		List<Board> list=dao.commentSort(session,category);
		
		return list;
	}
	
}
