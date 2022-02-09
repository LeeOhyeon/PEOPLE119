package com.pp.boot.resume.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pp.boot.member.model.service.MemberService;
import com.pp.boot.member.model.vo.Member;
import com.pp.boot.resume.model.service.ResumeService;
import com.pp.boot.resume.model.vo.Career;
import com.pp.boot.resume.model.vo.Resume;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/resume")
@Slf4j
public class ResumeController {

	@Autowired
	private ResumeService resumeService;

	@Autowired
	private MemberService service;

	// 회원 이력서 목록
	@RequestMapping("/memberResumeList.do")
	public ModelAndView memberResumeList(@RequestParam String memberId, ModelAndView mv) {

		mv.setViewName("resume/memberResumeList");

		return mv;
	}
	
	//이력서 등록 페이지
	@RequestMapping("/insertResumeView.do")
	public ModelAndView insertResumeView(@RequestParam String memberId, ModelAndView mv) {

		Member loginMember = service.loginMember(Map.of("memberId", memberId));
		mv.addObject("loginMember", loginMember);
		mv.setViewName("resume/insertResume");

		return mv;
	}
	
	//회원 이력서 기본 정보 등록
	@RequestMapping("/insertBasicResume.do")
	@ResponseBody
	public void insertBasicResume(Resume resume, @RequestParam(value="upfile", required = false)MultipartFile upfile,HttpServletRequest request ) {
		log.debug("{}"+resume);
		
		String path = request.getServletContext().getRealPath("/resources/upload/resume/");
		
		File f = new File(path);
		
		if(!f.exists()) {
			f.mkdirs();
		}
		
		if(upfile != null) {
			String originalFileName = upfile.getOriginalFilename();
			String ext = originalFileName.substring(originalFileName.lastIndexOf("."));
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmsssss");
			int rndNum = (int) (Math.random() * 1000);
			String renameFile = sdf.format(System.currentTimeMillis()) + "_" + rndNum + ext;
			
			resume.setProfile(renameFile);
			
			try {
				upfile.transferTo(new File(path+renameFile));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		resumeService.insertBasicResume(resume);
	}
	
	@RequestMapping("/insertCareer.do")
	@ResponseBody
	public void insertCareer(Career career) {
	 int result =resumeService.insertCareer(career);
	}
	

}
