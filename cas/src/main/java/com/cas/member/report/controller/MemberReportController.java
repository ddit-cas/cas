package com.cas.member.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberReportController {
	
	/*게시글을 신고하는 양식으로 가는 메서드*/
	@RequestMapping("/member/reportForm")
	public String reportArticleForm(HttpServletRequest request,HttpSession session){
		return null;
	}

	/*게시글을 신고하는 메서드*/
	@RequestMapping("/member/report")
	public String reportArticle(HttpServletRequest request){
		return null;
	}
}
