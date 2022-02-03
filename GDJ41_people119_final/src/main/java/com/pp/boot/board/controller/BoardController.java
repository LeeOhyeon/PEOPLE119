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
	private BoardService service;
	
	@RequestMapping("/boardList.do")
	public ModelAndView boardList(ModelAndView mv) {
		
		List<Board> list=service.boardList();
		int count=service.boardListCount();
		log.debug("{}"+list);
		mv.addObject("list",list);
		mv.addObject("count",count);
		mv.setViewName("board/boardList");
		return mv;
	}
}
