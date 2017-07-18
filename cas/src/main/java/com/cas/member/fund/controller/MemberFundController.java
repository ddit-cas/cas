package com.cas.member.fund.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberFundController {

	/*펀딩을 등록하는 양식으로 가기 전 인트로 메서드*/
	@RequestMapping("/member/insertFundIntro")
	public String insertFundIntro(){
		String url = "member/fund/fundEntrollmentIntro";
		return url;
	}

	/*펀딩을 등록하는 양식으로 가는 메서드*/
	@RequestMapping("/member/insertFundForm")
	public String insertFundForm(){
		
		return null;
	}
	
	/*양식에 맞게 입력한 펀딩을 인서트하는 메서드*/
	@RequestMapping("/member/insertFund")
	public String insertFund(HttpServletRequest request){
		return null;
	}
}
