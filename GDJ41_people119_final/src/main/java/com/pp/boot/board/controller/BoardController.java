package com.pp.boot.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.board.model.service.BoardService;
import com.pp.boot.board.model.vo.Board;

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
		log.debug("{}"+b);
		mv.addObject("b",b);
		mv.setViewName("board/selectBoard");
		return mv;
	}
}
