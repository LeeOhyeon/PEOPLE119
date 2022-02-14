package com.pp.boot.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.pp.boot.common.PageFactoryBoard;
import com.pp.boot.common.PageFactoryBoardComment;
import com.pp.boot.common.PageFactoryBoardLike;
import com.pp.boot.common.PageFactoryBoardView;

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
		
		
		
		List<Board> list=service.newboardList(); //전체리스트
		List<Board> free=service.freeList();
		List<Board> leave=service.leaveList();
		List<Board> turnover=service.turnoverList();
		List<Board> qa=service.qaList();
		List<Board> ready=service.readyList();
		
		List<Board> hot=service.hotList();
		
		int count=service.boardListCount();
//		log.debug("{}"+list);
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
		service.updateViewCount(boardNo);
		
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
			list=service.newboardList();
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
	public int boardLike(String memberId,int boardNo,HttpServletResponse response) {
		
		Like l=Like.builder().boardNo(boardNo).memberId(memberId).build();
		
		int result=service.boardLike(l);
		response.setContentType("application/json; charset=utf-8");
		return result;
	}
	@RequestMapping("/boardLikeCount.do")
	@ResponseBody
	public int boardLikeCount(String memberId,int boardNo,HttpServletResponse response) {
		
		Like l=Like.builder().boardNo(boardNo).memberId(memberId).build();
		
		int count=service.boardLikeCount(l);
		response.setContentType("application/json; charset=utf-8");
		return count;
	}
	
	@RequestMapping("/deleteComment.do")
	@ResponseBody
	public int commentDelete(int commentNo,HttpServletResponse response) {
		
		int count=service.commentDelete(commentNo);
		response.setContentType("application/json; charset=utf-8");
		return count;
	}
	@RequestMapping("/deleteReply.do")
	@ResponseBody
	public int replyDelete(int commentNo,HttpServletResponse response) {
		int count=service.replyDelete(commentNo);
		response.setContentType("application/json; charset=utf-8");
		return count;
	}
	
	
	@RequestMapping("/deleteBoard.do")
	@ResponseBody
	public int boardDelete(int boardNo,HttpServletResponse response) {
		
		System.out.println(boardNo);
		
		int count=service.boardDelete(boardNo);
		response.setContentType("application/json; charset=utf-8");
		return count;
	}
	@RequestMapping("/updateBoardView.do")
	public ModelAndView updateBoardView(ModelAndView mv, @RequestParam int boardNo) {
		
		log.debug("{}"+boardNo);
		Board b=service.updateBoardView(boardNo);
		
		log.debug("{}"+b);
		
		mv.addObject("b",b);
		mv.setViewName("board/updateBoard");
		return mv;
	}
	@RequestMapping("/updateBoard.do")
	@ResponseBody
	public int updateBoard(Board b,HttpServletResponse response) {
		
		int result=service.updateBoard(b);
		response.setContentType("application/json; charset=utf-8");
		return result;
	}
	@RequestMapping("/newSort.do")
	@ResponseBody
	public Map<String,Object> newSort(@RequestParam String category,@RequestParam(value="cPage",defaultValue = "1") int cPage,
			@RequestParam(value="numPerPage" , defaultValue = "10") int numPerPage,
			HttpServletResponse response) {
		
		List<Board> list=new ArrayList<>();
		
		Map<String,Object> param = new HashMap<>();
		Map<String,Object> paramPage = new HashMap<>();
		
		int count=0;
		String pageBar = "";
		
		if(category.equals("게시글전체")) {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			count=service.boardListCount();
			list=service.boardList(param);
			pageBar= PageFactoryBoard.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
		}else {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			param.put("category",category);
			count=service.categoryListCount(category);
			list=service.newSort(param);
			pageBar= PageFactoryBoard.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
		}
		
		response.setContentType("application/json; charset=utf-8");
		
		return paramPage;
	}
	@RequestMapping("/viewSort.do")
	@ResponseBody
	public Map<String,Object> viewSort(@RequestParam String category,@RequestParam(value="cPage",defaultValue = "1") int cPage,
			@RequestParam(value="numPerPage" , defaultValue = "10") int numPerPage,HttpServletResponse response) {
		
		List<Board> list=new ArrayList<>();
		
		Map<String,Object> param = new HashMap<>();
		Map<String,Object> paramPage = new HashMap<>();
		
		int count=0;
		String pageBar = "";
		
		if(category.equals("게시글전체")) {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			count=service.boardListCount();
			list=service.totalviewSort(param);
			pageBar= PageFactoryBoardView.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
			
		}else {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			param.put("category",category);
			list=service.viewSort(param);
			count=service.categoryListCount(category);
			pageBar= PageFactoryBoardView.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
		}
	
		response.setContentType("application/json; charset=utf-8");
		
		return paramPage;
	}
	@RequestMapping("/likeSort.do")
	@ResponseBody
	public Map<String,Object> likeSort(@RequestParam String category,@RequestParam(value="cPage",defaultValue = "1") int cPage,
			@RequestParam(value="numPerPage" , defaultValue = "10") int numPerPage,HttpServletResponse response) {
		
		List<Board> list=new ArrayList<>();
		
		Map<String,Object> param = new HashMap<>();
		Map<String,Object> paramPage = new HashMap<>();
		
		int count=0;
		String pageBar = "";
		
		if(category.equals("게시글전체")) {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			count=service.boardListCount();
			list=service.totalLikeSort(param);
			pageBar=PageFactoryBoardLike.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
		}else {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			param.put("category",category);	
			list=service.likeSort(param);
			count=service.categoryListCount(category);
			pageBar= PageFactoryBoardLike.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
			
		}
		
		response.setContentType("application/json; charset=utf-8");
		
		return paramPage;
	}
	@RequestMapping("/commentSort.do")
	@ResponseBody
	public Map<String,Object> commentSort(@RequestParam String category,@RequestParam(value="cPage",defaultValue = "1") int cPage,
			@RequestParam(value="numPerPage" , defaultValue = "10") int numPerPage,HttpServletResponse response) {
		

		List<Board> list=new ArrayList<>();
		
		Map<String,Object> param = new HashMap<>();
		Map<String,Object> paramPage = new HashMap<>();
		
		int count=0;
		String pageBar = "";
		
		if(category.equals("게시글전체")) {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			count=service.boardListCount();
			list=service.totalCommentSort(param);
			pageBar=PageFactoryBoardComment.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
			
		}else {
			param.put("cPage", cPage);
			param.put("numPerPage", numPerPage);
			param.put("category",category);	
			list=service.commentSort(param);
			count=service.categoryListCount(category);
			pageBar= PageFactoryBoardComment.getPageBar(count, cPage, numPerPage, 5);
			paramPage.put("list", list);
			paramPage.put("pageBar", pageBar);
			
		}

		response.setContentType("application/json; charset=utf-8");
		
		return paramPage;
	}
	
	
	
}
