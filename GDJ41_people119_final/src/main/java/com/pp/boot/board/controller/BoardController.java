package com.pp.boot.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.board.model.service.BoardService;
import com.pp.boot.board.model.vo.Board;
import com.pp.boot.board.model.vo.Comment;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardController {
	
	@Autowired
	private Board b;
	
	@Autowired
	private BoardService service;
	
	@RequestMapping("/boardList.do")
	public ModelAndView boardList(ModelAndView mv) {
		
		List<Board> list=service.boardList(); //전체리스트
		List<Board> free=service.freeList();
		List<Board> leave=service.leaveList();
		List<Board> turnover=service.turnoverList();
		List<Board> qa=service.qaList();
		List<Board> ready=service.readyList();
		
		int count=service.boardListCount();
		log.debug("{}"+list);
		mv.addObject("list",list);
		mv.addObject("free",free);
		mv.addObject("leave",leave);
		mv.addObject("turnover",turnover);
		mv.addObject("qa",qa);
		mv.addObject("ready",ready);
		mv.addObject("count",count);
		
		mv.setViewName("board/boardList");
		return mv;
	}
	
	@RequestMapping("/selectBoard.do")
	public ModelAndView selectBoard(ModelAndView mv,int boardNo) {
		
		Board b=service.selectBoard(boardNo);
		List<Comment> comment=service.commentList(boardNo);
		log.debug("{}"+b);
		mv.addObject("b",b);
		mv.addObject("comment",comment);
		mv.setViewName("board/selectBoard");
		return mv;
	}
	@RequestMapping("/insertComment.do")
	@ResponseBody
	public List<Comment> insertComment(int boardNo,String memberId,String commentContent,int commentLevel,HttpServletResponse response) {
		
		Comment c=Comment.builder().boardNo(boardNo).memberId(memberId).commentContent(commentContent)
				.commentLevel(commentLevel).build();
		int result=service.insertComment(c);
		List<Comment> comments=service.commentList(boardNo);
		response.setContentType("application/json; charset=utf-8");
		
		return comments;
	}
	
	
	@RequestMapping("/selectComment.do")
	@ResponseBody
	public List<Comment> selectComment(@RequestParam int boardNo,HttpServletResponse response){
		List<Comment> comments=service.commentList(boardNo);
		
		response.setContentType("application/json; charset=utf-8");
		
		return comments;
	}
}
