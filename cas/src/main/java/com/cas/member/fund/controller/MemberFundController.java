package com.cas.member.fund.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.MemberVO;
import com.cas.member.service.MemberService;

@Controller
public class MemberFundController {

	@Autowired
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	/*펀딩을 등록하기 전 Intro 호출하는 메서드*/
	@RequestMapping("/member/insertFundIntro")
	public String insertFundIntro(){
		String url="member/fund/fundEntrollmentIntro";
		return url;
	}

	/*펀딩을 등록하는 양식으로 가는 메서드*/
	@RequestMapping("/member/insertFundForm")
	public String insertFundForm(HttpServletRequest request, Model model){
		String loginUser = (String) request.getSession().getAttribute("loginUser");
		
		MemberVO member = (MemberVO) memberService.selectMember(loginUser);
		model.addAttribute("member", member);
		
		String url = "/member/fund/fundEntrollmentStep1";
		return url;
	}
	
	/*양식에 맞게 입력한 펀딩을 인서트하는 메서드*/
	@RequestMapping("/member/insertFund")
	public String insertFund(HttpServletRequest request){
		return null;
	}
}
