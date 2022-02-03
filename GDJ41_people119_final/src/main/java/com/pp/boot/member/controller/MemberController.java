package com.pp.boot.member.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.pp.boot.member.model.service.MemberService;
import com.pp.boot.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes({"loginMember"})
@RequestMapping("/member")
@Slf4j
public class MemberController {
	
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private PasswordEncoder encoder;
	
	//로그인view
	@RequestMapping("/memberLoginView.do")
	public String memberLoginView() {
		return "member/memberLogin";
	}
	
	//로그인
	@PostMapping("/memberLogin.do")
	public String memberLogin(@RequestParam Map param, Model model) {
		
		Member loginMember = service.loginMember(param);
		

		log.debug("변경전 : "+(String)param.get("password"));
		log.debug("변경후 : "+loginMember.getPassword());
		
		
		if(loginMember != null && encoder.matches((String)param.get("password"),loginMember.getPassword()))
		model.addAttribute("loginMember",loginMember);

		
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping("/logout.do")
	public String logoutMember(HttpSession session, SessionStatus status) {
		
		if(!status.isComplete()) {
			status.setComplete();
		}
		
		return "redirect:/";
	}
	
	//회원가입 화면으로 이동
	@RequestMapping("/enrollMemberView.do")
	public String enrollMemberView() {
		return "member/enrollMember";
	}
	
	//회원가입 
	@PostMapping("/enrollMember.do")
	public String enrollMember(Member member,Model model) {
		
		System.out.println(member.getPassword());
		System.out.println(encoder.encode(member.getPassword()));
		
		member.setPassword(encoder.encode(member.getPassword()));
		
		int result = service.enrollMember(member);
		
		String msg = "";
		String loc ="";
		
		if(result>0) {
			msg="회원가입이 완료되었습니다. 로그인 해주세요";
			loc="memberLogin";
		}else {
			msg="회원가입 실패";
			loc="enrollMember";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("loc",loc);
		
		return "common/msg";
	}
	
	//아이디 중복 체크
	@RequestMapping("/enrollCheckId.do")
	public void enrollCheckId(String memberId, HttpServletResponse response) throws IOException{
		Member member = service.loginMember(Map.of("memberId",memberId));
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(member!=null?false:true);
	}
	
}
