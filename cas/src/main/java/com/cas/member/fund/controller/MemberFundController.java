package com.cas.member.fund.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.article.service.impl.ArticleServiceImpl;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.MemberVO;
import com.cas.fund.service.FundService;
import com.cas.member.service.MemberService;

@Controller
public class MemberFundController {

	@Autowired
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Autowired
	private FundService fundService;
	
	@Autowired
	private ArticleService articleService;
	
	
	/*펀딩을 등록하기 전 Intro 호출하는 메서드*/
	@RequestMapping("/member/insertFundIntro")
	public String insertFundIntro(){
		String url="member/fund/fundEntrollmentIntro";
		return url;
	}

	/*펀딩을 등록하는 양식으로 가는 메서드*/
	@RequestMapping("/member/insertFundForm")
	public String insertFundForm(HttpSession session , Model model){
		String url = null;
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		model.addAttribute("member", member);
		
		if(member == null){
			url = "member/login/login";
		}else{
			url = "member/fund/fundEntrollmentStep1";
		}
		
		return url;
	}
	
	/*양식에 맞게 입력한 펀딩을 인서트하는 메서드*/
	@RequestMapping("/member/insertFund")
	public String insertFund(HttpServletRequest request, FundVO fund, ArticleVO article){
		fundService.insertFund(fund);
		articleService.insertArticle(article);
		
		return "member/main";
	}
}
