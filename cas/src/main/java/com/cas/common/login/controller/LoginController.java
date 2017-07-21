package com.cas.common.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.MemberVO;
import com.cas.member.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memService;
	
	public void setMemberService(MemberService memService){
		this.memService = memService;
	}
	
	/*로그인 양식 페이지로 가는 메서드*/
	@RequestMapping("/loginForm")
	public String loginMemberForm(){
		return "member/login/login";
	}
	
	/*로그인 해주는 메서드*/
	@RequestMapping("/login")
	public String loginMember(HttpServletRequest request,HttpSession session){
		session.setAttribute("loginUser", "asd");
		session.setAttribute("point", "10000");
		return "member/goMain";
	}
	
	/*아이디 찾기 화면으로 간다*/
	@RequestMapping("/findIdForm")
	public String findIdForm(){
		return null;
	}
	
	/*아이디를 찾아준다*/
	@RequestMapping("/findId")
	public String findId(HttpServletRequest request){
		String url="member/idSearch";
		return url;
	}
	
	/*비번 찾기 화면으로 간다*/
	@RequestMapping("/findPwdForm")
	public String findPwdForm(){
		return null;
	}
	
	/*비번을 찾아준다*/
	@RequestMapping("/findPwd")
	public String findPwd(HttpServletRequest request){
		return null;
	}
	
	/*로그 아웃 하는 메서드*/
	@RequestMapping("/logout")
	public String logoutMember(HttpSession session){
		session.invalidate();
		return "member/goMain";
	}
	
	/*회원가입 양식으로 가는 메서드*/
	@RequestMapping ("/joinMemberForm")
	public String joinMemberForm(){
		return "/member/signUp/signup";
	}
	
	/*회원가입을 하는 메서드*/
	@RequestMapping("/joinMember")
	public String joinMember(HttpServletRequest request, MemberVO member){
		
		int result = memService.insertMember(member);
		request.setAttribute("result", result);
		
		return "member/signUp/isSignUp";
	}
}
