package com.pp.boot.board.controller;

import java.util.ArrayList;
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
import com.pp.boot.board.model.vo.Like;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardController {
	
	@Autowired
	private Board b;
	
	@Autowired
	private Comment c;
	
	@Autowired
	private Like l;
	
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
		
		List<Board> hot=service.hotList();
		
		int count=service.boardListCount();
		log.debug("{}"+list);
		mv.addObject("list",list);
		mv.addObject("free",free);
		mv.addObject("leave",leave);
		mv.addObject("turnover",turnover);
		mv.addObject("qa",qa);
		mv.addObject("ready",ready);
		mv.addObject("count",count);
		mv.addObject("hot",hot);
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
	@RequestMapping("/commentReply.do")
	@ResponseBody
	public List<Comment> insertReply(int boardNo,int commentRef,String memberId,String commentContent,HttpServletResponse response) {
		
		Comment c=Comment.builder().boardNo(boardNo).memberId(memberId).commentContent(commentContent).commentRef(commentRef).build();
		
		int result=service.insertReply(c);
		
		List<Comment> reply=service.replyList(boardNo);
		
		response.setContentType("aplication/json; charset=utf-8");
		
		return reply;
	
	}
	@RequestMapping("/selectReply.do")
	@ResponseBody
	public List<Comment> selectReply(int boardNo , HttpServletResponse response) {
		
		List<Comment> reply=service.replyList(boardNo);
		
		response.setContentType("aplication/json; charset=utf-8");
		
		return reply;
	}
	
	@RequestMapping("/selectComment.do")
	@ResponseBody
	public List<Comment> selectComment(@RequestParam int boardNo,HttpServletResponse response){
		List<Comment> comments=service.commentList(boardNo);
		
		response.setContentType("application/json; charset=utf-8");
		
		return comments;
	}
	@RequestMapping("/countComment.do")
	@ResponseBody
	public int countComment(@RequestParam int boardNo,HttpServletResponse response) {
		
		int countComment=service.countComment(boardNo);
		
		response.setContentType("application/json; charset=utf-8");
		
		return countComment;
	}
	@RequestMapping("/boardCategory.do")
	public ModelAndView boardCategory(String category,ModelAndView mv) {
		
		List<Board> list=new ArrayList();
		int count=0;
		
		if(category.equals("게시글전체")) {
			list=service.boardList();
			count=service.boardListCount();
		}else {
			list=service.boardCategory(category);
			count=service.categoryListCount(category);
		}
		
		mv.addObject("count",count);
		mv.addObject("list",list);
		mv.addObject("category",category);
		mv.setViewName("board/boardCategory");
		
		return mv;
	}
	@RequestMapping("/insertBoard.do")
	public ModelAndView insertBoard(ModelAndView mv) {
		
		mv.setViewName("board/insertBoard");
		
		return mv;
	}
	@RequestMapping("/enrollBoard.do")
	public ModelAndView enrollBoard(String category,String memberId,String boardTitle,String boardContent,ModelAndView mv) {
		
		Board b=Board.builder().memberId(memberId).boardTitle(boardTitle).boardContent(boardContent).category(category).build();
		
		int result=service.enrollBoard(b);
		
	
		mv.setViewName("redirect:/");
			
		return mv;
	}
	@RequestMapping("/boardLike.do")
	@ResponseBody
	public int boardLike(String memberId,int boardNo) {
		
		Like l=Like.builder().boardNo(boardNo).memberId(memberId).build();
		
		int result=service.boardLike(l);
	
		return result;
	}
	@RequestMapping("/boardLikeCount.do")
	@ResponseBody
	public int boardLikeCount(String memberId,int boardNo) {
		
		Like l=Like.builder().boardNo(boardNo).memberId(memberId).build();
		
		int count=service.boardLikeCount(l);
	
		return count;
	}
	
	@RequestMapping("/deleteComment.do")
	@ResponseBody
	public int commentDelete(int commentNo) {
		
		int count=service.commentDelete(commentNo);
		
		return count;
	}
	
}
