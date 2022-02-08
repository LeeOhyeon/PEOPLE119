package com.pp.boot.member.controller;

import java.io.IOException;
import java.util.Map;
import java.util.Random;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

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
		
		String msg ="";
		String loc ="";
	
		Member loginMember = service.loginMember(param);
		
		if(loginMember != null && encoder.matches((String)param.get("password"),loginMember.getPassword()))
			model.addAttribute("loginMember",loginMember);
		
		if(loginMember == null) {
			msg = "존재하지 않는 사용자 입니다. 아이디와 비밀번호를 확인해 주세요";
			loc = "memberLoginView.do";
		}else {
			msg = "로그인 성공";
			loc = "/";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("loc",loc);
		
		return "common/msg";
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
		
		
		member.setPassword(encoder.encode(member.getPassword()));
		
		int result = service.enrollMember(member);
		
		String msg = "";
		String loc ="";
		
		if(result>0) {
			msg="회원가입이 완료되었습니다. 로그인 해주세요";
			loc="memberLoginView.do";
		}else {
			msg="회원가입 실패";
			loc="enrollMemberView.do";
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
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	@PostMapping("/sendMail.do") // AJAX와 URL을 매핑시켜줌 
	@ResponseBody  //AJAX후 값을 리턴하기위해 작성
	public String SendMail(String email,HttpServletResponse response)throws IOException {
			
			Random random=new Random();  //난수 생성을 위한 랜덤 클래스
			String key="";  //인증번호 

			//SimpleMailMessage message = new SimpleMailMessage();
			MimeMessage  message = javaMailSender.createMimeMessage();
			//message.setTo(email); //스크립트에서 보낸 메일을 받을 사용자 이메일 주소
			try {
				message.addRecipients(RecipientType.TO, email);
				message.setSubject("People119 이메일 인증번호 입니다.");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//입력 키를 위한 코드
			for(int i =0; i<3;i++) {
				int index=random.nextInt(25)+65; //A~Z까지 랜덤 알파벳 생성
				key+=(char)index;
			}
			int numIndex=random.nextInt(9999)+1000; //4자리 랜덤 정수를 생성
			key+=numIndex;
			
			
			 String msgg="";
		        msgg+= "<div style='margin:100px;'>";
		       	msgg+= "<h1> 안녕하세요 People119 입니다. </h1>";
		        msgg+= "<br>";
		        msgg+= "<p>아래 코드를 회원가입 창으로 돌아가 입력해주세요<p>";
		        msgg+= "<br>";
		        msgg+= "<p>감사합니다!<p>";
		        msgg+= "<br>";
				msgg+= "<div align='center' style='border:1px solid black; font-family:verdana';>";
				msgg+= "<h3 style='color:blue;'>회원가입 코드입니다.</h3>";
				msgg+= "<div style='font-size:130%'>";
				msgg+= "CODE : <strong>";
				msgg+= key+"</strong><div><br/> ";
				msgg+= "</div>";
			
			try {
				message.setText(msgg,"utf-8","html");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			javaMailSender.send(message);
	        return key;
			
		}
	
	@RequestMapping("/checkEmail.do")
	public void checkEmail(String email,HttpServletResponse response) throws IOException {
		Member member = service.checkEmail(email);
		response.setContentType("application/json; charset=utf-8");
		response.getWriter().print(member!=null?false:true);
	}
	
	
	//아이디 비밀번호 찾기 화면 이동
	@RequestMapping("/searchIdpasswordView.do")
	public String searchIdpasswordView() {
		return "member/searchIdpassword";
	}
	
	
	//아이디 찾기 화면 이동
	@RequestMapping("/searchIdView.do")
	public String searchIdView() {
		return "member/membersearchId";
	}
	
	//비밀번호 찾기 화면 이동
		@RequestMapping("/searchpasswordView.do")
		public String searchpasswordView() {
			return "member/membersearchpassword";
		}
		
	//아이디 찾기
	@RequestMapping("/searchId.do")
	@ResponseBody
	public Member searchId(@RequestParam Map param,HttpServletResponse response) throws IOException{
		Member member = service.searchId(param);
		log.debug("{}"+member);
		response.setContentType("application/json; charset=utf-8");
		return member; 
	}
		
	//비밀번호 변경
	@RequestMapping("/updatePassword.do")
	@ResponseBody
	public int updatePassword(@RequestParam Map<String,String> param,HttpServletResponse response) throws IOException{

		String password = "";
		password = (String)param.get("password");  
		password = encoder.encode(password);
		param.put("password",password);
		
		
		int result = service.updatePassword(param);
		response.setContentType("application/json; charset=utf-8");
		return result; 
	}
	
	//마이페이지로 이동
	@RequestMapping("/memberInfoView.do")
	public String memberInfoView(@RequestParam String memberId,Model model) {
		
		Member loginMember = service.loginMember(Map.of("memberId",memberId));
		
		model.addAttribute("loginMember",loginMember);
		
		return "member/memberInfo";
	}
	
	//회원 정보 수정 (이름)
	@RequestMapping("/updateMemberName.do")
	@ResponseBody
	public Member updateMemberName(@RequestParam Map param, HttpServletResponse response,Model model) throws IOException{
		 
		int result = service.updateMemberName(param);
		
		String memberId = (String)param.get("memberId");
		
		Member loginMember = null;
		
		if(result>0) {
			loginMember = service.loginMember(Map.of("memberId",memberId));	
		}
		
		response.setContentType("application/json; charset=utf-8");
		
		return loginMember; 
	}
	
	//회원 정보 수정 (생일)
		@RequestMapping("/updatebirth.do")
		@ResponseBody
		public Member updatebirth(@RequestParam Map param, HttpServletResponse response,Model model) throws IOException{
			 
			int result = service.updatebirth(param);
			
			String memberId = (String)param.get("memberId");
			
			Member loginMember = null;
			
			if(result>0) {
				loginMember = service.loginMember(Map.of("memberId",memberId));	
			}
			
			response.setContentType("application/json; charset=utf-8");
			
			return loginMember; 
		}
		
	
		//회원 정보 수정 (성별)
		@RequestMapping("/updateGender.do")
		@ResponseBody
		public Member updateGender(@RequestParam Map param, HttpServletResponse response,Model model) throws IOException{
			 
			int result = service.updateGender(param);
			
			String memberId = (String)param.get("memberId");
			
			Member loginMember = null;
			
			if(result>0) {
				loginMember = service.loginMember(Map.of("memberId",memberId));	
			}
			
			response.setContentType("application/json; charset=utf-8");
			
			return loginMember; 
		}
			
		//회원 정보 수정 (주소)
		@RequestMapping("/updateAddress.do")
		@ResponseBody
		public Member updateAddress(@RequestParam Map param, HttpServletResponse response,Model model) throws IOException{
			 
			int result = service.updateAddress(param);
			
			String memberId = (String)param.get("memberId");
			
			Member loginMember = null;
			
			if(result>0) {
				loginMember = service.loginMember(Map.of("memberId",memberId));	
			}
			
			response.setContentType("application/json; charset=utf-8");
			
			return loginMember; 
		}
			
	
		//회원 정보 수정 (주소)
		@RequestMapping("/updateEmail.do")
		@ResponseBody
		public Member updateEmail(@RequestParam Map param, HttpServletResponse response,Model model) throws IOException{
			 
			int result = service.updateEmail(param);
			
			String memberId = (String)param.get("memberId");
			
			Member loginMember = null;
			
			if(result>0) {
				loginMember = service.loginMember(Map.of("memberId",memberId));	
			}
			
			response.setContentType("application/json; charset=utf-8");
			
			return loginMember; 
		}
					
		//회원 정보 수정 (핸드폰 번호)
		@RequestMapping("/updatePhone.do")
		@ResponseBody
		public Member updatePhone(@RequestParam Map param, HttpServletResponse response,Model model) throws IOException{
			 
			int result = service.updatePhone(param);
			
			String memberId = (String)param.get("memberId");
			
			Member loginMember = null;
			
			if(result>0) {
				loginMember = service.loginMember(Map.of("memberId",memberId));	
			}
			
			response.setContentType("application/json; charset=utf-8");
			
			return loginMember; 
		}
							
		//회원 이력서 관리
		@RequestMapping("/memberResumeList.do")
		public ModelAndView memberResumeList(@RequestParam String memberId,ModelAndView mv) {
			
			mv.setViewName("member/memberResumeList");
			
			return mv;
		}
		
		@RequestMapping("/insertResumeView.do")
		public ModelAndView insertResumeView(@RequestParam String memberId,ModelAndView mv) {
			
			Member loginMember = service.loginMember(Map.of("memberId",memberId));
			mv.addObject("loginMember",loginMember);
			mv.setViewName("member/insertResume");
			
			return mv;
		}

}
