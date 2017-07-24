package com.cas.common.login.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cas.db.dto.MemberVO;
import com.cas.member.service.MemberService;
@Controller
public class LoginController {


	@Autowired
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	/*로그인 양식 페이지로 가는 메서드*/
	@RequestMapping("/loginForm")
	public String loginMemberForm(){
		return "member/login/login";
	}
	
	/*로그인 해주는 메서드*/
	@RequestMapping("/login")
	public String loginMember(MemberVO member ,HttpServletRequest request,HttpSession session){
		String url = "loginFailed";
		if(memberService.checkId(member.getMemId())){
			System.out.println("아이디 체크는 성공하니?");
			if(memberService.checkPwd(member.getMemId(),member.getMemPwd())){
				System.out.println("비번체크성공하니?");
				url="member/goMain";
				session.setAttribute("loginUser", memberService.selectMember(member.getMemId()));
			}
		}
		return url;
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
	public String joinMemberForm(HttpServletRequest request){
		return "/member/signUp/signup";
	}
	
	/*회원 ID와 닉네임의 중복 확인하는 메서드*/
	@RequestMapping ("/checkId")
	public String checkId(HttpServletRequest request,Model model){
		String memId = request.getParameter("id");
		memberService.checkId(memId);
		model.addAttribute("id",request.getParameter("id"));
		return "member/signUp/checkId/idCheck";
	}
	
	/*회원가입을 하는 메서드*/
	@RequestMapping("/joinMember")
	public String joinMember(HttpServletRequest request,MemberVO member,@RequestParam("memProfileimage") MultipartFile multipartFile){
		String upload = request.getSession().getServletContext()
				.getRealPath("upload/member");

		if (!multipartFile.isEmpty()) {
			File file = new File(upload, multipartFile.getOriginalFilename()
					+ "$$" + System.currentTimeMillis());

			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			String proFileimage = request.getContextPath()+ "/upload/member/" + file.getName();
			member.setMemFrofileimage(proFileimage);
		}
		Date today = new Date();
		
		int nowYear = today.getYear()+1900;
		String memAge = (((nowYear-Integer.parseInt(member.getMemBirthdate().substring(0,4)))/10)*10)+"";
		member.setMemAge(memAge);
		
		int result=-1;
		result = memberService.insertMember(member);
		System.out.println(result);
		String url = "";
		if(result<0){
			url="member/signUp/failSignUp";
		}else{
			url="member/signUp/successSignUp";
		}
		
		return url;
	}
}
